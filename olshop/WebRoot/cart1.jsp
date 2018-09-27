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
   <div style="height:152px;">
		<iframe width="100%" height="152" frameborder="0" scrolling="no" name="unify_nav" vspace="0" hspace="0" marginheight="0" marginwidth="0" src="head.jsp"> </iframe>
</div>
  	<s:form action="settlecart.action" method="post">
  	<div align="center">
    <table width="1000" border="1">
  		<caption>购物车列表</caption>
  		<tr>
  			<th>商品信息</th><th  aligin="center">数量</th><th>单价</th><th>总价</th><th>操作</th>
  		</tr>
  		<s:iterator value="#request.cartlist" id="c">
  			<tr>
  				<td aligin="center">
  				<input type="checkbox" aligin="center" name="selectcart" value="<s:property value='#c.id'/>">
  				<img src="<s:property value='#c.productinfo.picture'/>" width="100"  alt="商品图片">
  				商品名称：<s:property value="#c.productinfo.pname"/>
  				</td>
  	
  				<td aligin="center">
  				<table border="0" aligin="center">
  				<tr>
  				<td>
  				<button type="button" onclick="reduce(<s:property value="#c.id"/>,<s:property value="#c.productinfo.sellprice"/>)">-</button>
				 </td>
				 <td>
				 <input type="number" name="cartnumber"  id = "<s:property value="#c.id"/>cartnumber"
  				value=<s:property value="#c.number"/> style="width: 40px"/>
  				</td>
  				<td>
  				<button type="button" onclick="up(<s:property value="#c.id"/>,<s:property value="#c.productinfo.sellprice"/>)">+</button>
				 </td>
				 </tr>
				</table>
  				</td>
  				<td aligin="center"><s:property value="#c.productinfo.sellprice"/></td>
  				<td aligin="center">
  				<input type="number" style="border:0";  readonly="true" name="total" id = "<s:property value="#c.id"/>totalprice"
  				value=<s:property value="#c.number*#c.productinfo.sellprice"/> style="width: 40px"/>
  				</td>
  				<td aligin="center">
  					<a href="cartdelete.action?deleteid=<s:property value="#c.id"/>" 
				 >删除</a>
  				</td>
  			</tr>
  		</s:iterator>
  	</table>
  	</div>
  	<input name='select' type='checkbox' value='' id="all"  onclick="cli('selectcart')">  全选
  	<input type="submit"  style=padding-right: 12px" value="结算购物车">
  	</s:form>
  	
  	<script>
function reduce(a,b)
{
x=document.getElementById(a+"cartnumber");  // 找到元素
if( Number(x.value) <= 1) 
alert("数量不能小于1");
else{
x.value = Number(x.value) - 1;
y=document.getElementById(a+"totalprice");  // 找到元素
y.value = Number(y.value) - b;
}
}

function up(a,b)
{
x=document.getElementById(a+"cartnumber");  // 找到元素
if( Number(x.value) >= 999) 
alert("数量不能大于999");
else{
x.value = Number(x.value) + 1;
y=document.getElementById(a+"totalprice");  // 找到元素
y.value = Number(y.value) + b;
}
}
</script>

<script type='text/javascript'>
  function   cli(Obj)
  {
  var collid = document.getElementById("all")
  var coll = document.getElementsByName(Obj)
  if (collid.checked){
     for(var i = 0; i < coll.length; i++)
       coll[i].checked = true;
  }else{
     for(var i = 0; i < coll.length; i++)
       coll[i].checked = false;
  }
  }
  </script>

  	
  </body>
</html>
