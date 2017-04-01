$(document).ready(function(){
	//导航
   $('.nav>li').each(function(){
        var div=$(this).find('dl').hide();
        $(this).hover(function(){div.show();$(this).addClass('cur')},function(){div.hide();$(this).removeClass('cur')});
    });
	
	//头部搜索
	$("#searchSelected").click(function(){ 
		$("#searchTab").show();
		$(this).addClass("searchOpen");
	}); 
	$("#searchTab li").hover(function(){
		$(this).addClass("selected");
	},function(){
		$(this).removeClass("selected");
	});
	$("#searchTab li").click(function(){
		$("#searchSelected").html($(this).html());
		$("#searchTab").hide();
		$("#searchSelected").removeClass("searchOpen");
	});
	
	//底部固定
	$("#rightWeixin").css("bottom", "0px");
    var button_toggle = true;

//切换城市
$('#ads').hover(function(){
		$(this).addClass('cur');
		$(".city").show(500);
	});
	$('.close').click(function(){
		$('#ads').removeClass('cur').addClass('address');;
		$(".city").hide();
	});
	$('.citys li').click(function(){
		$('#ads').parent().prev().html($(this).text());
		$('#ads').removeClass('cur').addClass('address');;
		$('.city').hide();
	});
    });
