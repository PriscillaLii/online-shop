<%@page pageEncoding="GBK" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<style type="text/css">
<!--
.menu {
	font-family: "��������";
	font-size: 9pt;
	background-color: #0000C6;
	border: 1px solid #FFFFFF;
	color: #CCCCCC;
}
#header a:link {
	font-family: "����";
	font-size: 9pt;
	color: #CCCCCC;
}
#header a:visited {
	font-family: "����";
	font-size: 9pt;
	color: #CCCCCC;
}
#header a:hover {
	font-family: "����";
	font-size: 9pt;
	color: #FFFFFF;
}
#header a:active {
	font-family: "����";
	font-size: 9pt;
	color: #FFFFFF;
}
-->
</style>
<div align="center">
	<table width="650" border="0" cellspacing="0" cellpadding="0" id="header">
		<!--������һ����һ��ͼƬ-->
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
						<!--����ҳ������-->
						<td width="140" align="center" class="menu">
							<a href="main.jsp">��ҳ</a>
						</td>
						<td width="140" align="center" class="menu">
								<a href="productview.action">�鿴��Ʒ</a>
							</td>
							<!--�����ﳵ������-->
							<td width="140" align="center" class="menu">
							<s:if test='%{#session.userlogininfo!= null}'>
								<a href="cartview.action">���ﳵ</a>
							</s:if>
							</td>
							<!--���ҵĶ���������-->
							<td width="140" align="center" class="menu">
							<s:if test='%{#session.userlogininfo!= null}'>
								<a href="myorder.action">�ҵĶ���</a>
							</s:if>
							</td>
						<td width="140" align="center" class="menu">
						<s:if test='%{#session.userlogininfo!= null}'>
							
						<s:if test='%{#session.userlogininfo.power == "admin"}'>
							<a href="minfo.action">��Ʒ����</a>
						</s:if>
						<s:else >
							<a href="myinfo.jsp">������Ϣ</a>
						</s:else>	
						</s:if>
						<s:else>	
						<a href="register.jsp">ע��</a>
						</s:else>					
						</td>
							<!--��ע��������-->
							<td width="140" align="center" class="menu">
							<s:if test='%{#session.userlogininfo!= null}'>
								<a href="logout.action">ע��</a>
							</s:if>
							<s:else>
							<a href="login.jsp">��¼</a>
							</s:else>
							</td>
					<!-- <td class="menu">&nbsp;
							
						</td>-->
					</tr>
				</table>
			</td>
		</tr>
	</table>
	