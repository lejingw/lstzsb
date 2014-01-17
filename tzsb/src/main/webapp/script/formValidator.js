Validator = {
 	MoneyOrNull: "this.isMoneyOrNull(value)",
 	Money : "this.isMoney(value)",
 	PlusNumber: "this.isPlusNumber(value)",
	Required : /.+/,
	Email : /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
	Phone : /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/,
	Mobile : /^((\(\d{2,3}\))|(\d{3}\-))?1\d{10}$/,
	Url : /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/,
	IdCard : "this.isIdCard(value)",
	Currency : /^\d+(\.\d+)?$/,
	Number : /^\d+$/,
	Zip : /^[1-9]\d{5}$/,
	Integer : /^[-\+]?\d+$/,
	Double : /^[-\+]?\d+(\.\d+)?$/,
	English : /^[A-Za-z]+$/,
	Chinese :  /^[\u0391-\uFFE5]+$/,
	Username : /^[a-z]\w{2,}$/i,
	UnSafe : /^(([A-Z]*|[a-z]*|\d*|[-_\~!@#\$%\^&\*\.\(\)\[\]\{\}<>\?\\\/\'\"]*)|.{0,5})$|\s/,
	IsSafe : function(str){return !this.UnSafe.test(str);},
	SafeString : "this.IsSafe(value)",
	Filter : "this.DoFilter(value, getAttribute('accept'))",
	Limit : "this.limit(value.length,getAttribute('min'),  getAttribute('max'))",
	LimitB : "this.limit(this.LenB(value), getAttribute('min'), getAttribute('max'))",
	Date : "this.isDate(value, getAttribute('format'))",
	Time : "this.isTime(value)",
	Repeat : "value == document.getElementsByName(getAttribute('to'))[0].value",
	Range : "getAttribute('min') <= (value|0) && (value|0) <= getAttribute('max')",
	Compare : "this.compare(value,getAttribute('operator'),getAttribute('to'))",
	Custom : "this.Exec(value, getAttribute('regexp'))",
	Group : "this.MustChecked(getAttribute('name'), getAttribute('min'), getAttribute('max'))",
	ErrorItem : [document.forms[0]],
	ErrorMessage : ["以下原因导致提交失败：\t\t\t\t"],
	applyAttribute:function(obj, cfg){
		for(var p in cfg){
			if(p == 'msgkey'){
				obj.attr("msg", msg("Validator."+cfg[p], cfg['msgArgs']));
			}else{
				obj.attr(p, cfg[p]);
			}
		}
	},
	init : function(cfgArr){
		if(!cfgArr || !cfgArr.length || cfgArr.length<1)
			return ;
		for(var i=0;i<cfgArr.length;i++){
			var cfg = cfgArr[i];
			var obj = $("#" + cfg.id);
			delete cfg.id;
			this.applyAttribute(obj, cfg);
		}
		if ($.browser.msie && ( $.browser.version == "6.0" ) && !$.support.style ){
			$('div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,textarea,p,blockquote,th,td,hr,button,article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section').hover(function(){
				$(this).addClass('hover');
			},function(){
				$(this).removeClass('hover');
			});
		}
	},
	add : function(cfg){
		var obj = $("#" + cfg.id);
		delete cfg.id;
		this.applyAttribute(obj, cfg);
	},
	remove : function(id){
		$("#" + id).attr("dataType", null);
	//	$("#" + id).parent().find("span[name='__ErrorMessagePanel']").remove();
		removeAlert2(false, $("#" + id));
	},
	removeAll:function(){
		$("span[name='__ErrorMessagePanel']").prev().attr("dataType", null);
		$("span[name='__ErrorMessagePanel']").remove();
	},
	validate : function(theForm, mode){
		var formObj = null;
		if(typeof theForm == 'string'){
			formObj = document.getElementById(theForm);
		}else if(null != theForm){
			formObj = theForm;
		}
		var obj = formObj || event.srcElement;
		var count = obj.elements.length;
        this.ErrorMessage.length = 1;
		this.ErrorItem.length = 1;
		this.ErrorItem[0] = obj;
		for(var i=0;i<count;i++){
			with(obj.elements[i]){
				var _dataType = getAttribute("dataType");
				if(typeof(_dataType) == "object" || typeof(this[_dataType]) == "undefined")  continue;
				this.ClearState(obj.elements[i]);
                if(getAttribute("require") == "false" && value == "") continue;
				switch(_dataType){
					case "IdCard" :
					case "Date" :
					case "Time" :
					case "Repeat" :
					case "Range" :
					case "Compare" :
					case "Custom" :
					case "Group" :
					case "Limit" :
					case "LimitB" :
					case "SafeString" :
					case "Money":
					case "MoneyOrNull":
					case "PlusNumber":
					case "Filter" :
						if(!eval(this[_dataType]))	{
							this.AddError(i, getAttribute("msg"));
						}
						break;
					default :
						if(!this[_dataType].test(value)){
							this.AddError(i, getAttribute("msg"));
						}
						break;
				}
			}
		}
		if(this.ErrorMessage.length > 1){
			mode = mode || 3;
			var errCount = this.ErrorItem.length;
			switch(mode){
				case 1 :
	                try{
	                	alert(this.ErrorMessage.join("\n"));
	                    this.ErrorItem[1].focus();
	                }catch(e){
	                }
					break;
				case 2 :
	                try{
	                	for(var i=1;i<errCount;i++){					
	                		this.ErrorItem[i].style.color = "red";
	                	}
	                	alert(this.ErrorMessage.join("\n"));
	                    this.ErrorItem[1].focus();
	                }catch(e){
	                }
					break;
				case 3 :
					try{
						for(var i=1;i<errCount;i++){
							var msg = this.ErrorMessage[i].split("_:_")[1];
							addAlert2(false, this.ErrorItem[i], msg);
//							var td = $(this.ErrorItem[i].parentNode);
//							var span = $("<span name='__ErrorMessagePanel' style='white-space:normal;position:relative;line-height:22px;height:auto; '>&nbsp;&nbsp;</span>");
//							span.appendTo(td);
//							var img = $("<img src='"+ctxPath+"/style/img/icon_error_2.png'/>").hover(function(){
//									$(this).next().css("display", "block");
//								}, function(){
//									$(this).next().css("display", "none");
//								});
//							img.appendTo(span);
//							var msg = this.ErrorMessage[i].split(":")[1];
//							$("<div style='z-Index:1;word-wrap: break-word; word-break: normal;display:none;position:absolute;top:5px;left:15px;font-size:12px;color:#682200; border:1px solid #f2b100; background:#fff6de; line-height:22px; min-height:22px;height: auto; width:150px; padding:0 0.5em;'>" + msg + "</div>").appendTo(span);
						}
					}catch(e){
					}
					break;
				case 5 :
					try{
						for(var i=1;i<errCount;i++){
							var span = document.createElement("SPAN");
							span.id = "__ErrorMessagePanel";
							this.ErrorItem[i].parentNode.appendChild(span);
							var msg = this.ErrorMessage[i].split(":")[1];
							span.innerHTML = "&nbsp;&nbsp;<img alt='" + msg + "' title='" + msg + "' src='" + ctxPath + "/style/img/icon_error_2.png'/>";
						}
					}catch(e){
					}
					break;
				case 4 :
					try{
						for(var i=1;i<errCount;i++){
							var span = document.createElement("SPAN");
							span.id = "__ErrorMessagePanel";
							span.style.color = "red";
							this.ErrorItem[i].parentNode.appendChild(span);
							span.innerHTML = this.ErrorMessage[i].replace(/\d+:/,"<img src='"+ctxPath+"/style/img/icon_error_2.png'/>");
						}
					}catch(e){
					}
					this.ErrorItem[1].focus();
					break;
				default :
					alert(this.ErrorMessage.join("\n"));
					break;
			}
			return false;
		}
		return true;
	},
	limit : function(len,min, max){
		min = min || 0;
		max = max || Number.MAX_VALUE;
		return min <= len && len <= max;
	},
	LenB : function(str){
		return str.replace(/[^\x00-\xff]/g,"**").length;
	},
	ClearState : function(elem){
		with(elem){
			if(style.color == "red")
				style.color = "";
			$(parentNode).find("span[name='__ErrorMessagePanel']").remove();
//			var lastNode = parentNode.childNodes[parentNode.childNodes.length-1];
//			if(lastNode.getAttribute("name") == "__ErrorMessagePanel")
//				parentNode.removeChild(lastNode);
		}
	},
	AddError : function(index, str){
		this.ErrorItem[this.ErrorItem.length] = this.ErrorItem[0].elements[index];
		this.ErrorMessage[this.ErrorMessage.length] = this.ErrorMessage.length + "_:_" + str;
	},
	Exec : function(op, reg){
		return new RegExp(reg,"g").test(op);
	},
	compare : function(op1,operator,op2){
		switch (operator) {
			case "NotEqual":
				return (op1 != op2);
			case "GreaterThan":
				return (op1 > op2);
			case "GreaterThanEqual":
				return (op1 >= op2);
			case "LessThan":
				return (op1 < op2);
			case "LessThanEqual":
				return (op1 <= op2);
			default:
				return (op1 == op2);
		}
	},
	MustChecked : function(name, min, max){
		var groups = document.getElementsByName(name);
		var hasChecked = 0;
		min = min || 1;
		max = max || groups.length;
		for(var i=groups.length-1;i>=0;i--)
			if(groups[i].checked) hasChecked++;
		return min <= hasChecked && hasChecked <= max;
	},
	DoFilter : function(input, filter){
		return new RegExp("^.+\.(?=EXT)(EXT)$".replace(/EXT/g, filter.split(/\s*,\s*/).join("|")), "gi").test(input);
	},
	isIdCard : function(number){
		var date, Ai;
		var verify = "10x98765432";
		var Wi = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];
		var area = ['','','','','','','','','','','','北京','天津','河北','山西','内蒙古','','','','','','辽宁','吉林','黑龙江','','','','','','','','上海','江苏','浙江','安微','福建','江西','山东','','','','河南','湖北','湖南','广东','广西','海南','','','','重庆','四川','贵州','云南','西藏','','','','','','','陕西','甘肃','青海','宁夏','新疆','','','','','','台湾','','','','','','','','','','香港','澳门','','','','','','','','','国外'];
		var re = number.match(/^(\d{2})\d{4}(((\d{2})(\d{2})(\d{2})(\d{3}))|((\d{4})(\d{2})(\d{2})(\d{3}[x\d])))$/i);
		if(re == null) return false;
		if(re[1] >= area.length || area[re[1]] == "") return false;
		if(re[2].length == 12){
			Ai = number.substr(0, 17);
			date = [re[9], re[10], re[11]].join("-");
		}
		else{
			Ai = number.substr(0, 6) + "19" + number.substr(6);
			date = ["19" + re[4], re[5], re[6]].join("-");
		}
		if(!this.isDate(date, "yyyy-mm-dd")) return false;
		var sum = 0;
		for(var i = 0;i<=16;i++){
			sum += Ai.charAt(i) * Wi[i];
		}
		Ai +=  verify.charAt(sum%11);
		return (number.length ==15 || number.length == 18 && number == Ai);
	},
	isDate : function(op, formatString){
		formatString = formatString || "yyyy-mm-dd";
		var m=null, year=null, month=null, day=null;
		switch(formatString){
			case "yyyy-mm-dd" :
				m = op.match(new RegExp("^(\\d{4})[-](\\d{2})[-](\\d{2})$"));
				if(m == null ) return false;
				year = m[1];
				month = m[2]*1;
				day = m[3]*1;
				break;
			case "yyyymmdd" :
				m = op.match(new RegExp("^(\\d{4})(\\d{2})(\\d{2})$"));
				if(m == null ) return false;
				year = m[1];
				month = m[2]*1;
				day = m[3]*1;
				break;
			case "dmy" :
				m = op.match(new RegExp("^(\\d{1,2})([-./])(\\d{1,2})\\2((\\d{4})|(\\d{2}))$"));
				if(m == null ) return false;
				day = m[1];
				month = m[3]*1;
				year = (m[5].length == 4) ? m[5] : GetFullYear(parseInt(m[6], 10));
				break;
			default :
				break;
		}
		if(!parseInt(month)) return false;
		month = month==0 ?12:month;
		var date = new Date(year, month-1, day);
        return (typeof(date) == "object" && year == date.getFullYear() && month == (date.getMonth()+1) && day == date.getDate());
		function GetFullYear(y){return ((y<30 ? "20" : "19") + y)|0;}
	},
	isTime : function(strValue){
		if (isEmpty(strValue)) return false;
		var m = strValue.match(new RegExp("^(\\d{2})[:](\\d{2})[:](\\d{2})$"));
		if(m == null ) return false;
		var arr = strValue.split(":");
	    var h = parseInt(arr[0]), m = parseInt(arr[1]), s = parseInt(arr[2]);
	    if(h<0 || h>=24)	return false;
	    if(m<0 || m>=60)	return false;
	    if(s<0 || s>=60)	return false;
	    return true;
	},
	isMoney : function(money) {
		var right = /^\d+(\.\d+)?$/.test(money);
		if (parseFloat(money) <= 0) {
			return false;
		}
		return right;
	},
	isMoneyOrNull : function(money) {
		if (money == "") return true;
		var right = /^\d+(\.\d+)?$/.test(money);
		if (parseFloat(money) <= 0) {
			return false;
		}
		return right;
	},
	isPlusNumber : function(money) {
		var right = /^\d+(\.\d+)?$/.test(money);
		if (parseFloat(money) < 0) {
			return false;
		}
		return right;
	}
 };