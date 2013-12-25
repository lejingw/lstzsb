$(document).ready(function(){
	$("#btnUpload").click(function(){
		showUploadWin({
			title:"上传测试数据",
		//	templatePath : "/qiye/test/test_temp.xls",
			templatePath : "/qiye/test/Excel测试模板.xls",
			uploadUrl:ctxPath + "/qiye/test/uploadExcel.do",
			checkFailUrl:ctxPath + "/qiye/test/excelError.do",
			okFn:function(){
				alert("刷新页面");
			}
		});
	});
});

