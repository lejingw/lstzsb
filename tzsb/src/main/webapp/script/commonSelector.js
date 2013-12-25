/**
 * 显示选择框
 * 	参数 config{
 *		title:'选择单位名称',//弹出框标题
 *		readOnly:true,//是否只读
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
	var readOnly = config.readOnly === true;
	var options = {
		title : (config.title||'请选择')+(readOnly?"[只读]":""),
		contentType : 'iframe',
		iframeId : "selectFrm",
		width : config.width||520,
		height : config.height||370,
		okBtnName : readOnly?"关闭":(config.okBtnName||'确定'),
		showCancel : !readOnly,
		cancelBtnName : config.cancelBtnName||'取消',
		onok : function(box) {
			if(!readOnly){				
				var results = $("#selectFrm")[0].contentWindow.getValues();
				if(config.checkFn && !config.checkFn(results[0], results[1], results[2])){
					return;
				}
				config.okFn(results[0], results[1], results[2]);
			}
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
/**
 * Excel上传
 * 	参数 config{
 *		title : '选择单位名称',//弹出框标题
 *		okFn : function(){},//上传成功回调方法
 *		templatePath : "/qiye/test/test_temp.xls",
 *		uploadUrl : ctxPath + "/qiye/test/uploadExcel.do",//上传数据url
 *		checkFailUrl : ctxPath + "/qiye/test/excelError.do"//检查未通过url
 * 	}
 */
function showUploadWin(config){
	var options = {
		title : config.title||'请选择上传文件',
		width : config.width||300,
		height : config.height||100,
		okBtnName : config.okBtnName||'上传',
		cancelBtnName : config.cancelBtnName||'取消',
		onok : function(box) {
			if(swfUpload.getStats().files_queued<1){
				alert("请先选择要上传的excel");
			}else{				
				swfUpload.startUpload();
			}
		},
		oncancel : function(box) {box.close();}
	};
	var template_url = encodeURI(ctxPath + "/common/downloadExcelTemplate.do?path=" + config.templatePath);
	var html = "<table width='100%' border='0' cellspacing='1' cellpadding='0' class='im_tr f12'>"
		+ "<tr>"
		+ "<td style='border: solid 1px #d5e3e7;line-height: 28px;' class='im_tr_a text_right text_space_right' width='30%;'></td>"
		+ "<td style='border: solid 1px #d5e3e7;line-height: 28px;' class='text_space_left text_left'><a href='" + template_url + "'>模板下载</a></td>"
		+ "</tr>"
		+ "<tr>"
		+ "<td style='border: solid 1px #d5e3e7;line-height: 28px;' class='im_tr_a text_right text_space_right'><span id='uploadDivId1'></span></td>"
		+ "<td style='border: solid 1px #d5e3e7;line-height: 28px;' class='text_space_left text_left'><span id='uploadFileName'>&nbsp;</span></td>"
		+ "</tr>"
		+ "<tr>"
		+ "<td style='border: solid 1px #d5e3e7;line-height: 28px;' class='im_tr_a text_right text_space_right'></td>"
		+ "<td style='border: solid 1px #d5e3e7;line-height: 28px;' class='text_space_left text_left'><span id='checkResultUrl'>&nbsp;</span></td>"
		+ "</tr>"
		+ "</table>";
	var box = $.weeboxs.open(html, options);
	function setCheckResultMsg(msg){
		$("#checkResultUrl").html(msg);
	}
	var swfUpload = null;
	function uploadSuccess(file, serverData, receivedResponse) {
		var jsonObj = eval("(" + serverData + ")");
		SysCommonDwr.saveUploadExcelData(jsonObj.fileId, function(seqId){
			if(null == seqId){
				alert("保存数据失败");
			}else{
				//var url = ctxPath + "/qiye/test/uploadExcel.do?seqId=" + seqId;
				var url = config.uploadUrl + "?seqId=" + seqId;
				$.ajax({
						url:url,
						type:'GET',
						dataType:'json',
						context:document.body,
						error: function(){
					        alert('解析Excel过程出错，请确认数据模板正确性');
					    },
					    success:function(data){
					    	if(!data){
					    		$("#checkResultUrl").html("<a href='"+ config.checkFailUrl + "?seqId=" + seqId +"'>检查结果下载</a>");
					    		alert("数据检查未通过，请下载并查看详细信息");
					    	}else{
					    		$("#checkResultUrl").html("上传成功");
								alert("上传成功", function(){
									if(config.okFn){
										config.okFn();
									}
									box.close();
								});
					    	}
					    },
					});
			}
		});
	};
	function initUpload(){
		this.config = {};
		var obj = this;
		var settings_object = {
			flash_url : ctxPath + "/script/swfupload/swfupload.swf",
			upload_url : ctxPath + "/uploadServlet", // servlet path
			file_size_limit : obj.config.fileSizeLimit || "10 MB",
			file_types : obj.config.fileTypes || "*.txt;*.xls;*.xlsx",
			file_types_description : "Excel files",
			file_upload_limit : 0,
			file_queue_limit : 1,
			button_cursor : SWFUpload.CURSOR.HAND,
			debug : false,
			//button settings
			button_width : "55",
			button_height : "18",
			button_image_url : ctxPath + "/script/swfupload/btnBackground.png",
			//button_text : '<span class="theFont">选择文件</span>',
			//button_text_style : ".theFont{font-size:12px;font-weight:bold;}",
			button_text : '<span class="blue"><a href="#">' + (obj.config.buttonText || '选择Excel') + '</a></span>',
			button_text_left_padding : 0,
			button_text_top_padding : 0,
			button_placeholder_id : "uploadDivId1",
			//The event handler funtion
			file_dialog_start_handler : function(){
				swfUpload.cancelUpload(null, false);
			},
			file_queued_handler : function(file){$("#uploadFileName").html(file.name);},
			//file_queue_error_handler : fileQueueError,
			file_dialog_complete_handler : function(numFilesSelected, numFilesQueued){if(numFilesSelected>1) alert("请选择单个文件上传");},
			//upload_start_handler : uploadStart,
			//upload_progress_handler : uploadProgress,
			//upload_error_handler : uploadError,
			upload_success_handler : uploadSuccess
		};
		swfUpload = new SWFUpload(settings_object);
	}
	initUpload();
}