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
    <table width="1000" border="1">
  		<caption>订单列表</caption>
  		<tr>
  			<th>订单号</th><th>商品信息</th><th>数量</th><th>金额</th><th>配送方式</th><th>创建日期</th><th>状态</th><th>操作</th>
  		</tr>
  		<s:iterator value="#request.orderlist" id="o">
  			<tr>
  				<td aligin="center"><s:property value="#o.id"/></td>
  				<td aligin="center">
  				<img src="<s:property value='#o.productinfo.picture'/>" width="100"  alt="商品图片">
  				商品名称：<s:property value="#o.productinfo.pname"/>
  				</td>
  				<td aligin="center"><s:property value="#o.number"/></td>
  				<td aligin="center"><s:property value="#o.number*#o.productinfo.sellprice"/></td>
  				<td aligin="center">
  				<s:if test = '%{#o.transport == "0"}'>
  					普通快递
  				</s:if>
  				<s:if test = '%{#o.transport == "1"}'>
  					EMS次日达
  				</s:if>
  				</td>
  				<td aligin="center"><s:property value="#o.orderdate"/></td>
  				<td aligin="center">
  				<s:if test = '%{#o.status == "0"}'>
  					等待付款
  				</s:if>
  				<s:if test = '%{#o.status == "1"}'>
  					已付款 </br>等待发货
  				</s:if>
  				<s:if test = '%{#o.status == "2"}'>
  					已发货
  				</s:if>
  				<s:if test = '%{#o.status == "4"}'>
  					交易成功</br><a href="cartdelete.action?deleteid=<s:property value="#o.id"/>" 
				 >评价</a>
  				</s:if>
  				</td>
  				<td aligin="center">
  					<a href="orderdelete.action?deleteid=<s:property value="#o.id"/>" 
				 >删除</a>
  				</td>
  			</tr>
  		</s:iterator>
  	</table>
  	
  </body>
</html>
