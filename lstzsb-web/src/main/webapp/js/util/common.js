/**
 * 创建列表分页工具条
 * @param formId form表单的id
 * @param start 开始页数通常取${pager.start}
 * @param limit 每页显示条数通常取${pager.limit}
 * @param totalRecord 总条数通常取${pager.totalRecord}
 */
function createPagingToolbar(formId, start, limit, totalRecord){
	//document.write("<table style='width:100%;'><tr><td style='BACKGROUND-COLOR: #D2E0F1;height:20px;' valign='center'>");
	document.write("<table border='0' width='100%' height='100%'><tr><td>");
	document.write("<input type='hidden' id='start' name='start' value=''/>");
	document.write("<input type='hidden' id='limit' name='limit' value=''/>");
	document.write("<input type='hidden' id='_totalRecord' value=''/>");
	document.write("<input type='image' id='_btnFirst'   src='" + ctxPath + "/css/util/common/image/page-first.gif' style='vertical-align:text-bottom;' title='第一页'>&nbsp;");
	document.write("<input type='image' id='_btnPre'     src='" + ctxPath + "/css/util/common/image/page-prev.gif'  style='vertical-align:text-bottom;' title='上一页'>&nbsp;");
	document.write("当前第<input type='text' id='_pageindex' style='width:25px;height:16px;text-align:center;' value=''>页&nbsp;");
	document.write("共<input type='text' id='_totalPageCount' style='width:40px;height:16px;text-align:center;background-color:#EBEBEB;' value='' readonly>页&nbsp;");
	document.write("<input type='image' id='_btnNext'    src='" + ctxPath + "/css/util/common/image/page-next.gif'  style='vertical-align:text-bottom;' title='下一页'>&nbsp;");
	document.write("<input type='image' id='_btnLast'    src='" + ctxPath + "/css/util/common/image/page-last.gif'  style='vertical-align:text-bottom;' title='最后页'>&nbsp;");
	document.write("<input type='image' id='_btnRefresh' src='" + ctxPath + "/css/util/common/image/refresh.gif'    style='vertical-align:text-bottom;' title='刷新'>&nbsp;");
	
	document.write("每页<input type='text' id='_pageCount' style='width:25px;height:16px;text-align:center;' value=''>条&nbsp;");
	document.write("显示第 "+(start+1)+" 条到 "+(start + limit)+" 条记录，一共 "+totalRecord+" 条");
	document.write("</td></tr></table>");
	
	jQuery("#start").val(start);
	jQuery("#limit").val(limit);
	
	jQuery("#_pageindex").val(Math.floor((start+1) / limit) + ((start+1) % limit > 0 ? 1:0));
	jQuery("#_totalPageCount").val(Math.floor(totalRecord / limit) + (totalRecord % limit > 0 ? 1:0));
	jQuery("#_pageCount").val(limit);
	jQuery("#_totalRecord").val(totalRecord);
	
	if(parseInt(jQuery("#_pageindex").val())<=1){
		jQuery("#_btnPre").attr('src', "" + ctxPath + "/css/util/common/image/page-prev-disabled.gif");
		jQuery("#_btnFirst").attr("src", "" + ctxPath + "/css/util/common/image/page-first-disabled.gif");
		
		jQuery("#_btnPre").attr('disabled', true);
		jQuery("#_btnFirst").attr("disabled", true);
	}
	if(parseInt(jQuery("#_pageindex").val())>=parseInt(jQuery("#_totalPageCount").val())){
		jQuery("#_btnNext").attr('src', ctxPath + "/css/util/common/image/page-next-disabled.gif");
		jQuery("#_btnLast").attr("src", ctxPath + "/css/util/common/image/page-last-disabled.gif");
		
		jQuery("#_btnNext").attr('disabled', true);
		jQuery("#_btnLast").attr("disabled", true);
	}
	/**
	* 改变页数
	*/
	jQuery("#_pageindex").change(function(){
		if(isNumeric(jQuery("#_pageindex").val())){
	       	jQuery("#start").val((parseInt(jQuery("#_pageindex").val()) - 1) * parseInt(jQuery("#_pageCount").val()));
			jQuery("#"+formId).submit();
		}else{
			jQuery("#_pageindex").val("");
		}
		
	});
	/**
	* 改变每页显示条数
	*/
	jQuery("#_pageCount").change(function(){
		if(isNumeric(jQuery("#_pageCount").val())){
	    	jQuery("#start").val(0);
	    	jQuery("#limit").val(jQuery("#_pageCount").val());
	    	jQuery("#"+formId).submit();
		}else{
			jQuery("#_pageCount").val("");
		}
	});
	jQuery("#_totalPageCount").focus(function(){
		jQuery(this).blur();
	});
	jQuery("#_btnFirst").click(function(){
		jQuery("#start").val(0);
		jQuery("#"+formId).submit();
	});
	jQuery("#_btnPre").click(function(){
		if(parseInt(jQuery("#start").val()) - parseInt(jQuery("#limit").val())>= 0){
	    	jQuery("#start").val(parseInt(jQuery("#start").val()) - parseInt(jQuery("#limit").val()));
	    	jQuery("#"+formId).submit();
		}
	});
	jQuery("#_btnLast").click(function(){
		jQuery("#start").val(Math.floor(totalRecord / limit)*parseInt(jQuery("#_pageCount").val()));
		jQuery("#"+formId).submit();
	});
	jQuery("#_btnNext").click(function(){
		if(parseInt(jQuery("#start").val()) + parseInt(jQuery("#limit").val()) < totalRecord){
	    	jQuery("#start").val(parseInt(jQuery("#start").val()) + parseInt(jQuery("#limit").val()));
	    	jQuery("#"+formId).submit();
		}
	});
	jQuery("#_btnRefresh").click(function(){
    	jQuery("#"+formId).submit();
	});
}
/**
 * 判断是否为数字
 */
function isNumeric(strValue){
    return executeExp(/^\d*$/g, strValue);
}
/**
 * 执行正则表达式
 */
function executeExp(re, s){
    return re.test(s);
}