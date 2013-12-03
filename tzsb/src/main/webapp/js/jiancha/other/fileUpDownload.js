function UploadFiles(btnPlaceHolder, uploadFlag) {
	var obj = this;
	this.allowUploadFlag = uploadFlag;
	this.uploadProgressTblId = "uploadProgressTblId";

	this.swfu = null;
	this.cancelUpload = function(fileId){
		if(!obj.swfu)	return;
		obj.swfu.cancelUpload(fileId);
	};
	var fileQueued = function(file){
		var progress = new FileProgress(file, obj);
		progress.setStatus("Pending...");		
	};
	var fileQueueError = function(file, errorCode, message) {
		if (errorCode === SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED) {
			info("You have attempted to queue too many files.\n"
					+ (message === 0 ? "You have reached the upload limit."
							: "You may select " + (message > 1 ? "up to " + message + " files." : "one file.")));
			return;
		}
		var progress = new FileProgress(file, obj);
		switch (errorCode) {
		case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
			progress.setStatus("File is too big.");
			break;
		case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
			progress.setStatus("Cannot upload Zero Byte files.");
			break;
		case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
			progress.setStatus("Invalid File Type.");
			break;
		default:
			if (file !== null) {
				progress.setStatus("Unhandled Error");
			}
		break;
		}
	};
	
	var fileDialogComplete = function(numFilesSelected, numFilesQueued) {
		this.startUpload();
	};
	
	var uploadStart = function(file) {
		var progress = new FileProgress(file, obj);
		progress.setStatus("Uploading...");
		return true;
	};
	
	var uploadProgress = function(file, bytesLoaded, bytesTotal) {
		var percent = Math.ceil((bytesLoaded / bytesTotal) * 100);
		var progress = new FileProgress(file, obj);
		progress.setProgress("Uploading...", percent);
	};
	
	var uploadSuccess = function(file, serverData) {
		var progress = new FileProgress(file, obj);
		progress.setStatus("Complete.");
	};
	
	var uploadError = function(file, errorCode, message) {
		var progress = new FileProgress(file, obj);
		switch (errorCode) {
		case SWFUpload.UPLOAD_ERROR.HTTP_ERROR:
			progress.setStatus("Upload Error: " + message);
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_FAILED:
			progress.setStatus("Upload Failed.");
			break;
		case SWFUpload.UPLOAD_ERROR.IO_ERROR:
			progress.setStatus("Server (IO) Error");
			break;
		case SWFUpload.UPLOAD_ERROR.SECURITY_ERROR:
			progress.setStatus("Security Error");
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
			progress.setStatus("Upload limit exceeded.");
			break;
		case SWFUpload.UPLOAD_ERROR.FILE_VALIDATION_FAILED:
			progress.setStatus("Failed Validation.  Upload skipped.");
			break;
		case SWFUpload.UPLOAD_ERROR.FILE_CANCELLED:
			progress.setStatus("Cancelled");
			break;
		case SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED:
			progress.setStatus("Stopped");
			break;
		default:
			progress.setStatus("Unhandled Error: " + errorCode);
		break;
		}
	};

	var init = function(){
		var settings_object = {
				flash_url : ctxPath + "/script/swfupload/swfupload.swf",
				upload_url : ctxPath + "/uploadServlet", // servlet path
				file_size_limit : "0 MB",
				//file_types : "*.jpg;*.gif;*.png",
				file_types : "*.*",
				file_types_description : "all type files",
				file_upload_limit : 0, //允许上传的文件个数
				file_queue_limit : 0, //上传文件的队列大小
				button_cursor : SWFUpload.CURSOR.HAND,
//				custom_settings : {
//					progressTarget : "uploadProgressTblId"
//				},
				debug : false,
				//button settings
				button_width : "52",
				button_height : "18",
				button_image_url : ctxPath + "/js/jiancha/other/btnBackground.png",
				button_text : '<span class="theFont">选择文件</span>',
				button_text_style : ".theFont{font-size:12px;font-weight:bold;}",
				button_text_left_padding : 0,
				button_text_top_padding : 0,
				button_placeholder_id : btnPlaceHolder,
				//The event handler funtion
				file_queued_handler : fileQueued,
				file_queue_error_handler : fileQueueError,
				file_dialog_complete_handler : fileDialogComplete,
				upload_start_handler : uploadStart,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess
		};
		obj.swfu = new SWFUpload(settings_object);
		obj.swfu.addPostParam("billCode", "fuck...");
		obj.swfu.addPostParam("headid", "again...");
		obj.swfu.setPostParams({"billCode":"aaaaa", "headid":"bbbbb"});
	};
	var createFileTable = function(){
		jQuery("#"+btnPlaceHolder).after("<table style='width:600px;'><tbody id='"+obj.uploadProgressTblId+"'></tbody></table>");
	};
	createFileTable();
	if(uploadFlag){
		init();
	}
	return this;
}
function FileProgress(file, ufObj){
	var targetID = ufObj.uploadProgressTblId;
	this.fileProgressTR = document.getElementById(file.id);
	if (!this.fileProgressTR) {

		this.filenameTD = document.createElement("td");
		this.filenameTD.innerHTML = file.name;

		this.statusTD = document.createElement("td");
		//this.statusTD.innerHTML = "<div style='font-size:0;margin-top:2px;background-color:#FFDD99;height:14px;width:"+100+"%;'></div>";

		this.deleteTD = document.createElement("td");
		var di = document.createElement("input");
		di.type = 'button';
		di.value = "删除";
		if(!ufObj.allowUploadFlag){			
			di.disabled = true;
		}
		di.onclick = function (){
			var rowIndex = di.parentNode.parentNode.rowIndex;
			$i(targetID).deleteRow(rowIndex);
			ufObj.cancelUpload(file.id);
		};
		this.deleteTD.appendChild(di);
		//this.deleteTD.innerHTML = "<input type='button' value='删除' onclick=\"deleteRow(this,'"+targetID+"')\">";

		var tr = document.createElement("tr");
		tr.appendChild(this.filenameTD);
		tr.appendChild(this.statusTD);
		tr.appendChild(this.deleteTD);
		tr.id = file.id;
		this.fileProgressTR = tr;
		this.fileProgressID = file.id;
		document.getElementById(targetID).appendChild(this.fileProgressTR);
	}
	this.setProgress = function (msg, percentage) {
		this.fileProgressTR.childNodes[1].innerHTML = "<div style='font-size:1;margin-top:2px;background-color:#FFDD99;height:14px;width:"+percentage+"%;'>"+msg+"</div>";
	};
	this.setStatus = function (status) {
		this.fileProgressTR.childNodes[1].innerHTML = status;
	};
}