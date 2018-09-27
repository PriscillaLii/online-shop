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
  
<table border="1">
<s:iterator value="#request.list" id="f" status="status" >
<s:if test="#status.index % 4 == 0">
<tr>
</s:if>
<td>
<table>
<tr>
<a href="productdetail.action?buypid=<s:property value="#f.pid"/>" 
				 >
<img src="<s:property value='#f.picture'/>" width="200"  height="200" alt="商品图片">
</a></br>
</tr>
<tr>
<td>
￥<s:property value='#f.sellprice'/>
</td>
<td>
销量：<s:property value='#f.sellcount'/>
</td>
</tr>
</table>

</td>
<s:if test="#status.index % 4 == 3 || #status.last">
</tr>
</s:if>
</s:iterator> 
</table>



</body>
</html>