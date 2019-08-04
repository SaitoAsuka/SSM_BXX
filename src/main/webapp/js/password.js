$(function(){
	$(".lt dd").hide();
	$(".lt .pwd dd").show();
	$(".lt dt").click(function(){
		$(this).parent().find("dd").show();
		$(this).parent().siblings().children("dd").hide();
		$(".lt dt img").attr("src","../imgs/close.png");
		$(this).parent().find("img").attr("src","../imgs/open.png");
	})
})