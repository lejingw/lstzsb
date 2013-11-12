/**
 * 选择组织
 * @param okfunc 确定调用的方法 function(idArr, nameArr, objArr){}
 * @param checkFunc 确定前做数据有效性检查
 * @param cancelfunc 取消调用的方法 function(idArr, nameArr, objArr){}
 * @param multiFlag 是否多选true多选false单选
 * @param selectedValues 已经选择的ids，一般取idArr.join(",")
 * @param userAction getOrgTree
 */
function selectOrg(okfunc, cancelfunc, checkFunc, multiFlag, selectedValues, userAction, params) {
	var _iframeId = "selectOrgFrm";
	var options = {
		title : '选择组织',
		contentType : 'iframe',
		iframeId : _iframeId,
		width : 500,
		height : 350,
		//okBtnName : '确定',
		//cancelBtnName : '取消',
		onok : function(box) {
			var results = jQuery("#" + _iframeId)[0].contentWindow.getValues();
			//alert(results);
			if(checkFunc && !checkFunc(results[0], results[1], results[2])){
				return;
			}
			okfunc(results[0], results[1], results[2]);
			box.close();// 增加事件方法后需手动关闭弹窗
		},
		oncancel : function(box) {
			if(cancelfunc){
				cancelfunc();
			}
			box.close();// 增加事件方法后需手动关闭弹窗
		}
	};
	userAction = userAction || "getOrgTree";
	var url = ctxPath + '/common/select/org.do?user_action='+userAction+'&multiFlag=' + (multiFlag?true:false) + '&selectedValues=' + selectedValues;
	if(params){
		for(var p in params){
			url += "&" + p + "=" + params[p];
		}
	}
	jQuery.weeboxs.open(url, options);
}