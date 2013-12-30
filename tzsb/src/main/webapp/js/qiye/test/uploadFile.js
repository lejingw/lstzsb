var swfupload, filesList=[];
var config = {
	fileUrl:ctxPath + "/uploadServlet?type=2",
    fileFieldName:"upfile"
};
$(document).ready(function () {
    var settings = {
        upload_url:config.fileUrl,           //附件上传服务器地址
        file_post_name:config.fileFieldName, //向后台提交的表单名
        flash_url: ctxPath +"/js/qiye/test/swfupload/swfupload.swf",
        flash9_url:ctxPath +"/js/qiye/test/swfupload/swfupload_fp9.swf",
        post_params:{},                               //解决session丢失问题
        file_size_limit:"100 MB",                     //文件大小限制，此处仅是前端flash选择时候的限制，具体还需要和后端结合判断
        file_types:"*.*",                             //允许的扩展名，多个扩展名之间用分号隔开，支持*通配符
        file_types_description:"All Files",           //扩展名描述
        file_upload_limit:100,                        //单次可同时上传的文件数目
        file_queue_limit:10,                          //队列中可同时上传的文件数目
        custom_settings:{                             //自定义设置，用户可在此向服务器传递自定义变量
            progressTarget:"fsUploadProgress",
            startUploadId:"startUpload"
        },
        debug:false,

        // 按钮设置
        button_image_url:ctxPath +"/js/qiye/test/swfupload/filescan.png",
        button_width:"100",
        button_height:"25",
        button_placeholder_id:"spanButtonPlaceHolder",
        button_text:'<span class="theFont">文件浏览…</span>',
        button_text_style:".theFont{font-size:14px;}",
        button_text_left_padding:10,
        button_text_top_padding:4,

        // 所有回调函数 in handlersplugin.js
        swfupload_preload_handler:preLoad,
        swfupload_load_failed_handler:loadFailed,
        file_queued_handler:fileQueued,
        file_queue_error_handler:fileQueueError,
        //选择文件完成回调
        file_dialog_complete_handler:function(numFilesSelected, numFilesQueued) {
            var me = this;        //此处的this是swfupload对象
            if (numFilesQueued > 0) {
                //dialog.buttons[0].setDisabled(true);
                var start = $i(this.customSettings.startUploadId);
                start.style.display = "";
                start.onclick = function(){
                    me.startUpload();
                    start.style.display = "none";
                };
            }
        },
        upload_start_handler:uploadStart,
        upload_progress_handler:uploadProgress,
        upload_error_handler:uploadError,
        upload_success_handler:function (file, serverData) {
            try{
                var f = eval("("+serverData+")");
                var progress = new FileProgress(file, this.customSettings.progressTarget);
                if(f.state=="SUCCESS"){
                	progress.setComplete();
                	progress.setStatus("<span style='color: #0b0;font-weight: bold'>上传成功!</span>");
                	filesList.push({fileId:f.fileId, url:f.url, type:f.fileType, original:f.original, _fileId:file.id});
                	var me = this;
                	var obj = {
                			cancelUpload:function(fileId){
                				for(var i=0;i<filesList.length;i++){
                					if(fileId == filesList[i]._fileId){
                						filesList.splice(i, 1);
                						break;
                					}
                				}
                				me.cancelUpload(fileId);
                			}
                		};
                	progress.toggleCancel(true,obj,'从成功队列中移除');
                }else{
                	progress.setError();
                	progress.setStatus(f.state);
                	progress.toggleCancel(true,this,"移除保存失败文件");
                }
            }catch(e){}
        },
        //上传完成回调
        upload_complete_handler:uploadComplete,
        //队列完成回调
        queue_complete_handler:function(numFilesUploaded){
//            dialog.buttons[0].setDisabled(false);
                var status = $i("divStatus");
                var num = status.innerHTML.match(/\d+/g);
                status.innerHTML = ((num && num[0] ?parseInt(num[0]):0) + numFilesUploaded) +' 个文件已上传！ ';
        }
    };
    swfupload = new SWFUpload( settings );
//    $i("btnFinish").onclick = function () {
//    	info(filesList)
//        //swfupload.destroy();
//    };
    //点击OK按钮
//    dialog.onok = function(){
//        var map = fileTypeMaps,
//            str="";
//        for(var i=0,ci;ci=filesList[i++];){
//            var src = config.UEDITOR_HOME_URL + "dialogs/attachment/fileTypeImages/"+(map[ci.type]||"icon_default.png");
//            str += "<p style='line-height: 16px;'><img src='"+ src + "' _src='"+src+"' />" +
//                   "<a href='"+config.filePath + ci.url+"'>" + ci.original + "</a></p>";
//        }
//        //editor.execCommand("insertHTML",str);
//        swfupload.destroy();
//    };
//    dialog.oncancel = function(){
//        swfupload.destroy();
//    }
});
function getValues(){
	info(filesList.length);
	//swfupload.destroy();
}