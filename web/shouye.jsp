<%--
  Created by IntelliJ IDEA.
  User: Seek
  Date: 2017/3/9
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>乐孕妈妈</title>
    <script type="text/javascript">
      function doLogout(){
        //访问LogoutServlet注销当前登录的用户
        window.location.href="${pageContext.request.contextPath}/servlet/LogoutServlet";
      }
    </script>
    <link rel="stylesheet" href="css/template2.css" type="text/css">
    <link rel="stylesheet" href="css/shouye.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <script type="text/javascript" src="js/jquery.js"></script> <script type="text/javascript">
    function doLogout(){
      //访问LogoutServlet注销当前登录的用户
      window.location.href="${pageContext.request.contextPath}/servlet/LogoutServlet";
    }
  </script>
    <link rel="stylesheet" href="css/template2.css" type="text/css">
    <link rel="stylesheet" href="css/shouye.css" type="text/css">
    <link rel="stylesheet" href="css/main.css" type="text/css">
    <script type="text/javascript" src="js/jquery.js"></script>
  </head>

  <body>
  <!-- 登录/注册栏-->
  <div class="denlu">
    <ul>
      <li>
        <c:if test="${user==null}">
          <a href="html/login.html">
            您好:${sessionScope.trueName}
          </a>
          <%--   <a href="${pageContext.request.contextPath}/servlet/LoginUIServlet">登录</a>
            <a href="${pageContext.request.contextPath}/servlet/RegisterUIServlet">注册</a> --%>
        </c:if>

      </li>

      <li>联系我们</li>
      <li>加入收藏</li>
    </ul>
  </div>
  <!--标题栏-->
  <div class="biaoti">
    <div class="logo">
      <img src="img/logo.png">
    </div>
    <div class="tel">
      <img src="img/rexian.png">
    </div>
  </div>
  <!-- 导航栏-->
  <div class="nav">
    <!--导航条-->
    <ul class="nav-main">
      <li>首页</li>
      <li id="li-1">准妈妈 </li>
      <li id="li-2">妈咪佳人<span></span></li>
      <li id="li-3">孕妈用品<span></span></li>
      <li id="li-4" >宝贝用品<span></span></li>
      <li>妈妈论坛 </li>
    </ul>
    <!--隐藏盒子-->
    <div id="box-1" class="hidden-box hidden-loc-index">
      <ul>
        <li>预约挂号</li>
        <li>专车服务 </li>
        <li>营养咨询</li>
        <li>产前锻炼</li>
      </ul>
    </div>
    <div id="box-2" class="hidden-box hidden-loc-us">
      <ul>
        <li>产后恢复 </li>
        <li>月嫂中心 </li>
        <li>心理咨询</li>
        <li>饮食调理 </li>
      </ul>
    </div>
    <div id="box-3" class="hidden-box hidden-loc-info">
      <ul>
        <li>孕妈服饰</li>
        <li>孕妈美妆</li>
        <li>产后恢复</li>
        <li>母乳喂养</li>
      </ul>
    </div>
    <div id="box-4" class="hidden-box hidden-loc-info box04">
      <ul>
        <li>宝宝服饰</li>
        <li>玩具</li>
        <li>早教产品</li>
      </ul>
    </div>
  </div>

  <script type="text/javascript" src="js/main.js"></script>
  <!--banner图-->
  <div class="banner">
    <div class="Rdaohang">
      <div class="Rdaohang1"><a  rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2439145710&amp;site=qq&amp;menu=yes"><img src="img/4.png"></a></div>
      <div class="Rdaohang1"><a href="#"><img src="img/2.png"></a></div>
      <div class="Rdaohang1"><a href="#"><img src="img/1.png"></a></div>
      <div class="Rdaohang1"><a href="#"><img src="img/3.png"></a></div>
    </div>

    <script id="longlian_service_tmpl" type="text/x-jquery-tmpl">
	{{if service != null}}
		{{each(i, svc) service}}
		<li><a target="_blank" rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&uin=${svc.ServiceAccount}&site=qq&menu=yes">${svc.ServiceName}
		</a></li>
	{{/each}}
	{{/if}}
</script>
    <div class="bannerC">
      <div class="bannerCL">
        <div class="bannerCLT"><img src="img/shouye_banner_center.png"></div>
        <div class="bannerCLB"><p class="bannerCLB_zi">用最贴心的服务温暖宝宝和妈妈</p></div>
      </div>
      <div class="bannerCR">
        <div class="bannerCR1"><div class="bannerCR11"><img src="img/zhuanchejiesong.png"></div>
          <%--<div class="bannerCR11"><a href="html/hosptial.html"><img src="img/yuyueguahao.png"></a></div></div>--%>
          <%--原始版本--%>
          <%--<div class="bannerCR11"><a href="doctors.jsp"><img src="img/yuyueguahao.png"></a></div></div>--%>
          <%--新版本--%>
          <div class="bannerCR11"><a href="pages/doctor.jsp"><img src="img/yuyueguahao.png"></a></div></div>
        <div class="bannerCR2"><div class="bannerCR11"><a href="html/Mental.html"><img src="img/chanqianduanlian.png"></a></div><div class="bannerCR11"><a href="html/chanhouhuifu.html"><img src="img/chanhouhuifu.png"></a></div></div>
        <div class="bannerCR2"><div class="bannerCR11"><a href="html/yuesao.html"><img src="img/jinpaiyuesao.png"></a></div><div class="bannerCR11"><a href="html/muyingyongpin.html"><img src="img/yingerzaojiao.png"></a></div></div>

      </div>
    </div>
  </div>
  <!--营养资讯以及胎教快报和下面的字-->
  <div class="zixun">
    <div class="zixunC">
      <div class="zixunCL">营养资讯
        <div class="zixunCLR"><img src="img/gengduo.png"></div>
      </div>
      <div class="zixunCR">胎教快报
        <div class="zixunCLR"><img src="img/gengduo.png"></div>
      </div>
    </div>
    <div class="zixunCBL"><img src="img/zixun_line.png"></div>
  </div>
  <!--营养资讯以及胎教快报的内容-->
  <div class="zongti">
    <div class="zongtiC">
      <div class="zongtiCL">
        <div class="zongtiCL1"><div class="zongtiCL1L"><h3>孕期饮食的22大注意事项</h3><p><a href="#">孕期摄入的食物品种应强调多样化，孕妇机体代谢加速，糖分利用增加，热量需要比孕早期明显增加，需要补充多种营养元素，例如蛋白质、维生素、钙、铁、碘等。同时要根据不同的孕期状况进行膳食调整。</a></p></div><div class="zongtiCL1R"><img src="img/lingshi.png"></div></div>
        <div class="zongtiCL2"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">孕初期缓解准妈孕吐食谱做法  孕早期大多数妈妈都要经历难...</a></div></div>
        <div class="zongtiCL2B"><img src="img/jiange_line.png"></div>
        <div class="zongtiCL2"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">孕期准妈妈缓解感冒的食疗做法   感冒后，一方面孕妈不敢吃药...</a></div> </div>
        <div class="zongtiCL2B"><img src="img/jiange_line.png"></div>
        <div class="zongtiCL2"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">让准妈手脚不冰冷的营养食谱  手脚冰冷可能是因为造血不足...</a></div></div>
        <div class="zongtiCL2B"><img src="img/jiange_line.png"></div>
        <div class="zongtiCL2"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">孕期准妈妈补钙的家常菜做法  孕妈补钙可以摄取奶及奶制品...</a></div></div>
        <div class="zongtiCL2B"><img src="img/jiange_line.png"></div>
      </div>

      <div class="zongtiCR">

        <div class="zongtiCR1R"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">孕期胎教  孕妈要告别四种心理</a></div></div>
        <div class="zongtiCL2B1"><img src=" img/taijiao_line.png"></div>
        <div class="zongtiCR1R"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">最in的三种胎教大PK 哪个是你的菜？</a></div></div>
        <div class="zongtiCL2B1"><img src="img/taijiao_line.png"></div>

        <div class="zongtiCR1R"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">要想宝宝颜值高  孕妈坚持这样做</a></div></div>
        <div class="zongtiCL2B1"><img src="img/taijiao_line.png"></div>

        <div class="zongtiCR1R"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">最另类的音乐胎教方式</a></div></div>
        <div class="zongtiCL2B1"><img src="img/taijiao_line.png"></div>

        <div class="zongtiCR1R"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">胎教新法-对话语言胎教</a></div></div>
        <div class="zongtiCL2B1"><img src="img/taijiao_line.png"></div>

        <div class="zongtiCR1R"><div class="zongtiCL2L"><img src="img/3gedian.png" ></div><div><a href="#">胎教与胎儿的“思维路线”</a></div></div>
        <div class="zongtiCL2B1"><img src="img/taijiao_line.png"></div>
      </div>
    </div>
  </div>


  <div class="YueHuan">
    <div class="YueWen">
      <div class="YWleft">
        <img src="img/shouye_03.png" />
      </div>
      <div class="YUEright">
        <img src="img/detail_28.png" />
      </div>
    </div>
    <div class="YWxian">
      <img src="img/shouye_05.png" />
    </div>
    <div class="biao">
      <table width="1000" border="0">
        <tr>
          <td width="248"><a href="#"><img src="img/shouye_07.png" width="235" height="176" /></a></td>
          <td width="248"><a href="#"><img src="img/shouye_09.png" width="234" height="176" /></a></td>
          <td width="248"><a href="#"><img src="img/shouye_11.png" width="232" height="176" /></a></td>
          <td width="238"><a href="#"><img src="img/shouye_13.png" width="238" height="176" /></a></td>
        </tr>
        <tr>
          <td><p>内部环境</p></td>
          <td><p>修养客房</p></td>
          <td><p>产后修复中心</p></td>
          <td><p>会客</p></td>
        </tr>
      </table>
    </div>

  </div>

  <div class="zhongj4">
    <div class="table2">
      <table width="1000" border="0">
        <tr>
          <td width="460"><div><div class="Zleft"><img src="img/shouye_03 (2).png" width="175" height="79" /></div>
            <div class="Zright"><a href="#"><img src="img/xiangq_06.png" width="45" height="18" /></a></div>
          </div></td>
          <td width="35" rowspan="8">&nbsp;</td>
          <td width="491"><div><div class="Zleft"><img src="img/shouye_05 (2).png" width="147" height="79" /></div>
            <div class="Zright"><a href="#"><img src="img/xiangq_06.png" width="45" height="18" /></a></div>
          </td>
        </tr>
        <tr>
          <td><img src="img/shouye_07 (2).png" width="486" height="18" /></td>
          <td><img src="img/shouye_07 (2).png" width="480" height="18" />
          </td>
        </tr>
        <tr>
          <td height="43"><p><img src="img/shouye_13 (2).png" width="9" height="14" /><a href="#">坐月子期间洗澡要注意什么？</p>
            <img src="img/shouyex_16.png" width="487" height="6" />

          </td>
          <td rowspan="6">
            <h4>六六妈</h4>
            <p> 20多天一转眼就过去了，一转眼明天就回家了，浣云石朋友总跟我说月子是最难熬的，没想到这一个月在我赶来显得过的如此之快，这要感谢喜悦科学的月子方式，才让在保持心情愉快的同时又能很好的恢复身体</p>
            <p><img src="img/shouyex_16.png" width="487" height="14" /></p>
            <h4>小曼妈</h4><p>女儿取名叫小曼，是希望她一切都恰到好处，刚刚好，什么都诚心如意。出生以来就觉着这姑娘运气好，能遇上一群可爱、善良又勤劳的人，照顾她度过人生中的第一个月。原来以为月子会无聊到爆，没想到这20多天眨眼就过。沾女儿的光，遇见你小云阿姨，遇见莫医生。</p></td>
        </tr>
        <tr>
          <td height="43"><p><img src="img/shouye_13 (2).png" width="9" height="14" /><a href="#">坐月子期间可以下床活动吗？</a></p>
            <img src="img/shouyex_16.png" width="487" height="6" />
          </td>
        </tr>
        <tr>
          <td height="43"><p><img src="img/shouye_13 (2).png" width="9" height="14" /><a href="#">产妇坐月子生活上有什么要注意的？</a></p>
            <img src="img/shouyex_16.png" width="487" height="6" /></td>
        </tr>
        <tr>
          <td height="43"><p><img src="img/shouye_13 (2).png" width="9" height="14" /><a href="#">坐月子开空调要注意什么？</a></p>
            <img src="img/shouyex_16.png" width="487" height="6" />
          </td>
        </tr>
        <tr>
          <td height="43"><p><img src="img/shouye_13 (2).png" width="9" height="14" /><a href="#">新生儿出现这十五种情况，妈咪不必慌张</a></p>
            <img src="img/shouyex_16.png" width="487" height="6" />
          </td>
        </tr>
        <tr>
          <td height="43"><p><img src="img/shouye_13 (2).png" width="9" height="14" /><a href="#">秋季剖腹产和会阴侧切坐月子要注意什么？</a></p>
            <img src="img/shouyex_16.png" width="487" height="6" />
          </td>
        </tr>
      </table>
    </div>
  </div>

  <div id="footer">
    <div class="footer_top">
      <div class="light">
        <div class="erweim">
          <img src="img/erweim_85.png" />
        </div>
      </div>
      <div class="right">
        <div class="Rlight">
          <div class="wenzi">
            <div class="wenzi2">
              <a href="#">关于我们</a>
              <span class="shugang">|</span>
              <a href="#">联系我们</a>
              <span class="shugang">|</span>
              <a href="#">月子餐</a>
              <span class="shugang">|</span>
              <a href="#">孕妇产后修复</a>
              <span class="shugang">|</span>
              <a href="#">宝宝出生啦</a>
              <span class="shugang">|</span>
              <a href="#">最美妈妈</a>
              <span class="shugang">|</span>
              <a href="#">最美妈妈</a>
              <span class="shugang">|</span>
              <a href="#">最美妈妈</a>


            </div>
            <div class="wenzi1"><p>地址：陕西省安康市汉滨区安康大道中段</p></div>
            <div class="wenzi1"><p>24小时咨询电话：0915-4589235  咨询QQ：794589135</p></div>
          </div>
        </div>
        <div class="Rright">
          <div class="fenx">
            <ul>
              <li><a href="#">分享到：</a></li>
              <li><a href="#"><img src="img/ico2_102.png" /></a></li>
              <li><a href="#"><img src="img/ico1_92.png" /></a></li>
              <li><a href="#"><img src="img/ico3_100.png" /></a></li>
              <li><a href="#"><img src="img/ico4_98.png" /></a></li>
              <li><a href="#"><img src="img/ico5_96.png" /></a></li>
              <li><a href="#"><img src="img/ico6_94.png" /></a></li>
            </ul>
          </div>
        </div>
      </div>

    </div>

    <div class="footer_bottom">
      <div class="lianjie1">
        <ul>
          <li><a href="#">友情链接:</a></li>
          <li><a href="#">安康华西妇产医院</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康中医医院</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康贝尔月子会所</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康产后恢复中心</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康产后恢复中心</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康华西妇产医院</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康中医医院</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康贝尔月子会所</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康产后恢复中心</a>&nbsp;&nbsp;</li>
          <li><a href="#">安康产后恢复中心</a>&nbsp;&nbsp;</li>

        </ul>
      </div>
    </div>
  </div>

  </body>
</html>
