/**
 * 显示选择框
 * 	参数 config{
 *		title:'选择单位名称',//弹出框标题
 *		checkFn:function(idArr, nameArr, objArr){},//确定前做数据有效性检查
 *		okFn:function(idArr, nameArr, objArr){},//确定调用的方法
 *		cancelFn:function(){},//取消调用的方法
 *		url:ctxPath+"/qiye/common/select/xxxxx.do",
 *		params:{
 *				multiFlag:true,//是否多选true多选false单选
 *				selectedValues:"1,2,3"//已经选择的ids，一般取idArr.join(",")
 *				selectedNames:'a,b,c'//分页多选使用，一般取idName.join(",")
 *			}
 * 	}
 */
function showSelectWin(config){
	var options = {
		title : config.title||'选择',
		contentType : 'iframe',
		iframeId : "selectFrm",
		width : config.width||520,
		height : config.height||370,
		okBtnName : config.okBtnName||'确定',
		cancelBtnName : config.cancelBtnName||'取消',
		onok : function(box) {
			var results = $("#selectFrm")[0].contentWindow.getValues();
			if(config.checkFn && !config.checkFn(results[0], results[1], results[2])){
				return;
			}
			config.okFn(results[0], results[1], results[2]);
			box.close();// 增加事件方法后需手动关闭弹窗
		},
		oncancel : function(box) {
			if(config.cancelFn){
				config.cancelFn();
			}
			box.close();// 增加事件方法后需手动关闭弹窗
		}
	};
	var reqUrl = config.url;
	if(config.params){
		if(-1 == reqUrl.indexOf("?")){
			reqUrl += "?";
		}
		for(var p in config.params){
			if(config.params[p]){				
				reqUrl += "&" + p + "=" + config.params[p];
			}
		}
	}
	$.weeboxs.open(encodeURI(reqUrl), options);
}