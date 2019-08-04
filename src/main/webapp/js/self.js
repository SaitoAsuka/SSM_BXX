//表示页面加载之后，再执行js
$(function () {
        $(".lt dd").hide();
        $(".lt .MyOrder dd").show();
        $(".lt dt").click(function () {
            //当前元素的父元素的子元素的dd
            $(this).parent().find("dd").show();
            $(this).parent().siblings().children("dd").hide();
            $(".lt dt img").attr("src","../imgs/close.png")
            $(this).parent().find("img").attr("src","../imgs/open.png")

        })
    }
)