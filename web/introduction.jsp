<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>介绍</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>


</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="70%" height="150" scrolling="no"></iframe>


<table width="70%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td><form action="DoctorAction?method=select" method="post" name="form1" onSubmit="return checkuser()">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
    <tr>
    
      <td align="center"><h4></h4></td>
    </tr>
    
    <tr>
      <td class="inputHeader">
	   <table width="100%" border="0" cellpadding="0" cellspacing="1" class="inputbox">
	   <tr>
            <th width="25%" align="center" class="inputHeader">医生名称：</th>
            <td width="23%" align="left" class="inputContent">${doctorList.name}</td>
          </tr>
	   <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>                
          </tr>
          <tr>
            <th width="25%" align="center" class="inputHeader">类型：</th>
            <td width="23%" align="left" class="inputContent">${doctorList.type}</td>
          </tr>
            <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="left" class="inputContent"></td>                
          </tr>
             <tr>
            <th width="25%" align="center" class="inputHeader">联系方式：</th>
            <td width="23%" align="left" class="inputContent">${doctorList.phone}</td>
          </tr>
          <tr>
            <td width="25%" align="center" class="inputHeader"></td>
            <td width="23%" align="center" class="inputContent"></td>                
          </tr>
             <tr>
            <th width="25%" align="center" class="inputHeader">简介：</th>
            <td width="23%" align="left" class="inputContent">${doctorList.introduction }</td>
          </tr>

        </table>
        
	  </td>
    </tr>
   
  </table>
  </form>  
</td>
</tr>
</table>
</body>
</html>
