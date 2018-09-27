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
  	<s:form action="submitOrder.action" method="post">
  	请输入您的订单信息：
  	<table>
  	<s:set name="u" value="#session.userlogininfo"></s:set> 
    		<tr>
    		<td>
    		收货地址：
    		</td>
    		<td>
    		<input type="text" name="ord.address"
  				value="<s:property value="#u.address"/>" style="width: 400px"/>
    		</td>
    		</tr>
    		<tr>
    		<td>
    		邮政编码：
    		</td>
    		<td>
    		<input type="text" name="ord.postcode"
  				value="<s:property value="#u.postcode"/>" style="width: 80px"/>
    		</td>
    		</tr>
    		<tr>
    		<td>
    		收件人：
    		</td>
    		<td>
    		<input type="text" name="ord.recipients"
  				value="<s:property value="#u.username"/>" style="width: 80px"/>
    		</td>
    		</tr>
    		<tr>
    		<td>
    		手机号码：
    		</td>
    		<td>
    		<input type="text" name="ord.tel"
  				value="<s:property value="#u.tel"/>" style="width: 80px"/>
    		</td>
    		</tr>
    </table>
    <table width="1000" border="1">
  		<caption>订单信息</caption>
  		<tr>
  			<th>商品信息</th><th  aligin="center">数量</th><th>单价</th><th>总价</th>
  		</tr>
  		<s:set var ="total" value="0" />
  		<s:iterator value="#session.selectcartlist" id="c">
  			<tr>
  				<td aligin="center">
  				<img src="<s:property value='#c.productinfo.picture'/>" width="100"  alt="商品图片">
  				商品名称：<s:property value="#c.productinfo.pname"/>
  				</td>
  	
  				<td aligin="center"><s:property value="#c.number"/></td>
  				<td aligin="center"><s:property value="#c.productinfo.sellprice"/></td>
  				<td aligin="center">
  				<p style="color:red;font-size:16px;">￥<s:property value="#c.number*#c.productinfo.sellprice"/></p>
  				
  				</td>
  			</tr>
  			<s:set var ="total" value="#c.number*#c.productinfo.sellprice+#total"/>
  		</s:iterator>
  	</table>
  	
  	<table>
  	<tr>
  	<td>
  	商品共计：
  	<p style="color:red;font-size:16px;">￥<s:property value="#total"/></p>
  	</td>
  	</tr>
  	<tr>
  	<td>
  	配送方式：
  	</td>
  	<td>
  	<input type="radio" name="ord.transport" value="0" checked="checked"/>普通快递：（运费￥10）<br />
  	<input type="radio" name="ord.transport" value="1" />次日达：（运费￥20）<br />
  	</td>
  	</tr>
  	<tr>
  	<td>
  	支付方式：
  	</td>
  	<td>
  	<input type="radio" name="ord.payway" value="0" checked="checked"/>支付宝<br />
  	<input type="radio" name="ord.payway" value="1" />微信支付<br />
  	<input type="radio" name="ord.payway" value="2" />网银支付<br />
  	</td>
  	</tr>
  	
  	</table>
  	
  	<input type="submit"  style=padding-right: 12px" value="提交订单">
  	</s:form>
  	
  	
  </body>
</html>
