<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>医生</title>
<link rel="stylesheet" href="doctors.css" type="text/css">
<link rel="stylesheet" href="../css/template1.css" type="text/css">
<link rel="stylesheet" href="../css/main.css"/>
<script type="text/javascript" src="../js/jquery.js"></script>
    <%--<link href="../css/style.css" rel="stylesheet" type="text/css">--%>
    <script language="javascript" src="../js/checkform.js"></script>

    <style type="text/css">
        .href1 {
            text-decoration: none;
            color: white;
        }
    </style>
</head>



<body>
<!-- 登录/注册栏-->
<div class="denlu">

    <p>
        <a href="#">您好:${sessionScope.trueName}</a>|<a href="#">注册</a>&nbsp;&nbsp;&nbsp; 联系我们 &nbsp;&nbsp;&nbsp;&nbsp; 加入收藏
        <a href="../ordersServlet?method=orderList" target="_parent">个人挂号信息
    </p>
</div>
<!--标题栏-->
<div class="biaoti">
    <div class="logo">
      <img src="../img/logo_06.png">
    </div>
    <div class="tel">
    <img src="../img/phone_09.png">
    </div>
</div>
<!-- 导航栏-->
<div class="nav">
	<!--导航条-->
	<ul class="nav-main">
        <li><a style=" text-decoration: none;
            color: white;" href="../shouye.jsp">首页</a></li>
		<li id="li-1">准妈妈 </li>
		<li id="li-2">妈咪佳人<span></span></li>
		<li id="li-3">孕妈用品<span></span></li>
		<li id="li-4" ><p style="color:rgb(255,255,255)">宝贝用品</p></li>
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
			<li><a href="html/Mental.html"><p style="color:rgb(235,109,160)">心理咨询</p></a></li>
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
<script type="text/javascript" src="../js/main.js"></script>
<!--banner图-->
<div class="banner">

    <div class="order">

        <center>

            <table width="70%" border="0" cellpadding="10" cellspacing="0" class="main">
                <tr valign="top">
                    <td><form action="doctorServlet?method=doctorShow" method="post" name="form1" onSubmit="return checkuser()">
                        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
                            <tr>

                                <%--<td align="center"><font color="red">(*输入医生姓名或者类型*)</font>--%>
                                    <%--<input type="text" name="info"/>--%>
                                    <%--<input type="submit" value="查询">&nbsp;&nbsp;&nbsp;--%>
                                    <td>

                                        <a href="../doctorServlet?method=doctorShow">全部医生信息</a>
                                    </td>
                                <%--</td>--%>
                            </tr>

                            <tr>
                                <td class="inputHeader">
                                    <table width="100%" border="1" cellpadding="10" cellspacing="0" class="inputbox">
                                        <tr>
                                            <td width="25%" align="center" class="inputHeader">医生姓名</td>
                                            <td width="23%" align="center" class="inputContent">类型</td>
                                            <td width="25%" align="center" class="inputContent">操作</td>
                                        </tr>
                                        <c:forEach items="${doctorList}" var="list">
                                            <tr>
                                                <td width="25%" align="center" class="inputHeader">
                                                    <a href="doctorServlet?method=info&id=${list.id}" target="_blank">${list.name }</a>
                                                </td>
                                                <td width="23%" align="center" class="inputContent">${list.type}</td>
                                                <td width="25%" align="center" class="inputContent"><a href="../doctorServlet?method=order&id=${list.id}">预约</a></td>
                                            </tr>
                                        </c:forEach>
                                    </table>

                                </td>
                            </tr>

                        </table>
                    </form>
                    </td>
                </tr>
            </table>

        </center>
    </div>

   <div class="Rdaohang">
       <div class="Rdaohang1"><a  rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2439145710&amp;site=qq&amp;menu=yes"><img src="../img/4.png"></a></div>
       <div class="Rdaohang1"><a href="#"><img src="../img/2.png"></a></div>
       <div class="Rdaohang1"><a href="#"><img src="../img/1.png"></a></div>
       <div class="Rdaohang1"><a href="#"><img src="../img/3.png"></a></div>
    </div>

    <script id="longlian_service_tmpl" type="text/x-jquery-tmpl">
	<!--{{if service != null}}-->
		<!--{{each(i, svc) service}}-->
		<!--<li><a target="_blank" rel="nofollow" href="http://wpa.qq.com/msgrd?v=3&uin=${svc.ServiceAccount}&site=qq&menu=yes">${svc.ServiceName}-->
		<!--</a></li>-->
	<!--{{/each}}-->
	<!--{{/if}}-->
</script>
 </div>
 
 <%

 %>
<!--中间-->
  <!--第一层-->
<div class="zhongj1">
     <div class="cendent">
     <!--左边图片-->
         <div class="Lcen">
             <div class="Rdaohang1"><a href="#"><img src="../img/jiant2_03.png"></a></div>
             <div class="Rdaohang1"><a href="#"><img src="../img/hospital1_32.png"></a></div>
             <div class="Rdaohang1"><a href="#"><img src="../img/hospital2_39.png"></a></div>
             <div class="Rdaohang1"><a href="#"><img src="../img/hospital3_43.png"></a></div>
             <div class="Rdaohang1"><a href="#"><img src="../img/hospital4_53.png"></a></div>
             <div class="Rdaohang1"><a href="#"><img src="../img/hospital5_49.png"></a></div>
             <div class="Rdaohang1"><a href="#"><img src="../img/hospital6_46.png"></a></div>
             <div class="Rdaohang1"><a href="#"><img src="../img/jiant1_03.png"></a></div>
         </div>
         <!--右边-->
         <div class="Rcen">
         <!--上边标题-->
             <div class="Rcentop">
                  <div class="gsL"><img src="../img/gongsi_03.png" />
                  </div>
                  <div class="gsR"><a href="#"><img src="../img/xiangq_06.png" /></a>
                  </div>
             </div>
             <div ><img src="../img/gsxian_06.png" /></div>
             <!--下边文字和图片-->
             <div class="Rcenbott">
                 <img src="../img/yiyuanjieshao_10.png" />
             </div>
         </div>
     </div>
     </div>
     <!--第二层-->
 
      <div class="zhongj2">
      <div class="biao">
      <table width="200" border="0">
  <tr>
    <td height="88" colspan="7"><div class="Ttudui"><p class="Ttud">我们的专家团队</p></div></td>
    </tr>
  <tr>
    <td><a href="#"><img src="../img/boult3_69.png" width="37" height="40"></a></td>
    <td><img src="../img/doctor1_59.png" width="197" height="285"></td>
    <td><img src="../img/doctor2_61.png" width="196" height="285"></td>
    <td><img src="../img/doctor3_63.png" width="199" height="285"></td>
    <td><img src="../img/doctor4_65.png" width="198" height="285"></td>
    <td><img src="../img/doctor5_67.png" width="199" height="285"></td>
    <td><a href="#"><img src="../img/boult4_71.png" width="38" height="40"></a></td>
  </tr>
  <tr>
    <td height="92">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><a href="#"><img src="../img/check_81.png" width="154" height="37"></a></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
</table>
</div>
</div>

      
      

 <!--第三部分-->
 <div id="zhongj3">
     <div class="huanj">
         <div class="huanTop">
             <div class="zitu">
                 <img src="../img/huanjzi_03.png" />
             </div>
             <div class="xiangq">
                 <a href="#"><img src="../img/xiangq_06.png" /></a>
             </div>
         </div>
         <div class="xian">
             <img src="../img/huanjxian_03.png" />
         </div>
         <div class="huanBott">
            <table width="1000" border="0">
  <tr>
    <td width="243"><img src="../img/huanj1_12.png" width="230" height="199" /></td>
    <td width="248"><img src="../img/huanj2_10.png" width="235" height="198" /></td>
    <td width="247"><img src="../img/huanj3_08.png" width="235" height="199" /></td>
    <td width="234"><img src="../img/huanj4_06.png" width="234" height="199" /></td>
  </tr>
</table>

         </div>
     </div>
     
</div>
 </div>
 

 
   <div id="footer">
    <div class="footer_top">
        <div class="light">
        <div class="erweim">
           <img src="../img/erweim_85.png" />
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
               <li><a href="#"><img src="../img/ico1_92.png" /></a></li>
               <li><a href="#"><img src="../img/ico2_102.png" /></a></li>
               <li><a href="#"><img src="../img/ico3_100.png" /></a></li>
               <li><a href="#"><img src="../img/ico4_98.png"/></a></li>
               <li><a href="#"><img src="../img/ico5_96.png" /></a></li>
               <li><a href="#"><img src="../img/ico6_94.png" /></a></li>
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
                     <li><a href="#">安康中医医院</a>&nbsp;&nbsp;</li><br>
                     <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">安康贝尔月子会所</a>&nbsp;&nbsp;</li>
                     <li><a href="#">安康产后恢复中心</a>&nbsp;&nbsp;</li>
                     <li><a href="#">安康产后恢复中心</a>&nbsp;&nbsp;</li>
                  </ul>
               </div>
    </div>
    </div>
</body>
</html>
