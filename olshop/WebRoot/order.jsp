<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>order</title>
<link href="css/cart.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div style="height:152px;">
		<iframe width="100%" height="152" frameborder="0" scrolling="no" name="unify_nav" vspace="0" hspace="0" marginheight="0" marginwidth="0" src="head.jsp"> </iframe>
	</div>
<div class="gwc" style=" margin:auto;">
	<table cellpadding="0" cellspacing="0" class="gwc_tb1">
		<tr>
			<td class="tb1_td3">商品</td>
			<td class="tb1_td5">数量</td>
			<td class="tb1_td6">单价</td>
			<td class="tb1_td6">总价</td>
			<td class="tb1_td4">配送方式</td>
			<td class="tb1_td4">创建日期</td>
			<td class="tb1_td4">状态</td>
			<td class="tb1_td4">操作</td>
		</tr>
	</table>
	<s:iterator value="#request.orderlist" id="o">
	<table cellpadding="0" cellspacing="0" class="gwc_tb2">
		<tr>
			<td class="tb2_td2"><a href="#"><img src="<s:property value='#o.productinfo.picture'/>"/></a></td>
			<td class="tb2_td3"><a href="#"><s:property value="#o.productinfo.pname"/></a></td>
			<td class="tb1_td5">
				<s:property value="#o.number"/>
			</td>
			<td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;"><s:property value="#o.productinfo.sellprice"/></label></td>
			<td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;"><s:property value="#o.number*#o.productinfo.sellprice"/></label></td>
			<td class="tb1_td4"><s:if test = '%{#o.transport == "0"}'>
  					普通快递
  				</s:if>
  				<s:if test = '%{#o.transport == "1"}'>
  					EMS次日达
  				</s:if></td>
			<td class="tb1_td4"><s:property value="#o.orderdate"/></td>
			<td class="tb1_td4"><s:if test = '%{#o.status == "0"}'>
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
  				</s:if></td>
  				<td class="tb1_td4"><a href="orderdelete.action?deleteid=<s:property value="#o.id"/>" 
				 >删除</a></td>
		</tr>
	</table>
    </s:iterator>
</div>
</body>
</html>