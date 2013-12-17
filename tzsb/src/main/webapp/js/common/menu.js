function initMenu() {
	$('#menu ul').hide();
	$('#menu ul').children('.current').parent().show();
	// $('#menu ul:first').show();
	$('#menu li a').click(function() {
		var checkElement = $(this).next();
	//	info($(this).html())
		if(!checkElement.is('ul'))
			return false;
	//	info('--b--')
		if (checkElement.is(':visible')) {
			checkElement.slideUp('normal');
			return false;
		} else {
			$('#menu ul:visible').slideUp('normal');
			$('#menu li a').removeClass("menu_current");
			
			checkElement.slideDown('normal');
			$(this).addClass("menu_current");
			return false;
		}
	});
	
	$('#menu li ul li a').click(function(){
		$('#menu li ul li a').removeClass("menu_item_current");
		$(this).addClass("menu_item_current");
	});
}
function openUrl(obj, url){
	if("#" == url)
		return ;
	var menu = $(obj).parent().parent().prev().children().html();
	var menu_item = $(obj).children().html();
	
	var title_menu = document.createElement("a");
	title_menu.href = "#";
	title_menu.innerHTML = menu;
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
	
	var title_menu_item = document.createElement("a");
	title_menu_item.href = "#";
	title_menu_item.innerHTML = menu_item;
	title_menu_item.onclick = function(){
		$("#mainFrame").attr("src", url);
	};
	
	var ulrText = $("#container_rightmian .ulrText");
	ulrText.html("");
	ulrText.append(title_menu);
	ulrText.append(document.createTextNode(" > "));
	ulrText.append(title_menu_item);
	
	$("#mainFrame").attr("src", url);
}
function showIndexPage(){
	$('#menu li ul li .menu_item_current').removeClass("menu_item_current");
	$('#menu li .menu_current').next().slideUp('normal');
	
	$('#menu li .menu_current').removeClass("menu_current");
	$("#mainFrame").attr("src", ctxPath + "/jiancha/sys/main.do");
	
	var title_menu_item = document.createElement("a");
	title_menu_item.href = "#";
	title_menu_item.innerHTML = "首页";
	title_menu_item.onclick = showIndexPage;
	
	var ulrText = $("#container_rightmian .ulrText");
	ulrText.html("");
	ulrText.append(title_menu_item);
}