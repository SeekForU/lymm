!function () {
    var e = document.createElement("ins");
    e.id = "newBridge";
    if (document.getElementById(e.id)) {
        return;
    }
    var n = {
        "inviteBox": {
            "skinIndex": 0,
            "startPage": 1,
            "customerStyle": {"acceptFontColor": "#000000", "backImg": "", "acceptBgColor": "#fecb2e"},
            "skinName": "默认皮肤",
            "autoHide": 0,
            "reInvite": 1,
            "sendButton": {"bgColor": "#bfecff", "fontColor": "#1980df"},
            "isShowText": 1,
            "skinType": 1,
            "buttonType": 1,
            "autoInvite": 0,
            "stayTime": 30,
            "width": 400,
            "closeTime": 20,
            "isCustomerStyle": 0,
            "position": "middle",
            "inviteInterval": 30,
            "welcome": "<p style=\"color: #fff\">欢迎来到本网站，请问有什么可以帮您？</p>",
            "height": 175
        },
        "noteBoard": {
            "skinIndex": 0,
            "skinType": 1,
            "displayCompany": 0,
            "cpyInfo": "",
            "skinName": "默认皮肤",
            "displayLxb": 1,
            "position": "left-bottom",
            "itemsExt": [],
            "items": [{"name": "visitorName", "required": 0, "isShow": 1}, {
                "name": "visitorPhone",
                "required": 1,
                "isShow": 1
            }, {"name": "visitorEmail", "required": 0, "isShow": 1}, {
                "name": "visitorAddress",
                "required": 0,
                "isShow": 1
            }],
            "cpyTel": "",
            "isAlwaysDisplay": 0
        },
        "seekIcon": {
            "customerStyle": {"backImg": "//sgoutong.baidu.com/static/style/images/c1606dd48cd343f487e30ed3a6469e05.jpg"},
            "skinIndex": 8,
            "skinType": 1,
            "iconType": 0,
            "isCustomerStyle": 0,
            "width": 140,
            "skinName": "自定义皮肤",
            "displayLxb": 1,
            "groups": [{"groupName": "示例分组1", "groupId": 34475}],
            "groupStyle": {"bgColor": "#ffffff", "buttonColor": "#d6f3ff", "fontColor": "#008edf"},
            "position": "left-center",
            "height": 71
        }
    }, t = {
        "eid": "7050598",
        "queuing": "<p>欢迎光临！您已经进入服务队列，请您稍候，马上为您转接您的在线咨询顾问。</p>",
        "session": {
            "displayName": "S**u",
            "headUrl": "https://ss0.bdstatic.com/7Ls0a8Sm1A5BphGlnYG/sys/portraitn/item/35715365656b7575757575b15f.jpg",
            "status": 0,
            "uid": 1605464373,
            "uname": "Seekuuuuu"
        },
        "authToken": "bridge",
        "isWebim": 1,
        "userId": "7050598",
        "platform": 0,
        "route": "1",
        "webimConfig": {"skinIndex": 0, "skinType": 1},
        "siteId": "4375997",
        "online": "true",
        "authType": 4,
        "bid": "1605464373043759970",
        // "webRoot": "//p.qiao.baidu.com/cps2/"
    };
    e.config = n, e.siteConfig = t, e.startTime = +new Date, document.body.insertBefore(e, document.body.firstElement || null);
    var i = document.createElement("script");
    // i.src = "//sgoutong.baidu.com/embed/1489462977/asset/embed/pc_nb.js", i.setAttribute("charset", "UTF-8");
    var r = document.getElementsByTagName("head")[0] || document.body;
    r.insertBefore(i, r.firstElement || null)
}(this);