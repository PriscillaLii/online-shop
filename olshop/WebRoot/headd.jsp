<%@page pageEncoding="GBK" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<style type="text/css">
<!--
.menu {
	font-family: "方正舒体";
	font-size: 9pt;
	background-color: #0000C6;
	border: 1px solid #FFFFFF;
	color: #CCCCCC;
}
#header a:link {
	font-family: "宋体";
	font-size: 9pt;
	color: #CCCCCC;
}
#header a:visited {
	font-family: "宋体";
	font-size: 9pt;
	color: #CCCCCC;
}
#header a:hover {
	font-family: "宋体";
	font-size: 9pt;
	color: #FFFFFF;
}
#header a:active {
	font-family: "宋体";
	font-size: 9pt;
	color: #FFFFFF;
}
-->
</style>
<div align="center">
	<table width="650" border="0" cellspacing="0" cellpadding="0" id="header">
		<!--表格的这一行是一幅图片-->
		<tr >
			<td>
				<img src="image/picName2.png">
				hello! <s:property value="#session.userlogininfo.username"/>
		</td>
		</tr>
		<tr>
			<td>
				<table width="1000" border="0" cellspacing="0" cellpadding="0" class="text">
					<tr>
						<!--“首页”链接-->
						<td width="140" align="center" class="menu">
							<a href="main.jsp">首页</a>
						</td>
						<td width="140" align="center" class="menu">
								<a href="productview.action">查看商品</a>
							</td>
							<!--“购物车”链接-->
							<td width="140" align="center" class="menu">
							<s:if test='%{#session.userlogininfo!= null}'>
								<a href="cartview.action">购物车</a>
							</s:if>
							</td>
							<!--“我的订单”链接-->
							<td width="140" align="center" class="menu">
							<s:if test='%{#session.userlogininfo!= null}'>
								<a href="myorder.action">我的订单</a>
							</s:if>
							</td>
						<td width="140" align="center" class="menu">
						<s:if test='%{#session.userlogininfo!= null}'>
							
						<s:if test='%{#session.userlogininfo.power == "admin"}'>
							<a href="minfo.action">商品管理</a>
						</s:if>
						<s:else >
							<a href="myinfo.jsp">个人信息</a>
						</s:else>	
						</s:if>
						<s:else>	
						<a href="register.jsp">注册</a>
						</s:else>					
						</td>
							<!--“注销”链接-->
							<td width="140" align="center" class="menu">
							<s:if test='%{#session.userlogininfo!= null}'>
								<a href="logout.action">注销</a>
							</s:if>
							<s:else>
							<a href="login.jsp">登录</a>
							</s:else>
							</td>
					<!-- <td class="menu">&nbsp;
							
						</td>-->
					</tr>
				</table>
			</td>
		</tr>
	</table>
	