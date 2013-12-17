
/*********************************************编辑页面JS*************************************************/
/**
 * 初始化企业注册页面
 */
function initRegister(){
	//1给button设置响应事件
	initRight('010101', [
	       {id:'btnNext', code:'next', fn:function(){toNext();}}
	  ]);
	//2初始化验证信息
	Validator.init([
		]);
	change();
}
/**
 * 单据验证方法
 * @returns
 */
function checkForm(){
	//1使用验证框架验证
	if(!Validator.validate("frm"))
		return false;
	
	//2其他自定义的前端逻辑验证
	
	return true;
}
function change(){
	var dwhgr = document.getElementsByName("dwhgr");
	if(dwhgr[0].checked){
		jQuery("#display1").attr("style","display:block");
		jQuery("#display2").attr("style","display:block");
		jQuery("#display3").attr("style","display:block");
		jQuery("#display4").attr("style","display:none");
		jQuery("#display5").attr("style","display:none");
	}else{
		jQuery("#display1").attr("style","display:none");
		jQuery("#display2").attr("style","display:none");
		jQuery("#display3").attr("style","display:none");
		jQuery("#display4").attr("style","display:block");
		jQuery("#display5").attr("style","display:block");
	}
}
function toNext(){
	if(!checkForm())	return;
	var dwhgr = document.getElementsByName("dwhgr");
	if(dwhgr[0].checked){
		var zzjgdm = document.getElementById("zzjgdm").value;
		var mchxm = document.getElementById("mchxm1").value;
		if(document.getElementById("sfsydw").checked){
			var sfsydw = '1';
		}else{
			var sfsydw = '0';
		}
		if(document.getElementById("sfwbdw").checked){
			var sfwbdw = '1';
		}else{
			var sfwbdw = '0';
		}
		if(document.getElementById("sfscdw").checked){
			var sfscdw = '1';
		}else{
			var sfscdw = '0';
		}
		if(document.getElementById("sfjydw").checked){
			var sfjydw = '1';
		}else{
			var sfjydw = '0';
		}
		RegisterDwr.checkZuZhiJieGou(zzjgdm, '0', mchxm, function(data){
			if(data == 'true'){
				RegisterDwr.checkDanWeiXinXi(zzjgdm, function(flg){
					if(flg != 1){
						window.location = ctxPath + "/menhu/register/doNext.do?zzjgdmhsfz="+zzjgdm+"&dwhgr=0"
																+"&mchxm="+mchxm+"&sfsydw="+sfsydw+"&sfwbdw="+sfwbdw+"&sfscdw="+sfscdw+"&sfjydw="+sfjydw;
					}else{
						info('该单位已经注册，不能再注册。');
					}
				});
			}else{
				info(data);
			}
		});
	}else{
		var sfz = document.getElementById("sfz").value;
		var mchxm = document.getElementById("mchxm2").value;
		RegisterDwr.checkZuZhiJieGou(sfz, '1', mchxm, function(data){
			if(data == "true"){
				RegisterDwr.checkDanWeiXinXi(sfz, function(flg){
					if(flg != 1){
						window.location = ctxPath + "/menhu/register/doNext.do?zzjgdmhsfz="+sfz+"&dwhgr=1"+"&mchxm="+mchxm;
					}else{
						info('该用户已经注册，不能再注册。');
					}
				});
			}else{
				info('单位类型,单位名称,组织机构代码和组织机构代码库信息不一致。');
			}
		});
	}
}