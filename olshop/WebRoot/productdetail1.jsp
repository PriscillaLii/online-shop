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
    <form onsubmit=" return check(<s:property value="#session.userlogininfo"/>);" action="productbuy.action" method="post">
    <table width="800" border="0">
  		<caption>商品详情</caption>
  		<tr>
  			<th>商品图片</th><th>商品信息</th>
  		</tr>
  		<s:iterator value="#request.detail" id="d">
  		<tr >
  			<td>
  			<img src="<s:property value='#d.picture'/>" width="400"  alt="商品图片">
  			</td>
  			<td>
  				商品名称：<s:property value="#d.pname"/></br>
  				市场价：<s:property value="#d.marketprice"/></br>
  				售价：<p style="color:red;font-size:16px;">￥<s:property value="#d.sellprice"/></p></br>
  				<button type="button" onclick="reduce(<s:property value="#d.sellprice"/>)">-</button>
  				<input type="number" name="buynumber" id = "buynumber"
  				value=1 style="width: 40px"/>
  				<button type="button" onclick="up(<s:property value="#d.sellprice"/>)">+</button>
  				<input type="number" style="border:0";  readonly="true" name="total" id = "totalprice"
  				value=<s:property value="#d.sellprice"/> style="color:#FF0000;" style="width: 40px"/></br>
  				<input type="hidden" name="buypid" value="<s:property value="#d.pid"/>">
  				<input type = "submit"  value="加入购物车">
  			</td>
  		</tr>
  		</s:iterator>
  	</table>
  	</form>
  	
  	<script>
function reduce(b)
{
x=document.getElementById("buynumber");  // 找到元素
if( Number(x.value) <= 1) 
alert("数量不能小于1");
else{
x.value = Number(x.value) - 1;
y=document.getElementById("totalprice");  // 找到元素
y.value = Number(y.value) - b;
}
}

function up(b)
{
x=document.getElementById("buynumber");  // 找到元素
if( Number(x.value) >= 999) 
alert("数量不能大于999");
else{
x.value = Number(x.value) + 1;
y=document.getElementById("totalprice");  // 找到元素
y.value = Number(y.value) + b;
}
}

function check(x){
if(x==null) {alert("请先登录");
window.location.href = "login.jsp";
return false;}
else return true;
}
</script>
  </body>
</html>
