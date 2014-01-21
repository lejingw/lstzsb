/**
 * 根据id，返回dom对象
 */
function $i(id) {
    return document.getElementById(id);
}
/**
 * 根据name，返回dom对象数组
 */
function $n(name){
	return document.getElementsByName(name);
}
/**
 * 创建元素
 */
function $c(tagName){
	return document.createElement(tagName);
}
/**
 * 应用属性，不存在则添加，存在则覆盖
 */
function apply(obj, obj2){
	if(obj2){
		for(var p in obj2){
			obj[p] = obj2[p];
		}
	}
	return obj;
}
window.info = window.alert;
window.alert=function(msg, callback){
	jAlert(msg, "提示", callback);
};
window.confirm=function(msg, okfunc, cancelfunc){
	jConfirm(msg, "确认", function(flag){
		if(flag && okfunc){
			try{okfunc();}catch(e){}
		}else if(!flag && cancelfunc){
			try{cancelfunc();}catch(e){}
		}
	});
};
window.confirm2=function(msg, okBtnName, okfunc, cancelBtnName, cancelfunc){
	jQuery.weeboxs.open(""+msg, {
			title:'确认',
			boxid:'confirmDiv',
			closeable:true,
			okBtnName:cancelBtnName, 
			onok:function(box){
				if(cancelfunc){cancelfunc();};
				box.close();
			},
			oncancel:function(box){
				box.close();
			}
		}).addButton({
    		title : okBtnName,
    		fn : function(box){
    			if(okfunc){okfunc();};
    			box.close();
    		}
    	});
	return false;
};
/**
 * dwr开始同步
 */
function startSync(){
	dwr.engine.setAsync(false);
}
/**
 * dwr结束同步
 */
function endSync(){
	dwr.engine.setAsync(true);
}
/**
 * 链接转向
 */
function goToURL(url) {
  window.location = url;
}
/**
 * 页面重定向
 */
function forward(url) {
	var frm = $c("form");
	frm.id = "_frm";
	frm.name = "_frm";
	frm.action = url;
	frm.method = 'post';
	document.body.appendChild(frm);
	document.getElementById("_frm").submit();
}
/**
 * 同步执行方法
 * @param func 方法
 * @returns func方法执行后的返回值
function synExe(func, argumentArr){
	var _data = null;
	argumentArr.push(function(){_data = data;});
	startSync();
	func.apply(argumentArr);
	//func(function(data){_data = data;});
	endSync();
	return _data;
}
 */
/**
 * 获取系统参数配置值
 */
function getParameterValue(name){
	var val = null;
	startSync();
	SysCommonDwr.getParameterValue(name, function(data){val = data;});
	endSync();
	return val;
}
/**
 * 添加回车键的响应
 * @param inputId 控件id，如编码或条码输入框
 * @param func 点击回车键，回调的方法
 * 在回调方法前，回将控件失去焦点，防止重复点击回车键
 * 回调方法后，控件将重新获取焦点
 */
function setEnterKey(inputId, fn){
	jQuery("#" + inputId).live("keypress",function(e){
		if(e.keyCode != 13)
			return;
//		jQuery("#" + inputId).blur();
		jQuery("#" + inputId).attr("disabled", true);
		startSync();
		if(fn){try{fn();}catch(e){}}
		endSync();
		jQuery("#" + inputId).attr("disabled", false);
		jQuery("#" + inputId).focus();
	});
}
/**
* tbody获取选中的第一个checkbox的index
* 若无选中的则返回-1
*/
function getSelectIndex(chkName){
	var selectIndex = -1;
	jQuery("input[name='" + chkName + "']").each(function(index){
		if(jQuery(this).attr("checked")){
			selectIndex = index;
			return ;
		}
	});
	return selectIndex;
}
/**
* tbody获取选中的checkbox的index
* 若无选中的则返回-1
* 若是多选，则返回index数组
*/
function getSelectIndexs(chkName){
	var valsArr = [];
	jQuery("input[name='" + chkName + "']").each(function(index){
		if(jQuery(this).attr("checked")){
			valsArr.push(index);
		}
	});
	return valsArr;
}
/**
 * @param tblId 一般取table的id
 * @param tdHtmlArr td单元格的innerHTML字符串数组,数字长度要与tr中td的个数一致
 * @param insertFirstFlag 是否插入第一行，false添加最后一行
 */
function insertRow(tblId, tdHtmlArr, insertFirstFlag){
	if(!tdHtmlArr || tdHtmlArr.length<1)	return;
	var tr = null;
	if(insertFirstFlag){
		tr = $i(tblId).insertRow(1);
	}else{
		tr = $c("TR");
		$i(tblId).appendChild(tr);
	}
	for(var i=0;i<tdHtmlArr.length;i++){
		var td = $c("TD");
		td.innerHTML = tdHtmlArr[i];
		tr.appendChild(td);
	}
//	var className = "evenrow";
//	var index = insertFirstFlag?2:$i(tblId).rows.length-2;
//	if($i(tblId).rows[index].className == "evenrow")
//		className = "oddrow";
//	else
//		className = "evenrow";
//	jQuery(tr).addClass(className);
	resetRowCSS(tblId);
	jQuery(tr).hover(function(){
		jQuery(this).toggleClass("rowover");
	});
}
/**
 * 删除列表行
 * @param tblId tbody的id
 * @param obj 一般只指td中的删除input对象
 */
function deleteRow(obj, tblId){
	var rowIndex = obj.parentNode.parentNode.rowIndex;
	deleteRowByIndex(rowIndex - 1, tblId);
}
/**
 * 删除列表行
 * @param tblId tbody的id
 * @param index
 */
function deleteRowByIndex(index, tblId){
	//$i(tblId).deleteRow(index);
	$("#" + tblId + " tr").filter(":eq(" + index + ")").remove();
}
/**
 * 删除下拉框所有内容
 * sltId select下拉框的id或对象
 * showEmptyOptionFlag true 显示'--请选择--"选项 <可选 默认为false>
 */
function removeAllOptions(sltId,showEmptyOptionFlag){
	var slt = ((typeof sltId == 'string')?$i(sltId):sltId);
	var length = slt.options.length;
	for(var i=length-1;i>=0;i--){
		slt.options.remove(i);
	}
	if(showEmptyOptionFlag){
		var op = new Option("--请选择--","");
	    slt.options.add(op);
	}
}
/**
 * 给下拉框添加一个选项
 * @param sltId select下拉框的id或对象
 * @param key 添加选项的键
 * @param value 添加选项的值
 */
function addOption(sltId, key, value, selectedFlag){
	var slt = ((typeof sltId == 'string')?$i(sltId):sltId);
	var op = new Option(value, key);
	if(selectedFlag)
		op.selected = true;
    slt.options.add(op);
}
/**
 * 添加下拉框内容
 * @param sltId select下拉框的id或对象
 * @param data select下拉框的数据，为数组格式
 * @param keyName 默认取 value
 * @param valueName 默认取 text
 * @param clearAll 是否清除原有数据，true清除
 * @param showEmptyOptionFlag 当clearAll为true时有效，显示提示选项"--请选择--"
 * @param selectedValue 选中的值（单选）
 */
function addOptions(sltId, data, keyName, valueName, clearAll, showEmptyOptionFlag, selectedValue){
	if(clearAll){
		removeAllOptions(sltId,showEmptyOptionFlag);
	}
	if(!data || data.length<1)	return ;
	keyName = keyName || "value";
	valueName = valueName || "text";
	for(var i=0;i<data.length;i++){
		addOption(sltId, data[i][keyName], data[i][valueName]);
	}
	if(selectedValue){
		selectOption(sltId, selectedValue);
	}
}
/**
 * 添加下拉框内容
 * @param sltName select下拉框的name
 * @param index name为sltName对应控件数组的下标
 * @param data select下拉框的数据，为数组格式
 * @param keyName 默认取 value
 * @param valueName 默认取 text
 * @param clearAll 是否清除原有数据，true清除
 * @param showEmptyOptionFlag 当clearAll为true时有效，显示提示选项"--请选择--"
 * @param selectedValue 选中的值（单选）
 */
function addOptions2(sltName, index, data, keyName, valueName, clearAll, showEmptyOptionFlag, selectedValue){
	var slt = $n(sltName)[index];
	if(!slt)
		return ;
	addOptions(slt, data, keyName, valueName, clearAll, showEmptyOptionFlag, selectedValue);
}
/**
 * 选择下拉的值
 * @param sltId select下拉框的id或对象
 * @param val 选中的值（单选）
 */
function selectOption(sltId, val){
	var slt = ((typeof sltId == 'string')?$i(sltId):sltId);
	var length = slt.options.length;
	for(var i=0;i<length;i++){
		if(slt.options[i].value == val){
			slt.options[i].selected = true;
		}
	}
}
/**
 * 选择下拉的值
 * @param sltId select下拉框的id或对象
 * @param val 选中的值（单选）
 */
function selectOptionByText(sltId, txt){
	var slt = ((typeof sltId == 'string')?$i(sltId):sltId);
	var length = slt.options.length;
	for(var i=0;i<length;i++){
		if(slt.options[i].text == txt){
			slt.options[i].selected = true;
		}
	}
}
/**
 * 选中或取消列表全选复选框
 * @param chkallId 列表头全选checkbox的id
 * @param chkName 列表选中checkbox的name
 */
function checkAll(chkallId, chkName, multiSelectFlag) {
	if(multiSelectFlag){
		jQuery("#"+chkallId).change(function(){
			var obj = jQuery(this);
			jQuery("input[name='" + chkName + "']").each(function(){
				jQuery(this).attr("checked", obj.attr("checked"));
			});
		});
		jQuery("input[name='" + chkName + "']").each(function(){
			jQuery(this).bind("click", function(event){
				event.stopPropagation();
			});
		});
	}else{
		jQuery("input[name='" + chkName + "']").each(function(index){
			jQuery(this).bind("click", function(event){
				jQuery("input[name='" + chkName + "']").each(function(index2){
					if(index != index2){
						jQuery(this).attr("checked", false);
					}
				});
				event.stopPropagation();
			});
		});
		jQuery("#"+chkallId).attr("disabled",true);
	}
}
/**
 * 重置列表渐变样式
 * @param tblId
 */
function resetRowCSS(tblId){
	jQuery("#"+tblId+" tr").each(function(){
		jQuery(this).removeClass("oddrow");
		jQuery(this).removeClass("evenrow");
	});
	jQuery("#"+tblId+" tr").filter(":odd").each(function(){
		jQuery(this).addClass("oddrow");
	}).end().filter(":even").each(function(){
		jQuery(this).addClass("evenrow");
	});
}
/**
 * 为列表添加换行样式
 * @param tblId tbody的id
 */
function altRowCSS(tblId){
	jQuery("#"+tblId+" tr").filter(":odd").each(function(){
		jQuery(this).addClass("oddrow");
	}).end().filter(":even").each(function(){
		jQuery(this).addClass("evenrow");
	}).end().hover(function(){
		jQuery(this).toggleClass("rowover");
	});
}
/**
 * 设置table间隔行以及鼠标划过样式
 * 处理checkbox的单选、多选，以及tr点击与checkbox的勾选、取消的关联
 * @param tblId 一般取tbody的id
 * @param chkallId 头部全部选择checkbox的id
 * @param chkName 列表行checkbox的name
 * @param multiSelectFlag 单选还是多选
 * @param rowSelectFun 勾选或者取消勾选时的回调方法
 * 			单选时,function(checked, index)	checked当前行是否选中，index当前行下标
 * 			多选时,function(curChecked, curIndex, checkedIndexArr)	curChecked当前行是否选中，curIndex当前行下标，checkedIndexArr选中行下标数字
 */
function checkTable(tblId, chkallId, chkName, multiSelectFlag, rowSelectFun, dblClickFun){
	//设置样式
	altRowCSS(tblId);
	checkTable2(tblId, chkallId, chkName, multiSelectFlag, rowSelectFun, dblClickFun);
}
function checkTable2(tblId, chkallId, chkName, multiSelectFlag, rowSelectFun, dblClickFun){
	function updateCheckallStatus(){
		if(!multiSelectFlag)	return;
		var flag = true;
		for(var i=0;i<$n(chkName).length;i++){
			if(!$n(chkName)[i].checked){
				flag = false;
				break;
			}
		}
		$("#"+chkallId).attr("checked", flag);
	}
	//多选
	if(multiSelectFlag){
		jQuery("#"+chkallId).change(function(){
			var obj = jQuery(this);
			jQuery("input[name='" + chkName + "']").each(function(){
				jQuery(this).attr("checked", obj.attr("checked"));
			});
			if(rowSelectFun){
				rowSelectFun(jQuery(this).attr("checked"), -1, jQuery(this).attr("checked")?getSelectIndexs(chkName):[]);
			}
		});
		jQuery("input[name='" + chkName + "']").each(function(index){
			jQuery(this).bind("click", function(event){
				event.stopPropagation();
				updateCheckallStatus();
				if(rowSelectFun){
					rowSelectFun(jQuery(this).attr("checked"), index, getSelectIndexs(chkName));
				}
			});
		});
	}else{
		jQuery("input[name='" + chkName + "']").each(function(index){
			jQuery(this).bind("click", function(event){
				if(jQuery(this).attr("checked")){
					jQuery("input[name='" + chkName + "']").each(function(index2){
						if(index != index2){
							jQuery(this).attr("checked", false);
						}
					});
				}
				event.stopPropagation();
				updateCheckallStatus();
				if(rowSelectFun){
					rowSelectFun(jQuery(this).attr("checked"), index);
				}
			});
		});
		jQuery("#"+chkallId).attr("disabled",true);
	}
	
	jQuery("#" + tblId + " tr").each(function(index){
		if(0 == index)	return ;
		jQuery(this).bind("click", function(event){
			var checkIndex = index - 1;
			if(!jQuery("input[name='"+chkName+"']")[checkIndex])	return ;
			var currentChk = jQuery(jQuery("input[name='"+chkName+"']")[checkIndex]);
			if(currentChk.attr("disabled"))	return;
			currentChk.attr("checked", !currentChk.attr("checked"));
			
			if(currentChk.attr("checked") && !multiSelectFlag){
				jQuery("input[name='" + chkName + "']").each(function(index2){
					if(checkIndex != index2){
						jQuery(this).attr("checked", false);
					}
				});
			}
			event.stopPropagation();
			updateCheckallStatus();
			if(rowSelectFun){
				if(multiSelectFlag){
					rowSelectFun(currentChk.attr("checked"), checkIndex, getSelectIndexs(chkName));					
				}else{
					rowSelectFun(currentChk.attr("checked"), checkIndex);
				}
			}
		});
	});
	
	if(dblClickFun){
		jQuery("#"+tblId+" tr").each(function(index){
			if(0 == index)	return ;
			var checkIndex = index - 1;
			jQuery(this).bind("dblclick", function(event){
				var currentChk = jQuery("input[name='"+chkName+"']")[checkIndex];
				if(currentChk){
                    jQuery(currentChk).attr("checked", true);
                }
				dblClickFun(checkIndex);
			});
		});
	}
	updateCheckallStatus();
}
/**
 * 创建列表分页工具条
 * @param formId form表单的id
 * @param start 开始页数通常取$!form.pager.start
 * @param limit 每页显示条数通常取$!form.pager.limit
 * @param totalCount 总条数通常取$!form.pager.totalCount
 */
function createPagingToolbar(formId, start, limit, totalCount){
	if(!totalCount || totalCount<=0){
		document.write("<input type='hidden' name='_query_' value='1'/><font color='red'>未找到记录</font>");
		return ;
	}
	var totalPageCount = Math.floor(totalCount / limit) + (totalCount % limit > 0 ? 1:0);
	var pageIndex = Math.floor((start+1) / limit) + ((start+1) % limit > 0 ? 1:0);
	
	var html = [];
	html.push("<div class='pageNumDiv'><input type='hidden' name='_query_' value='1'/><input type='hidden' id='start' name='start' value='"+start+"'/><input type='hidden' id='limit' name='limit' value='"+limit+"'/>");
	html.push("<div class='f_l mt_10 gray  lineH_40'>总共"+totalCount+"条记录，每页"+limit+"条，第"+pageIndex+"/"+totalPageCount+"页 </div>");
	html.push("<div class='manu f_r' id='_pagingToolbar'>");
	html.push("</div></div>");
	document.write(html.join(""));
	
	function forw(start){
		$("#start").val(start);
		var param = parseURLParam();
		var href = window.location.href;
		var mark = href.indexOf('#');
		if(mark > -1){
			href = href.substr(0, mark);
		}
		mark = href.indexOf('?');
		if(mark > 0){
			href = href.substr(0, mark);
		}
		param['start'] = start;
		var firstFlag = true;
		for(var p in param){
			if(!firstFlag){
				href += "&";
			}else{
				href += "?";
				firstFlag = false;
			}
			href += p + "=" + param[p];
		}
		window.location = decodeURI(href);
	}
	var prePageLink = null;
	if(1>=pageIndex){
		prePageLink = $("<span class='disabled'>&lt; 上一页</span>");
	}else{
		prePageLink = $("<a href='javascript:void(0);'>&lt; 上一页</a>");
	}
	prePageLink.appendTo($("#_pagingToolbar")).click(function(){
		if(1>=pageIndex)	return ;
		forw((pageIndex-2)*limit);
	});

	function createPageNode(page){
		if(pageIndex == page){
			$("<span class='current'>"+page+"</span>").appendTo($("#_pagingToolbar"));
		}else{
			$("<a href='javascript:void(0);'>"+page+"</a>").appendTo($("#_pagingToolbar")).click(function(){
				forw((page-1)*limit);
			});
		}
	}
	var pageNodeCount = 5;
	var startSpan = (Math.floor(pageIndex / pageNodeCount) + (pageIndex % pageNodeCount > 0 ? 1:0)-1)*pageNodeCount+1;
	var i=0;
	for(;i < pageNodeCount && (i+startSpan) <= totalPageCount ; i++){
		createPageNode(startSpan+i);
	}
	if(totalPageCount - (startSpan+i) + 1 > 2){
		$(document.createTextNode(" ... ")).appendTo($("#_pagingToolbar"));
	}
	if(totalPageCount - (startSpan+i) + 1 == 1){
		createPageNode(totalPageCount);
	}
	if(totalPageCount - (startSpan+i) + 1 > 1){
		createPageNode(totalPageCount-1);
		createPageNode(totalPageCount);
	}
	

	var nextPageLink = null;
	if(pageIndex>=totalPageCount){
		nextPageLink = $("<span class='disabled'>下一页 &gt;</span>");
	}else{
		nextPageLink = $("<a href='javascript:void(0);'>下一页 &gt;</a>");
	}
	nextPageLink.appendTo($("#_pagingToolbar")).click(function(){
		if(pageIndex>=totalPageCount)	return ;
		forw(pageIndex*limit);
	});
	function goToPage(){
		if(!isNumber($("#_pageIndex").val()) || $("#_pageIndex").val()<=0 || $("#_pageIndex").val()>totalPageCount){
			info("页数必须为1~"+totalPageCount+"之间的正整数");
			return false;
		}
		forw(($("#_pageIndex").val()-1)*limit);
	}
	$("<span class='ml_10'>转到第</span>").appendTo($("#_pagingToolbar"));
	$("<input name='' type='text' id='_pageIndex'/>").appendTo($("#_pagingToolbar")).keypress(function(e){if(e.keyCode != 13)return ;return goToPage();});
	$("<span class='mr_10'>页</span>").appendTo($("#_pagingToolbar"));
	$("<a href='javascript:void(0);'>跳转</a>").appendTo($("#_pagingToolbar")).click(goToPage);
	
}
/**
 * 浮点数加法运算
 */
function floatAdd(arg1, arg2) {
	arg1 = "" + arg1;
	arg2 = "" + arg2;
	var r1 = 0, r2 = 0;
	if( arg1.split(".").length>1){
		r1 = arg1.split(".")[1].length;
	}
	if(arg2.split(".").length>1){
		r2 = arg2.split(".")[1].length;
	}
	var m = Math.pow(10, Math.max(r1, r2));
	//return Number(((arg1 * m + arg2 * m) / m).toFixed(Math.max(r1, r2)));
	return (floatMul(arg1,m) + floatMul(arg2,m)) / m;
}
/**
 * 浮点数减法运算
 */
function floatSub(arg1, arg2) {
	arg1 = "" + arg1;
	arg2 = "" + arg2;
	var r1 = 0, r2 = 0;
	if(arg1.split(".").length>1){
		r1 = arg1.split(".")[1].length;
	}
	if(arg2.split(".").length>1){
		r2 = arg2.split(".")[1].length;
	}
	var m = Math.pow(10, Math.max(r1, r2));
	//return Number(((arg1 * m - arg2 * m) / m).toFixed(Math.max(r1, r2)));
	return (floatMul(arg1,m) - floatMul(arg2,m)) / m;
}
/**
 * 浮点数乘法运算
 */
function floatMul(arg1, arg2) {
	arg1 = "" + arg1;
	arg2 = "" + arg2;
	var m = 0;
	if(arg1.split(".").length>1){
		m = arg1.split(".")[1].length;
	}
	if(arg2.split(".").length>1){
		m += arg2.split(".")[1].length;
	}
	return Number(arg1.replace(".", "")) * Number(arg2.replace(".", "")) / Math.pow(10, m);
}
/**
 * 浮点数除法运算
 */
function floatDiv(arg1, arg2) {
	arg1 = "" + arg1;
	arg2 = "" + arg2;
	var r1 = 0, r2 = 0;
	if(arg1.split(".").length>1){
		r1 = arg1.split(".")[1].length;
	}
	if(arg2.split(".").length>1){
		r2 = arg2.split(".")[1].length;
	}
	return floatMul(Number(arg1.replace(".", "")) / Number(arg2.replace(".", "")), Math.pow(10, r2 - r1));
}
/**
 * 根据页面连接获取参数信息对象
 */
function parseURLParam() {
	var href = decodeURI(window.location.href);
	var ret = {};
	var mark = href.indexOf('?');
	if(mark > -1){
		var subUrl = href.substring(mark + 1);
		var urlArray = subUrl.split('&');
		for (var i = 0; i < urlArray.length; i++) {
			if (urlArray[i]) {
				var param = urlArray[i].split('=');
				ret[param[0]] = param[1];
			}
		}
	}
	return ret;
}
/**
 * 判断是否为空
 * null，undefined，空字符串""，空格字符串" "，都返回false
 */
function isNull(str){
	if(!str){
		return true;
	}
	if(!str.trim()){
		return true;
	}
	return false;
}
function nullToEmpty(str){
	if(isNull(str))	return "";
	return str;
}
/**
 * 执行正则表达式
 */
function executeExp(re, s){
	return re.test(s);
}
/**
 * 判断是否是字母、数字或者为空
 */
function isAlphaNumeric(strValue){
    // 只能是 A-Z a-z 0-9 之间的字母数字 或者为空
    return executeExp(/^\w*$/gi, strValue);
}
/**
 * 判断是否是正确的日期，格式为2003-12-12
 */
function isDate(strValue){
    if (isEmpty(strValue)) return true;
    if (!executeExp(/^\d{4}-[01]?\d-[0-3]?\d$/g, strValue)) return false;
    var arr = strValue.split("-");
    var year = arr[0];
    var month = arr[1];
    var day = arr[2];
    // 1 <= 月份 <= 12，1 <= 日期 <= 31
    if (!( ( 1 <= month ) && ( 12 >= month ) && ( 31 >= day ) && ( 1 <= day ) ))
        return false;
    // 润年检查
    if (!( ( year % 4 ) == 0 ) && ( month == 2) && ( day == 29 ))
        return false;
    // 7月以前的双月每月不超过30天
    if (( month <= 7 ) && ( ( month % 2 ) == 0 ) && ( day >= 31 ))
        return false;
    // 8月以后的单月每月不超过30天
    if (( month >= 8) && ( ( month % 2 ) == 1) && ( day >= 31 ))
        return false;
    // 2月最多29天
    if (( month == 2) && ( day >= 30 ))
        return false;
    return true;
}
/**
 * 判断是否是正确的Email
 */
function isEmail(strValue){
    if (isEmpty(strValue)) return true;
    var pattern = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
    return executeExp(pattern, strValue);
}
/**
 * 判断字符串是否为空
 */
function isEmpty(strValue){
    if (strValue == null || strValue == "")
        return true;
    else
        return false;
}
/**
 * 检查输入对象的值是否符合整数格式
 */
function isInteger(str) {
	var regu = /^[-]{0,1}[0-9]{1,}$/;
	return regu.test(str);
}
/**
 * 检查输入字符串是否是带小数的数字格式,可以是负数
 */
function isDecimal(str) {
	if (isInteger(str))
		return true;
//	var re = /^[-]{0,1}(\d+)[\.]{0,1}(\d+)$/;
	var reg = /^((-?((0\.[0-9]+)|([1-9][0-9]*\.[0-9]+)|([1-9]+[0-9]*)))|0)$/;
	if (reg.test(str)) {
	//	if (RegExp.$1 == 0 && RegExp.$2 == 0)
	//		return false;
		return true;
	} else {
		return false;
	}
}
/**
 * 判断是否为数字
 */
function isNumber(strValue){
    if (isEmpty(strValue)) return false;
    return executeExp(/^\d+$/g, strValue);
}
/**
 * 判断是否为浮点数（不带正负号）
 */
function isNumberFloat(strValue){
    if (isEmpty(strValue)) return false;
    return executeExp(/^\d+(\.\d+)?$/, strValue);
}
/**
 * 判断是否是货币
 */
function isMoney(strValue){
    if (isEmpty(strValue)) return false;
    return executeExp(/^[+-]?\d+(,\d{3})*(\.\d+)?$/g, strValue);
}
/**
 * 判断是否为邮政编码
 */
function isPostalCode(strValue){
	if (isEmpty(strValue)) return false;
    return executeExp(/^\d{6}$/gi, strValue);
}
/**
 * 判断是否为合法的URL
 */
function isURL(strValue){
    if (isEmpty(strValue)) return false;
    var pattern = /^(http|https|ftp):\/\/(\w+\.)+[a-z]{2,3}(\/\w+)*(\/\w+\.\w+)*(\?\w+=\w*(&\w+=\w*)*)*/gi;
    return executeExp(pattern, strValue);
}
/**
 * 四舍五入 默认2位小数
 * @param {} decimal
 * @param {} num 默认2
 */
function roundDecimal(decimal, num) {
    num = num||2;
    decimal = decimal||0;
    return floatDiv(Math.round(decimal*Math.pow(10, num)), Math.pow(10, num));
}
/**
 * 为字符串增加trim方法
 */
String.prototype.trim=function(){
    // 用正则表达式将前后空格用空字符串替代。
    return this.replace(/(^\s*)|(\s*$)/g, "");
};
/**
 * 为 Array 类增加一个 max 方法
 */
Array.prototype.max=function(){
    var i, max = this[0];
    for (i = 1; i < this.length; i++){
        if (max < this[i])
            max = this[i];
    }
    return max;
};
/**
 * 为 Array 类增加一个 contains方法
 */
Array.prototype.contains=function(str) {
    for (var i = 0; i < this.length; i++) {
        if (this[i] === str)
            return true;
    }
    return false;
};
/**
 * 计算2个时间相差天数
 * @param date1 时间字符串 “2012-10-10”
 * @param date2 时间字符串 “2012-10-10”
 */
function diffDate(date1, date2) {
    var dateObj1 = new Date().convertDate(date1);
    var dateObj2 = new Date().convertDate(date2);
    return dateObj1.dateDiff(dateObj2, 'd');
}
/**
 函数：把字符串转换为日期对象
 参数：yyyy-mm-dd
 返回：Date对象
 */
Date.prototype.convertDate=function(date){
	var dateArray = date.split("-");
	if (dateArray.length != 3) {
		return null;
	}
	var newDate = new Date();
	// month从0开始
	newDate.setFullYear(dateArray[0], dateArray[1]*1 - 1, dateArray[2]*1);
	newDate.setHours(0, 0, 0);
	return newDate;
};
/**
 函数：计算两个日期之间的差值
 参数：date是日期对象
 flag：ms-毫秒，s-秒，m-分，h-小时，d-天，M-月，y-年
 返回：当前日期和date两个日期相差的毫秒/秒/分/小时/天
 */
Date.prototype.dateDiff=function(date, flag) {
    var msCount = null;
    if(!flag)	flag = "d";
    var diff = this.getTime() - date.getTime();
    switch (flag) {
        case "ms":
            msCount=1;
            break;
        case "s":
            msCount=1000;
            break;
        case "m":
            msCount=60 * 1000;
            break;
        case "h":
            msCount=60 * 60 * 1000;
            break;
        case "d":
            msCount=24 * 60 * 60 * 1000;
            break;
    }
    return Math.floor(diff / msCount);
};
/**
 * 创建回调方法
 */
Function.prototype.createCallback=function(){
	var args = arguments;
	var method = this;
	return function() {
		return method.apply(window, args);
	};
};
/**
 * 创建代理方法
 */
Function.prototype.createDelegate=function(obj, args, appendArgs){
	var method = this;
	return function() {
		var callArgs = args || arguments;
		if (appendArgs === true){
			callArgs = Array.prototype.slice.call(arguments, 0);
			callArgs = callArgs.concat(args);
		}else if (typeof appendArgs === 'number'){
			callArgs = Array.prototype.slice.call(arguments, 0); // copy arguments first
			var applyArgs = [appendArgs, 0].concat(args); // create method call params
			Array.prototype.splice.apply(callArgs, applyArgs); // splice them in
		}
		return method.apply(obj || window, callArgs);
    };
};
/**
 * 创建过滤方法
 */
Function.prototype.createInterceptor=function(fcn, scope){
	var method = this;
	return (typeof fcn != 'function') ?
            this :
            function() {
				var me = this, args = arguments;
				fcn.target = me;
				fcn.method = method;
				return (fcn.apply(scope || me || window, args) !== false) ? method.apply(me || window, args) : null;
            };
};
/**
 * 创建序列方法
 */
Function.prototype.createSequence=function(fcn, scope){
	var method = this;
	return (typeof fcn != 'function') ?
			this :
			function(){
				var retval = method.apply(this || window, arguments);
				fcn.apply(scope || this || window, arguments);
				return retval;
			};
};
jQuery.fn.clearForm=function(){
	return this.each(function() {
			var type = this.type, tag = this.tagName.toLowerCase();
			if (tag == 'form')
				return jQuery(':input',this).clearForm();
			if(true == $(this).attr("disabled")||"disabled" == $(this).attr("disabled"))
				return ;
			if(true == $(this).attr("readOnly"))
				return ;
			if (type == 'text' || type == 'password' || tag == 'textarea')
				this.value = '';
			else if (type == 'checkbox' || type == 'radio')
				this.checked = false;
			else if (tag == 'select')
				this.selectedIndex = 0;
		});
};

function initRight(modelCode, btnCfgArr){
	for(var i=0;i<btnCfgArr.length;i++){
		var btnCfg = btnCfgArr[i];
		var method = btnCfg.fn.createCallback();
		if(!btnCfg.code){
			$("#" + btnCfg.id).click(method);
		}else{
			$("#"+btnCfg.id).click(method.createInterceptor(function(){
				var dis = $(this).attr("disabled");
				if(true === dis || "true" === dis || "disabled" === dis){
					return false;
				}
				return true;
			}));
		}
	}
}

function msg(key){
	if(!key)	return "";
	var locationStr = window.location.href;
	//var reg = eval("/^http(s)?\\:\\/\\/(\\w+\\:\\d+)?\\" + ctxPath + "\\/(menhu|qiye|jiancha|xiangzhen|hangye)\\//gi");
	var reg = eval("/^http(s)?\\:\\/\\/[A-Za-z0-9-_%&\?\/.=]+(\\:\\d+)?\\" + ctxPath + "\\/(menhu|qiye|jiancha|xiangzhen|hangye)\\//gi");
	locationStr = locationStr.replace(reg, "");
	var pathArr = locationStr.split("/");
//	if(typeof JSLocale == 'undefined' || typeof JSLocale[pathArr[0]] == 'undefined' || typeof JSLocale[pathArr[0]][pathArr[1]] == 'undefined')
//		return "未找到提示信息资源";
	var result = "", useGlobalFlag=false;
	try{
		result = eval("JSLocale."+pathArr[0]+"."+pathArr[1]+"."+key);
		if(null == result){
			useGlobalFlag = true;
		}
	}catch(e){
		useGlobalFlag = true;
	}
	if(useGlobalFlag){
		try{
			result = eval("JSLocale.global."+key);
			if(null == result){
				return key;
			}
		}catch(e){
			return key;
		}
	}
	if(arguments.length>1){
		var callArgs = Array.prototype.slice.call(arguments, 1);
		if(callArgs.length === 1 && Object.prototype.toString.call(callArgs[0]) === '[object Array]') {
			callArgs = callArgs[0];
		}
		for(var i=0;i<callArgs.length;i++){
			if(callArgs[i]){
				result = result.replace(eval("/{[" + i + "]}/g"), callArgs[i]);
			}
		}
	}
	return result;
}
/**
 * 加载图片显示框架
 */
function loadPictureFrame(tblId){
	$("<link>").attr({rel:"stylesheet", type:"text/css", href:ctxPath + "/style/foxibox/jquery-foxibox-0.2.css"}).appendTo("head");
	$.getScript(ctxPath + "/script/foxibox/jquery-foxibox-0.2.js", function(data, status){
			$('#'+tblId+' tr td a').foxibox();
		});
}
/**
 * 为控件添加提示信息
 * @param iptId
 * @param msg
 */
function addAlert(iptId, msg){
	removeAlert(iptId);
	//addAlert2(true, $("#" + iptId).parent(), msg);
	addAlert2(false, $("#" + iptId), msg);
}
/**
 * 删除控件提示信息
 * @param iptId
 */
function removeAlert(iptId){
	removeAlert2(false, $("#" + iptId));
}
/**
 * 为table单元格添加提示信息
 * @param tblId
 * @param rowIndex
 * @param colIndex
 * @param msg
 */
function addTableAlert(tblId, rowIndex, colIndex, msg){
	removeAlert2(true, $("#" + tblId + " tr:eq(" + rowIndex + ") td:eq(" + colIndex + ")"));
	addAlert2(true, $("#" + tblId + " tr:eq(" + rowIndex + ") td:eq(" + colIndex + ")"), msg);
}
/**
 * 删除table单元格提示信息
 * @param tblId
 * @param rowIndex
 * @param colIndex
 */
function removeTableAlert(tblId, rowIndex, colIndex){
	removeAlert2(true, $("#" + tblId + " tr:eq(" + rowIndex + ") td:eq(" + colIndex + ")"));
}
function addAlert2(parentFlag, obj, msg){
	var span = $("<span name='__ErrorMessagePanel' style='white-space:normal;position:relative;line-height:22px;height:auto; '>&nbsp;&nbsp;</span>");
	if(parentFlag){
		$(obj).append(span);
		//span.appentTo(obj);
	}else{
		$(obj).after(span);
	}
	var img = $("<img src='"+ctxPath+"/style/img/icon_error_2.png'/>").hover(function(){
		$(this).next().css("display", "block");
	}, function(){
		$(this).next().css("display", "none");
	});
	img.appendTo(span);
	$("<div style='z-Index:1;word-wrap: break-word; word-break: normal;display:none;position:absolute;top:5px;left:15px;font-size:12px;color:#682200; border:1px solid #f2b100; background:#fff6de; line-height:22px; min-height:22px;height: auto; width:150px; padding:0 0.5em;'>" + msg + "</div>").appendTo(span);
}
function removeAlert2(parentFlag, obj){
	if(parentFlag){
		$(obj).find("span[name='__ErrorMessagePanel']").remove();
	}else{
		$(obj).nextAll("span[name='__ErrorMessagePanel']").remove();
	}
}
var browser = function(){
    var agent = navigator.userAgent.toLowerCase(),
        opera = window.opera,
        browser = {
        ie		:  /(msie\s|trident.*rv:)([\w.]+)/.test(agent),
        opera	: ( !!opera && opera.version ),
        webkit	: ( agent.indexOf( ' applewebkit/' ) > -1 ),
        mac	: ( agent.indexOf( 'macintosh' ) > -1 ),
        quirks : ( document.compatMode == 'BackCompat' )
    };
    browser.gecko =( navigator.product == 'Gecko' && !browser.webkit && !browser.opera && !browser.ie);
    var version = 0;
    if ( browser.ie ){
        version =  (agent.match(/(msie\s|trident.*rv:)([\w.]+)/)[2] || 0) * 1;

        browser.ie11Compat = document.documentMode == 11;
        browser.ie9Compat = document.documentMode == 9;
        browser.ie8 = !!document.documentMode;
        browser.ie8Compat = document.documentMode == 8;
        browser.ie7Compat = ( ( version == 7 && !document.documentMode ) || document.documentMode == 7 );
        browser.ie6Compat = ( version < 7 || browser.quirks );
        browser.ie9above = version > 8;
        browser.ie9below = version < 9;
    }
    if ( browser.gecko ){
        var geckoRelease = agent.match( /rv:([\d\.]+)/ );
        if ( geckoRelease )
        {
            geckoRelease = geckoRelease[1].split( '.' );
            version = geckoRelease[0] * 10000 + ( geckoRelease[1] || 0 ) * 100 + ( geckoRelease[2] || 0 ) * 1;
        }
    }
    if (/chrome\/(\d+\.\d)/i.test(agent)) {
        browser.chrome = + RegExp['\x241'];
    }
    if (/(\d+\.\d)?(?:\.\d)?\s+safari\/?(\d+\.\d+)?/i.test(agent) && !/chrome/i.test(agent)){
    	browser.safari = + (RegExp['\x241'] || RegExp['\x242']);
    }
    if ( browser.opera )
        version = parseFloat( opera.version() );
    if ( browser.webkit )
        version = parseFloat( agent.match( / applewebkit\/(\d+)/ )[1] );
    browser.version = version;
    browser.isCompatible =
        !browser.mobile && (
        ( browser.ie && version >= 6 ) ||
        ( browser.gecko && version >= 10801 ) ||
        ( browser.opera && version >= 9.5 ) ||
        ( browser.air && version >= 1 ) ||
        ( browser.webkit && version >= 522 ) ||
        false );
    return browser;
}();