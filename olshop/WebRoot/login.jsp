<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login</title>
<link href="css/login.css" rel="stylesheet" type="text/css" media="all" />	
</head>
<body background-color: #FFF;>
	<div class="w">
    	<div id="logo">
        	<a href="http://www.jd.com/">
            	<img src="image/logo.png" alt="京东" height="60" width="170">
            </a>
            <b></b>
        </div>
	</div>
	<div id="content">
    	<div class="login-wrap">
        	<div class="w">
            	<div class="login-form">
					<div class="col-md-6 login-right">
			  			<h3>REGISTERED CUSTOMERS</h3>
						<s:form action="login.action" method="post">
				  			<div>
								<span>用户名<label>*</label></span>
								<input name="dl.username" type="text"> 
				  			</div>
				  			<div>
								<span>密码<label>*</label></span>
								<input name="dl.pwd" type="password"> 
				 	 		</div>
				  			<input value="登陆" type="submit">
							<a class="acount-btn" href="register.action">立即注册</a>
			    		</s:form>
			   		</div>
            	</div>
        	</div>
        	<div class="login-banner">
            	<div class="w">
                	<div id="banner-bg" class="i-inner" style="background-color: #FAFAFA">
                    	<img src="image/login_back.jpg" height="326px" width="100%">
                    </div>		              
                </div>		           
            </div>
    	</div>
	</div>
</body>
</html>