function showListSelectWin(){
	showSelectWin({
		title:'选择单位名称[单选]',
		okFn:function(idArr, nameArr, objArr){
			$("#dxid").val(idArr);
			$("#dxmc").val(nameArr);
		},
		url: ctxPath+"/common/select/orgList.do?orgType=0",
		params:{
			multiFlag:false,
			selectedValues:$("#dxid").val()
		}
	});
}
function showListSelectWin2(){
	showSelectWin({
		readOnly:true,
		title:'选择单位名称[多选]',
		okFn:function(idArr, nameArr, objArr){
			$("#dxid2").val(idArr);
			$("#dxmc2").val(nameArr);
		},
		url: ctxPath+"/common/select/orgList.do?orgType=0",
		params:{
			multiFlag:true,
			selectedValues:$("#dxid2").val()
		}
	});
}
function showSelectTreeWin(){
	showSelectWin({
		title:'选择单位名称[单选]',
		okFn:function(idArr, nameArr, objArr){
			$("#trid").val(idArr);
			$("#trmc").val(nameArr);
		},
		url: ctxPath+"/common/select/orgTree.do?orgType=0",
		params:{
			multiFlag:false,
			selectedValues:$("#trid").val()
		}
	});
}
function showSelectTreeWin2(){
	showSelectWin({
		title:'选择单位名称[单选]',
		okFn:function(idArr, nameArr, objArr){
			$("#trid2").val(idArr);
			$("#trmc2").val(nameArr);
		},
		url: ctxPath+"/common/select/orgTree.do?orgType=0",
		params:{
			multiFlag:true,
			selectedValues:$("#trid2").val()
		}
	});
}
function showPagingSelectWin(){
	showSelectWin({
		title:'选择单位名称[单选]',
		okFn:function(idArr, nameArr, objArr){
				$("#dwid").val(idArr);
				$("#dwmc").val(nameArr);
			},
		url: ctxPath+"/common/select/org.do?orgType=0",
		params:{
				multiFlag:false,
				selectedValues:$("#dwid").val()
			}
	});
}
function showPagingSelectWin2(){
	showSelectWin({
		title:'选择单位名称[多选]',
		okFn:function(idArr, nameArr){
				$("#dwid2").val(idArr);
				$("#dwmc2").val(nameArr);
			},
		url: ctxPath+"/common/select/org.do?orgType=0",
		params:{
				multiFlag:true,
				selectedValues:$("#dwid2").val(),
				selectedNames:$("#dwmc2").val()
			}
	});
}