<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fileview.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">	
	-->

  </head>
  
  <body>
    <%@include file="head.jsp"%>
  	<s:form action="register.action" method="post">
  	<table>
  	<s:set name="u" value="#session.userlogininfo"></s:set> 
    		<tr>
    		<td>
    		用户名:
    		</td>
    		<td>
    		<input type="text" name="reg.username"
  				value="<s:property value="#u.username"/>" style="width: 80px"/>
    		</td>
    		</tr>
    		<tr>
    		<td>
    		密码：
    		</td>
    		<td>
    		<input type="text" name="reg.pwd"
  				value="<s:property value="#u.pwd"/>" style="width: 80px"/>
    		</td>
    		</tr>
    		<tr>
    		<td>
    		电子邮箱：
    		</td>
    		<td>
    		<input type="text" name="reg.email"
  				value="<s:property value="#u.email"/>" style="width: 80px"/>
    		</td>
    		</tr>
    		<tr>
    		<td>
    		地址：
    		</td>
    		<td>
    		<input type="text" name="reg.address"
  				value="<s:property value="#u.address"/>" style="width: 400px"/>
    		</td>
    		</tr>
    		<tr>
    		<td>
    		邮政编码：
    		</td>
    		<td>
    		<input type="text" name="reg.postcode"
  				value="<s:property value="#u.postcode"/>" style="width: 80px"/>
    		</td>
    		</tr>
    		<tr>
    		<td>
    		手机号码：
    		</td>
    		<td>
    		<input type="text" name="reg.tel"
  				value="<s:property value="#u.tel"/>" style="width: 80px"/>
    		</td>
    		</tr>
   </table>
  	
  	<input type="submit"  style=padding-right: 12px" value="注册">
  	</s:form>
  	
  </body>
</html>
