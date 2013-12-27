var config = {
	imageUrl:ctxPath + '/uploadServlet?type=1',
	imageFieldName:"upfile",
	compressSide:0,
	maxImageSideLength:900
};
$(document).ready(function() {
	var postConfig=[];
	
	//全局变量
	var imageUrls = [];			// 用于保存从服务器返回的图片信息数组
	var selectedImageCount = 0;	// 当前已选择的但未上传的图片数量
	
    var imageUploader = new ImageUploader();
    
	var flashOptions = {
		container : "flashContainer", // flash容器id
		url : config.imageUrl, // 上传处理页面的url地址
		ext : '{"param1":"value1", "param2":"value2"}', // 可向服务器提交的自定义参数列表
		fileType : '{"description":"图片", "extension":"*.gif;*.jpeg;*.png;*.jpg"}', // 上传文件格式限制
		flashUrl : ctxPath +"/js/qiye/test/imageupload/imageUploader.swf", // 上传用的flash组件地址
		width : 608, // flash的宽度
		height : 272, // flash的高度
		gridWidth : 121, // 每一个预览图片所占的宽度
		gridHeight : 120, // 每一个预览图片所占的高度
		picWidth : 100, // 单张预览图片的宽度
		picHeight : 100, // 单张预览图片的高度
		uploadDataFieldName : config.imageFieldName, // POST请求中图片数据的key
		picDescFieldName : 'pictitle', // POST请求中图片描述的key
		maxSize : 4, // 文件的最大体积,单位M
		compressSize : 2, // 上传前如果图片体积超过该值，会先压缩,单位M
		maxNum : 32, // 单次最大可上传多少个文件
		compressSide : config.compressSide, // 等比压缩的基准，0为按照最长边，1为按照宽度，2为按照高度
		compressLength : config.maxImageSideLength // 能接受的最大边长，超过该值Flash会自动等比压缩
	};
	// 回调函数集合，支持传递函数名的字符串、函数句柄以及函数本身三种类型
	var callbacks = {
		// 选择文件的回调
		selectFileCallback : function(selectFiles) {
			utils.each(selectFiles, function(file) {
					var tmp = {};
					tmp.id = file.index;
					tmp.data = {};
					postConfig.push(tmp);
				});
			selectedImageCount += selectFiles.length;
			if (selectedImageCount){
				$("#upload").css("display", "");
			}
		},
		// 删除文件的回调
		deleteFileCallback : function(delFiles) {
			for (var i = 0, len = delFiles.length; i < len; i++) {
				var index = delFiles[i].index;
				postConfig.splice(index, 1);
			}
			selectedImageCount -= delFiles.length;
			if (!selectedImageCount) {
				$("#upload").css("display", "none");
			}
		},
		// 单个文件上传完成的回调
		uploadCompleteCallback : function(data) {
			try {
				info(data.info);
				var f = eval("(" + data.info + ")");
				f && imageUrls.push(f);
				selectedImageCount --;
			} catch (e) {
			}
		},
		// 单个文件上传失败的回调,
		uploadErrorCallback : function(data) {
			if (!data.info) {
				alert("网络错误");
			}
			//console && console.log(data);
		},
		// 全部上传完成时的回调
		allCompleteCallback : function() {
			//dialog.buttons[0].setDisabled(false); // 上传完毕后点亮按钮
		},
		// 文件超出限制的最大体积时的回调
		// exceedFileCallback: 'exceedFileCallback',
		// 开始上传某个文件时的回调
		startUploadCallback : function() {
			var config = postConfig.shift();
			info(config.id + "----" + config.data);
			//也可以在这里更改
			//if(config.id==2){ //设置第三张图片的对应参数
			//	config.data={"myParam":"value"}
			//}
			imageUploader.addCustomizedParams(config.id, config.data);
		}
	};

    imageUploader.init(flashOptions, callbacks);

    $i("upload").onclick = function () {
        var params = {"dir":"upload"};
        setPostParams(params);
        imageUploader.upload();
        this.style.display = "none";
    };
    $i("btnFinish").onclick = function () {
    	if (imageUrls.length < 1) return;
    	var imgObjs = [];
    	for (var i = 0, ci; ci = imageUrls[i++];) {
    		var tmpObj = {};
    		tmpObj.title = ci.title;
    		//修正显示时候的地址数据,如果后台返回的是图片的绝对地址，那么此处无需修正
    		tmpObj._src = tmpObj.src = config.imagePath + ci.url;
    		imgObjs.push(tmpObj);
    	}
    	info(imgObjs);
    	imageUploader.destroy();
    };
    function setPostParams(obj,index){
        if(index===undefined){
            utils.each(postConfig, function(config){
                config.data = obj;
            });
        }else{
            postConfig[index].data = obj;
        }
    };
});

function ImageUploader(){
	var me = this;
	var flashObj = null;
	var flashContainer = null;
	/**
	 * 创建flash实例
	 */
	me.init = function(opt, callbacks){
		var option = {
			createOptions : {
				id : 'flash',
				url : opt.flashUrl,
				width : opt.width,
				height : opt.height,
				errorMessage : 'Flash插件初始化失败，请更新您的FlashPlayer版本之后重试！',
				wmode : browser.safari ? 'transparent' : 'window',
				ver : '10.0.0',
				vars : opt,
				container : opt.container
			}
		};
		flashContainer = $i(opt.container);
		option = utils.extend(option, callbacks, false);
		flashObj = new baidu.flash.imageUploader(option);
	};
    me.upload = function(){
    	flashObj.upload();
    };
    me.addCustomizedParams = function(id, data){
    	flashObj.addCustomizedParams(id, data);
    };
    me.destroy = function(){
        flashObj = null;
    	flashContainer.innerHTML = "";
    };
}