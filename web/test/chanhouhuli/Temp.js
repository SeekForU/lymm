/*用于分享开始*/
var url = window.location.href;
window._bd_share_config = {
    common: {
        bdText: $("#H4").text(),
        bdDesc: $("#H4").text(),
        bdUrl: url
    },
    share: [{
        "tag": "share_1",
        "bdSize": 32
    }]
}
with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion=' + ~(-new Date() / 36e5)]
/*用于分享结束*/
$(function () {

    /*加代码开始*/
        var tempArr = [];
        tempArr.push('<div class="share bdsharebuttonbox" data-tag="share_1">');
        tempArr.push('<span id="Fen">分享到：</span>');
        tempArr.push('<a href="javascript:;" class="bds_weixin wechat scan-ma" data-cmd="weixin"></a>');
        tempArr.push('<a href="javascript:;" class="bds_tsina" data-cmd="tsina"> </a>');
        tempArr.push('<a href="javascript:;" class="bds_qzone" data-cmd="qzone"></a> ');
        tempArr.push('<a class="bds_more" data-cmd="more">更多</a> ');
        tempArr.push('</div>');
        var res = tempArr.join('');
        $(".newcon").append(res);
		if($('div[data-tag="share_1"]').length=2){
			$('div[data-tag="share_1"]:eq(0)').remove()
		}
    /*加代码结束*/
    GetData();
    SelectSc();
    $("body").on("click", ".Tiao", function () {
        $.post("../Ajax/IsClick.ashx", { id: $(this).attr("id") }, function () {

        });
    })

    function SelectSc() {
        if ($.cookie("Id") == null) {
            $("#ImageButton2").attr("src", "../images/收藏.jpg");
        }
        var U = location.href;
        var f = "", T = "";
        if (U.indexOf("/htm/") != -1) {
            f = "../temp/TempIndex.ashx";
        } else {
            f = "TempIndex.ashx";
        }
        $.post(f, { Type: "SelectSc", Title: $("#H4").text(), url: U }, function (a) {
            if (a.toString() == "2") {
                $("#ImageButton2").attr("src", "../images/取消收藏.jpg");
            }
        });
    }



    $("#ImageButton2").click(function () {
        if ($.cookie("Id") == null) {
            if (confirm("您没有登录,是否去登录")) {
                window.location = '../login.aspx?t=' + window.location.href;
                return;
            } else {
                return;
            }
        }
        var U = window.location.href;
        var f = "", T = "";
        if (U.indexOf("/htm/") != -1) {
            f = "../temp/TempIndex.ashx";
        } else {
            f = "TempIndex.ashx";
        }
        switch ($(this).attr("src").toString()) {

            case "../images/收藏.jpg":
                T = "Sc";
                break;
            default:
                T = "QSc";
                break;
        }

        $.post(f, { Type: T, Title: $("#H4").text(), url: U }, function (a) {
            switch (a.toString()) {
                case "0":
                    alert("操作失败,请重试！");
                    break;
                case "2":
                    alert("您已收藏该文章！");
                    break;
                case "999":
                    alert("管理员无权限收藏！");
                    break;
                default:
                    var Ti = a.toString().split("|")[1];
                    $("#ImageButton2").attr("src", Ti);
                    alert(a.toString().split("|")[0].toString() == "1" ? "收藏成功" : "取消成功");
                    break;
            }
        });
    });


    function GetData() {
        var url = location.href;
        var f = "";
        if (url.indexOf("/htm/") != -1) {
            f = "../temp/temp.ashx";
        } else {
            f = "temp.ashx";
        }
        $.getJSON(f, {}, function (Data) {
            $("#p1").html(Data["h1"]);
            $("#u1").html(Data["h2"]);
            $("#p2").html(Data["h3"]);
            $("#u2").html(Data["h4"]);
            $("#p3").html(Data["h5"]);
            $("#u3").html(Data["h6"]);
            $("#p4").html(Data["h7"]);
            $("#u4").html(Data["h8"]);
            $("#p5").html(Data["h9"]);
            $("#u5").html(Data["h10"]);
        });
    }
});                                  