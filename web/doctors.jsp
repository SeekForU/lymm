<%--
  Created by IntelliJ IDEA.
  User: Seek
  Date: 2017/3/28
  Time: 12:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <script language="javascript" src="js/checkform.js"></script>
</head>

<body>
<iframe src="top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="70%" height="150" scrolling="no"></iframe>

<center>

<table width="70%" border="0" cellpadding="0" cellspacing="0" class="main">
    <tr valign="top">
        <td><form action="doctorServlet?method=doctorShow" method="post" name="form1" onSubmit="return checkuser()">
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
                <tr>

                    <td align="center"><font color="red">(*输入医生姓名或者类型*)</font>
                        <input type="text" name="info"/>
                        <input type="submit" value="查询">&nbsp;&nbsp;&nbsp;
                        <a href="doctorServlet?method=doctorShow">全部医生信息</a>
                    </td>
                </tr>

                <tr>
                    <td class="inputHeader">
                        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="inputbox">
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
                                    <td width="25%" align="center" class="inputContent"><a href="doctorServlet?method=order&id=${list.id}">预约</a></td>
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
</body>
</html>
