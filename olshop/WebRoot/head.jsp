<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/header.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/search.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
</head>

<body>
	<div class="hd_global_top_bar" id="global_top_bar">
    	<div class="wrap">
        	
            <s:if test='%{#session.userlogininfo!= null}'>
				 <div class="wrap_right">
            	<ul class="clearfix">  
            	<!-- <li>
            	<p>
            	hello! <s:property value="#session.userlogininfo.username"/>
            	</p>
            	</li> -->
            	 <li class="hd_menu_tit" id="order">
                	<a class="hd_menu" target="_blank" href="myinfo.jsp">你好：<s:property value="#session.userlogininfo.username"/></a>   
                </li>
                <li class="hd_menu_tit" id="order">
                	<a class="hd_menu" target="_blank" href="myorder.action">我的订单</a>   
                </li>
                <li class="hd_menu_tit" id="favorite">
                	<a class="hd_menu" target="_blank" href="myinfo.jsp">个人信息</a>   
                </li>
                <li class="hd_menu_tit" id="trolley">
                	<a class="hd_menu" target="_blank" href="cartview.action">我的收藏夹</a>   
                </li>
                <li class="hd_menu_tit" id="logout">
                	<a class="hd_menu" target="_blank" href="logout.action">注销</a>   
                </li>
                </ul>
            </div>			
			</s:if>
			<s:else>
			<div class="wrap_right">
			<a class="hd_weixin hd_menu_tit" id="login" href="login.jsp" target="_blank"><img src="image/denglu.gif"/></a>
            <a class="hd_weixin hd_menu_tit" id="login" href="register.jsp" target="_blank"><img src="image/zhuce.gif"/></a>
            </div>
            </s:else>
           
    	</div>
    </div>
	<div class="w">
    	<div id="logo-2014">
  	  		<a href="hotproduct.action" target="_top" class="logo">京东</a>
    	</div>
    	<div id="search-2014">
    		<ul style="display: none;" id="shelper" class="hide"></ul>
			<div class="form">
			<s:form action="search.action" method="post" target="_top">
				<input name="searchproname" style="color: rgb(153, 153, 153);" onkeydown="javascript:if(event.keyCode==13) search('key');" autocomplete="off" id="key" accesskey="s" class="text" type="text"></input>
				<button type="submit" clstag="h|keycount|2015|03c"  class="button cw-icon"><i></i>搜索</button>
			</s:form>
			</div>
    	</div>
    	 <s:if test='%{#session.userlogininfo!= null}'>
    	<div id="settleup-2014" class="dorpdown">
			<div class="cw-icon">
				<i class="ci-left"></i>
				<i class="ci-right">&gt;</i><i class="ci-count" id="shopping-amount"><s:property value="#session.cartnumber"/></i>
				<a target="_blank" href="cartview.action">我的购物车</a>
			</div>
		</div>
		</s:if>
    	<div id="hotwords-2014"></div>
    	<span class="clr"></span>
	</div>
</body>
</html>