<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>cart</title>
<link href="css/cart.css" rel="stylesheet" type="text/css" />
  
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/Calculation.js"></script>


</head>

<body>
	<div style="height:152px;">
		<iframe width="100%" height="152" frameborder="0" scrolling="no" name="unify_nav" vspace="0" hspace="0" marginheight="0" marginwidth="0" src="head.jsp"> </iframe>
	</div>
<div class="gwc_l" style=" margin:auto;width:1100px;">
<s:form name = "cartsubmit" action="settlecart.action" method="post">
	<table cellpadding="0" cellspacing="0" class="gwc_tb1">
		<tr>
			<td class="tb1_td1"><input name='aselect' type='checkbox' value='' id="aall"  onclick="acli('selectcart')"></td>
			<td class="tb1_td1">全选</td>
			<td class="tb1_td3">商品</td>
			<td class="tb1_td4">商品信息</td>
			<td class="tb1_td5">数量</td>
			<td class="tb1_td6">单价</td>
			<td class="tb1_td6">总价</td>
			<td class="tb1_td7">操作</td>
		</tr>
	</table>
		   
	
	
	<s:iterator value="#request.cartlist" id="c">
	<table cellpadding="0" cellspacing="0" class="gwc_tb2">
		<tr>
			<td class="tb2_td1"><input type="checkbox" onchange="calculate('selectcart')" name="selectcart" value="<s:property value='#c.id'/>"></td>
			<td class="tb2_td2"><a href="#"><img src="<s:property value='#c.productinfo.picture'/>"/></a></td>
			<td class="tb2_td3"><a href="#"><s:property value="#c.productinfo.pname"/></a></td>
			<td class="tb1_td4"><s:property value="#c.productinfo.intro"/></td>
			<td class="tb1_td5">
				<input id="min1" name=""  onclick="reduce(<s:property value="#c.id"/>,<s:property value="#c.productinfo.sellprice"/>)" style=" width:20px; height:18px;border:1px solid #ccc;" type="button" value="-" />
				<input  name="cartnumber"  id = "<s:property value="#c.id"/>cartnumber"
  				value=<s:property value="#c.number"/> type="text"  style=" width:30px; text-align:center; border:1px solid #ccc;" />
				<input id="add1" name="" onclick="up(<s:property value="#c.id"/>,<s:property value="#c.productinfo.sellprice"/>)" style=" width:20px; height:18px;border:1px solid #ccc;" type="button" value="+" />
			</td>
			<td class="tb1_td6"><s:property value="#c.productinfo.sellprice"/></td>
			<td class="tb1_td6"><input type="number" style="border:0";  readonly="true" name="total" id = "<s:property value="#c.id"/>totalprice"
  				value=<s:property value="#c.number*#c.productinfo.sellprice"/> style="width: 40px"/></td>
			<td class="tb1_td7"><a href="cartdelete.action?deleteid=<s:property value="#c.id"/>" 
				 >删除</a></td>
		</tr>
	</table>
	</s:iterator>
	
	<table cellpadding="0" cellspacing="0" class="gwc_tb3">
		<tr>
			<td class="tb1_td1"><input name='select' type='checkbox' value='' id="all"  onclick="cli('selectcart')"></td>
			<td class="tb1_td1">全选</td>
			<td class="tb3_td1">
				<input name='select' type='checkbox' value='' id="non"  onclick="ncli('selectcart')"  />反选
			</td>
			<td class="tb3_td2">已选商品 <label id="shuliang" style="color:#ff5500;font-size:14px; font-weight:bold;">0</label> 件</td>
			<td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;"><label id="zong" style="color:#ff5500;font-size:14px; font-weight:bold;"></label></span></td>
			<td class="tb3_td4"><a href="#" onclick = "mySubmit()" style=" display:block;"  class="jz2" id="jz2">结算</a></td>
		</tr>
	</table>
</s:form>
</div>

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

function calculate(Obj){
var coll = document.getElementsByName(Obj);
var num=0;
var t=0;
 for(var i = 0; i < coll.length; i++){
       if(coll[i].checked){
       num += 1;
       t += Number(document.getElementById(coll[i].value+"totalprice").value);
       }
  }
  $("#shuliang").text(num);
  $("#zong").text(t);
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
  calculate(Obj);
  }
  function   acli(Obj)
  {
  var collid = document.getElementById("aall")
  var coll = document.getElementsByName(Obj)
  if (collid.checked){
     for(var i = 0; i < coll.length; i++)
       coll[i].checked = true;
  }else{
     for(var i = 0; i < coll.length; i++)
       coll[i].checked = false;
  }
  calculate(Obj);
  }
  
  function   ncli(Obj)
  {
  var collid = document.getElementById("non")
  var coll = document.getElementsByName(Obj)
  if (collid.checked){
     for(var i = 0; i < coll.length; i++)
       coll[i].checked = !coll[i].checked;
  }else{
     for(var i = 0; i < coll.length; i++)
       coll[i].checked = !coll[i].checked;
  }
  calculate(Obj);
  }
  </script>
<script type="text/javascript">
function mySubmit(){
document.cartsubmit.submit();//表单提交action="register.jsp"
}
</script>
</body>
</html>