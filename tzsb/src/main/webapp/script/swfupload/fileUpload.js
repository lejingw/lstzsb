/**
 * 引入js文件：
#set($jsfiles = ["${rc.contextPath}/script/swfupload/swfupload.js",
	"${rc.contextPath}/script/swfupload/fileUpload.js"])
 * 	config {
 * 		placeHolder:'uploadDivId',//上传区域span的id
		billCode:'SC',//单据编码
		billid:'100',//单据id，可以为空（如新增单据时）
 * 		uploadFlag:true,//true表示允许上传，false表示查看上传文件
 * 		fileTypes:"*.jpg;*.gif;*.png",//图片格式，默认为所有文件格式
 * 		buttonText:"上传图片",//'选择文件'
 * 		fileSizeLimit:"10 MB", //默认为"10 MB"，如果值为"0 MB"则表示大小不限制
 * 	}
 */
function UploadFiles(config) {
	var obj = this;
	this.config = config||{};
	this.allowUploadFlag = obj.config.uploadFlag||false;
	this.uploadProgressTblId = "uploadProgressTblId";
	this.saveIdArr = [];
	this.deleteIdArr = [];
	this.swfupload = null;
	this.map = null;
	this.loadFoxiboxFlag = false;
	
	this.getSaveFileIds = function(){
		return obj.saveIdArr;
	};
	this.getDeleteFileIds = function(){
		return obj.deleteIdArr;
	};
	this.reloadPicFrame = function(){
		if(!obj.loadFoxiboxFlag)	return ;
		$('#' + obj.uploadProgressTblId + ' div a[title]').foxibox();
	};
	var uploadSuccess = function(file, serverData, receivedResponse) {
		var jsonObj = eval("(" + serverData + ")");
		obj.saveIdArr.push(jsonObj.fileId);
		var ufi = obj.getUploadFileItem(file.id, file.name);
		ufi.setImageUrl(jsonObj.path);
	};
	var fileQueued = function(file){
		obj.swfupload.addFileParam(file.id, "sort", file.index);
	};
	
	var fileQueueError = function(file, errorCode, message) {
		switch (errorCode) {
			case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
				alert("文件[<font color='red'>"+file.name+"</font>]大小超出限制："+obj.swfupload.settings.file_size_limit);
				break;
			case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
				alert("文件[<font color='red'>"+file.name+"</font>]大小为零");
				break;
			case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
				alert("文件[<font color='red'>"+file.name+"</font>]类型不正确，格式必须为："+obj.swfupload.settings.file_types);
				break;
			default:
				if (file !== null) {
					alert("文件[<font color='red'>"+file.name+"</font>]上传出错"+message);
				}else{
					alert("文件上传出错"+message);
				}
				break;
		}
	};
	
	var fileDialogComplete = function(numFilesSelected, numFilesQueued) {
		this.startUpload();
	};
	
	var uploadStart = function(file) {
		var ufi = obj.getUploadFileItem(file.id, file.name);
		return true;
	};
	
	var uploadProgress = function(file, bytesLoaded, bytesTotal) {
//		var percent = Math.ceil((bytesLoaded / bytesTotal) * 100);
//		var ufi = obj.getUploadFileItem(file.id, file.name);
//		ufi.setProgress(percent);
	};
	
	var uploadError = function(file, errorCode, message) {
		alert("文件[<font color='red'>"+file.name+"</font>]上传出错");
		var ufi = obj.getUploadFileItem(file.id, file.name);
		ufi.setErrorResult();
	};
	this.getUploadFileItem = function(fileId, fileName, fileUrl){
		var ufi = obj.map.get(fileId);
		if(null == ufi){
			fileUrl = fileUrl || ctxPath + "/script/swfupload/uploading.gif";
			ufi = new UploadFileItem(fileId, fileName, fileUrl);
			obj.map.put(fileId, ufi);
		}
		return ufi;
	};
	function UploadFileItem(fileId, fileName, fileUrl){
		var div = $("<div class='uploadImgDiv' id='" + fileId + "'/>");
		var picA = $("<a href='" + fileUrl + "' title='" + fileName + "' rel=''/>").appendTo(div);
		$("<img src='" + fileUrl + "' width='64' height='90' />").appendTo(picA);
		$("<br/>").appendTo(div);
		
		if(obj.allowUploadFlag){
			var delSpan = $("<span class='gray'/>").appendTo(div);
			$("<a href='#'>删除</a>").appendTo(delSpan).click(function(){
					var imgDiv = $(this).parent().parent();
					var divId = parseInt(imgDiv.attr('id'));
					if(typeof divId == 'number' && !isNaN(divId)){
						obj.deleteIdArr.push(divId);
					}
					imgDiv.remove();
					//obj.reloadPicFrame();
				});
		}
		div.appendTo($("#" + obj.uploadProgressTblId));
		
		this.fileid = fileId;
		this.setImageUrl = function(url){
			$("#"+this.fileid+" a[title]").attr("href", ctxPath + "/upload/" + url);
			$("#"+this.fileid+" a[title] img").attr("src", ctxPath + "/upload/" + url);
			obj.reloadPicFrame();
		};
		this.setErrorResult = function(url){
			var loadingImgUrl = ctxPath + "/script/swfupload/uploadfail.png";
			$("#"+this.fileid+" img").attr("src", loadingImgUrl);
		};
	};
	function loadFiles(){
		if(isNull(obj.config.billid))	return;
		SysCommonDwr.getUploadFileList(obj.config.billCode, obj.config.billid, function(dataList){
			for(var i=0;i<dataList.length;i++){
				var file = dataList[i];
				var fileUrl = ctxPath + "/upload/" + file.path;
				new UploadFileItem(file.id, file.mingcheng, fileUrl);
			}
			obj.reloadPicFrame();
		});
	};
	var placeHolder = obj.config.placeHolder;
	$("#" + placeHolder).after("<div class='uploadDiv' id='" + obj.uploadProgressTblId + "'></div>");
	if(obj.allowUploadFlag){
		var settings_object = {
				flash_url : ctxPath + "/script/swfupload/swfupload.swf",
				upload_url : ctxPath + "/uploadServlet", // servlet path
				file_size_limit : obj.config.fileSizeLimit || "10 MB",
				file_types : obj.config.fileTypes || "*.*",
				file_types_description : "all type files",
				file_upload_limit : 0,
				file_queue_limit : 0,
				button_cursor : SWFUpload.CURSOR.HAND,
				debug : false,
				//button settings
				button_width : "52",
				button_height : "18",
				button_image_url : ctxPath + "/script/swfupload/btnBackground.png",
				//button_text : '<span class="theFont">选择文件</span>',
				//button_text_style : ".theFont{font-size:12px;font-weight:bold;}",
				button_text : '<span class="blue"><a href="#">' + (obj.config.buttonText || '选择文件') + '</a></span>',
				button_text_left_padding : 0,
				button_text_top_padding : 0,
				button_placeholder_id : placeHolder,
				//The event handler funtion
				file_queued_handler : fileQueued,
				file_queue_error_handler : fileQueueError,
				file_dialog_complete_handler : fileDialogComplete,
				upload_start_handler : uploadStart,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess
		};
		obj.swfupload = new SWFUpload(settings_object);
	}
	$.getScript(ctxPath + "/script/map.js",function(data, status, jqxhr){
		if("success" != status){alert("加载map.js异常");return ;}
		obj.map = new Map();
	});
	
	var cssNode = document.createElement('link');
	cssNode.rel = 'stylesheet';
	cssNode.type = 'text/css';
	cssNode.media = 'screen';
	cssNode.href = ctxPath + "/style/foxibox/jquery-foxibox-0.2.css?t="+new Date().getTime();
	document.getElementsByTagName('head')[0].appendChild(cssNode);
	
	//$("<link>").attr({rel:"stylesheet", type:"text/css", href:ctxPath + "/style/foxibox/jquery-foxibox-0.2.css"}).appendTo("head");
	$.getScript(ctxPath + "/script/foxibox/jquery-foxibox-0.2.js", function(data, status){
			obj.loadFoxiboxFlag = true;
			loadFiles();
		});
	return this;
}