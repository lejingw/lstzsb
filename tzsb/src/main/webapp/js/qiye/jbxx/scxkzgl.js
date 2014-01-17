/*********************************************列表JS*************************************************/
function showInOrgWin(){
	showSelectWin({
		title:'选择单位名称',
		okFn:function(idArr, nameArr, objArr){
				$("#dwmc").val(nameArr);
			},
		url: ctxPath+"/common/select/org.do?orgType=0",
		params:{
				multiFlag:false,
				selectedValues:null
			}
	});
}
/**
 * 选择行
 * @param checked
 * @param curId
 * @param idxArr
 */
function selectRow(checked, curId, idxArr){
	$("#btnDelete").attr("disabled", false);
	if(idxArr.length<1)	return ;
	var flag = false;
	for(var i=0;i<idxArr.length;i++){
		if($n("status")[idxArr[i]].value != "1"){
			flag = true;
			break ;
		}
	}
	if(flag){
		$("#btnDelete").attr("disabled", true);
	}
}
function toEditPage(index){
//	if("9" == $n("status")[index].value)
//		window.location = ctxPath + "/qiye/jbxx/scxkzgl/toView.do?billid=" + $n("billid")[index].value;
//	else
		window.location = ctxPath + "/qiye/jbxx/scxkzgl/toEdit.do?billid=" + $n("billid")[index].value;
}
function deleteBills(){
	var idxArr = getSelectIndexs("chk");
	if(idxArr.length<1){
		alert(msg("norowselected"));
		return ;
	}
	var deleteIds = [];
	for(var i=0;i<idxArr.length;i++){
		if($n("status")[idxArr[i]].value != "1"){
			alert(msg("rowundelete",(idxArr[i]+1)));
			return ;
		}
		deleteIds.push($n("billid")[idxArr[i]].value);
	}
	confirm(msg("confirm", "删除"), function(){			
		ScxkzglDwr.deleteBill(deleteIds, function(data){
			if(data){
				alert(data);
			}else{
				alert(msg("success", "删除"), function(){
					window.location = ctxPath + "/qiye/jbxx/scxkzgl/list.do";
				});
			}
		});
	});
}
/**
 * 初始化列表页面
 */
function initListView(){
	checkTable('table_tab', 'chkall', 'chk', true, selectRow, toEditPage);
	//1给button设置响应事件
	initRight('010101', [
	       {id:'btnQuery', code:'query', fn:function(){$("#frm").submit();}},
	       {id:'btnReset', fn:function(){$("#frm").clearForm();}},
	       {id:'btnAdd', code:'add', fn:function(){window.location = ctxPath + "/qiye/jbxx/scxkzgl/toAdd.do";}},
	       {id:'btnDelete',	code:'delete', fn:deleteBills},
	       {id:'btnExport',	code:'export', fn:function(){window.location = ctxPath + "/qiye/jbxx/scxkzgl/export.do";}}
	  ]);
}
/*********************************************编辑页面JS*************************************************/
/**
 * 初始化编辑页面
 */
function initView(){
	//1给button设置响应事件
	initRight('010102', [
			{id:'btnBack', fn:function(){window.location = ctxPath + "/qiye/jbxx/scxkzgl/list.do";}},
			{id:'btnSave',	code:'save', fn:function(){saveScxkzgl("1");}},
			{id:'btnDistroy',	code:'distroy', fn:function(){saveScxkzgl("9");}},
			{id:'btnTest1', fn:function(){
						Validator.add({id:'sblb', dataType:'Required', msgkey:'require'});
					}
				},
			{id:'btnTest2', fn:function(){
						Validator.remove("sblb");
					}
				},
			{id:'btnTest3', fn:function(){
						Validator.removeAll();
					}
				},
			{id:'btnTest4', fn:function(){
						Validator.validate("frm");
					}
				},
			{id:'btnTest5', fn:function(){
						addAlert("beizhu", "这是测试提示信息，样式与Validator一致");
					}
				},
			{id:'btnTest6', fn:function(){
						removeAlert("beizhu");
					}
				}
		]);
	//2初始化验证信息
	Validator.init([
		   {id:'zsbh', dataType:'Required', msgkey:'require'},
		   {id:'pzrq', dataType:'Date', msgkey:'require'},
		   {id:'yxrq', dataType:'Date', msgkey:'require'},
		   {id:'zzdz', dataType:'Required', msgkey:'require'},
		   {id:'pzjg', dataType:'Required', msgkey:'require'}
		]);
	
	//3如果为新增页面，则给新增页面设置初始默认值
	if(isNull($("#billid").val())){
		setAddInitValues();
	}
	
	//4根据单据状态，调整按钮可见性
	changeButtons();
}
/**
 * 单据验证方法
 * @returns
 */
function checkForm(){
	//1使用验证框架验证
	if(!Validator.validate("frm"))
		return false;
	
	//2其他自定义的前端逻辑验证
	
	return true;
}
/**
 * 获取单据数据
 */
function getBillData(status){
	return {
		billid:$("#billid").val(),
		zsbh:$("#zsbh").val(),
		pzrq:$("#pzrq").val(),
		dwId:$("#dwId").val(),
		dwmc:$("#dwmc").val(),
		yxrq:$("#yxrq").val(),
		dwdz:$("#dwdz").val(),
		zzdz:$("#zzdz").val(),
		pzjg:$("#pzjg").val(),
		sblb:$("#sblb").val(),
		
		sfsj:$("#sfsj").attr("checked")?"1":"0",
		sfzz:$("#sfzz").attr("checked")?"1":"0",
		sfaz:$("#sfaz").attr("checked")?"1":"0",
		sfgz:$("#sfgz").attr("checked")?"1":"0",
		sfwx:$("#sfwx").attr("checked")?"1":"0",

		beizhu:$("#beizhu").val(),
		status:status
	};
}
/**
 * 保存单据
 */
function saveScxkzgl(status){
	if(!checkForm())	return;
	//1、创建单据对象
	var bill = getBillData(status);
	
	//2、验证是否存在
	ScxkzglDwr.checkBill(bill, function(data){
		if(data){
			alert(msg("exists", data));
			return ;
		}
		var action = ("1"==status?"保存":("9"==status?"注销":""));
		//后台单据验证通过，进行保存确认
		confirm(msg("confirm", action), function(){
			showLayer(true);//显示遮罩层，防止重复提交
			ScxkzglDwr.saveBill(bill, uploadFiles.getSaveFileIds(), uploadFiles.getDeleteFileIds(), function(data){
				showLayer(false);//取消遮罩层
				if(data){
					alert(msg("fail", "保存单据"));
				}else{
					alert(msg("success", action), function(){
						window.location = ctxPath + "/qiye/jbxx/scxkzgl/list.do";
					});
				}
			});
		});
	});
	
}
function changeButtons(){
	if(isNull($("#status").val())){
		$("#btnDistroy").hide();
	}
	if("9"==$("#status").val()){//已注销
		$("#btnSave").attr("disabled", true);
		$("#btnDistroy").attr("disabled", true);
	}
}