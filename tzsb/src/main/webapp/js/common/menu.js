function initMenu() {
	$('#menu ul').hide();
	$('#menu li a').click(function(){
		var ulElem = $(this).next();
		if(!ulElem.is('ul'))
			return ;
		//如果当前菜单已展开，则收起菜单
		if (ulElem.is(':visible')) {
			ulElem.slideUp('normal');
			return false;
		}else{			
			//如果当前菜单不可见，则收起其他的可见菜单，并展开当前菜单
			openMenu($(this));
		}
	});
	$('#menu li ul li a').click(function(){
		openMenuItem($(this));
	});
}
function openMenu(menu){
	var ulElem = menu.next();
	if (ulElem.is(':visible')) {
		return ;
	}
	$('#menu li a').removeClass("menu_current");
	$('#menu ul:visible').slideUp('normal');
	
	menu.addClass("menu_current");
	ulElem.slideDown('normal');
}
function openMenuItem(menuItem){
	$('#menu li ul li a').removeClass("menu_item_current");
	menuItem.addClass("menu_item_current");
}
function navigateToMenu(p1, p2, p3){
	var menuItem = null;
	$('#menu li ul li a').each(function(index, elem){
		if(($(elem).attr("param")||'').indexOf("/"+p1+"/"+p2+"/"+p3+"/")>-1){			
			menuItem = $(elem);
			return false;
		}
	});
	if(menuItem){		
		openMenu(menuItem.parent().parent().prev());
		openMenuItem(menuItem);
		updateNavigate(menuItem);
	}
}
function openUrl(obj, u){
	var url = u || "#";
	if("#" == url){
		if(!$(obj).attr("param"))
			return ;
		url = ctxPath + $(obj).attr("param");
	}
	updateNavigate(obj);
	$("#mainFrame").attr("src", url);
}
function updateNavigate(obj){
	var url = ctxPath + $(obj).attr("param");
	var menu = $(obj).parent().parent().prev();
	var menuClickFlag = false;
	if(!menu.is("a")){
		menuClickFlag = true;
	}

	var ulrText = $("#container_rightmian .ulrText");
	ulrText.html("");
	
	if(!menuClickFlag){
		var title_menu = document.createElement("a");
		title_menu.href = "#";
		title_menu.innerHTML = menu.children().html();
		title_menu.onclick = function(){
			var obj = $(this);
			if(obj.html() != $('#menu li .menu_current').children().html()){
				$('#menu li .menu_current').next().slideUp('normal');
				$('#menu li .menu_current').removeClass("menu_current");
				$('#menu').children('li').children('a').children('span').each(function(){
					if(obj.html() == $(this).html()){
						$(this).parent().addClass("menu_current");
						$(this).parent().next().slideDown('normal');
					}
				});
			}
		};
		
		ulrText.append(title_menu);
		ulrText.append(document.createTextNode(" > "));
	}
	
	var title_menu_item = document.createElement("a");
	title_menu_item.href = "#";
	title_menu_item.innerHTML = $(obj).children().html();
	title_menu_item.onclick = function(){
		$("#mainFrame").attr("src", url);
	};
	
	ulrText.append(title_menu_item);
}
function showIndexPage(){
	$('#menu li ul li .menu_item_current').removeClass("menu_item_current");
	$('#menu li .menu_current').next().slideUp('normal');
	
	$('#menu li .menu_current').removeClass("menu_current");
	var path = getPathArr();
	$("#mainFrame").attr("src", ctxPath + "/" + path[0] + "/sys/main.do");
	
	var title_menu_item = document.createElement("a");
	title_menu_item.href = "#";
	title_menu_item.innerHTML = "首页";
	title_menu_item.onclick = showIndexPage;
	
	var ulrText = $("#container_rightmian .ulrText");
	ulrText.html("");
	ulrText.append(title_menu_item);
}