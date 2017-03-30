<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>预约挂号</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>
		<link href="components/calendar/skins/aqua/theme.css"
			rel="stylesheet" type="text/css">
		<script language="javascript" src="components/calendar/calendar.js">
</script>
		<script language="javascript"
			src="components/calendar/calendar-setup.js">
</script>
		<script language="javascript"
			src="components/calendar/lang/calendar-zh_CN.js">
</script>

</head>

<body>
<%--<iframe src="top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="70%" height="150" scrolling="no"></iframe>--%>
<center>

<table width="70%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td>
    <form action="ordersServlet?method=order" method="post" name="form1" onSubmit="return checkTime()">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
    <tr>

      <td align="center">预约信息确认</td>
    </tr>

    <tr>
      <td class="inputHeader">

	   <table width="100%" border="0" cellpadding="0" cellspacing="1" class="inputbox">
          <tr>
            <td width="25%" align="center" class="inputHeader">预约人：</td>
            <td width="23%" align="left" class="inputContent"><input type="text" name="tureName" value="<%=session.getAttribute("trueName") %>" readonly/></td>
          </tr>
         <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>
          </tr>
            <tr>
            <td width="25%" align="center" class="inputHeader">预约医生：</td>
            <td width="23%" align="left" class="inputContent">
                <input type="text" name="name" value="${list.name}" readonly/>
            </td>
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>
          </tr>
            <tr>
            <td width="25%" align="center" class="inputHeader">类型：</td>
            <td width="23%" align="left" class="inputContent"><input type="text" name="type" value="${list.type }" readonly/></td>
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>
          </tr>
            <tr>
            <td width="25%" align="center" class="inputHeader">时间：</td>
            <td width="23%" align="left" class="inputContent"><input type="Text"  name="time" >
                <img id="cal0" src="components/calendar/skins/aqua/cal.gif" border="0" alt="选择日期" style="cursor: pointer">
                <script language="JavaScript">
                    var cal0 = calendar("time", "cal0", "%Y-%m-%d");
                </script>
            </td>
          </tr>
           <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>
          </tr>
            <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="left" class="inputContent">
                <input type="submit" value="确认" />
                <input type="submit" value="取消" />
            </td>
          </tr>
        </table>

	  </td>
    </tr>

  </table>
  </form>
</td>
</tr>
</table>
</center>
</body>
</html>
