<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>register</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
</head>

<body>
<div class="single_top">
	 <div class="container"> 
	     <div class="register">
	     <s:set name="u" value="#session.userlogininfo"></s:set> 
		  	  <s:form action="myinfo.action" method="post">
				 <div class="register-top-grid">
					<h3>个人信息</h3>
					 <div>
						<span>地址<label>*</label></span>
						<input type="text" name="reg.address"
  				value="<s:property value="#u.address"/>" style="width: 400px"/>
					 </div>
					 <div>
						<span>邮编<label>*</label></span>
						<input type="text" name="reg.postcode"
  				value="<s:property value="#u.postcode"/>" style="width: 400px"/>
					 </div>
					 <div>
						 <span>电话<label>*</label></span>
						 <input type="text" name="reg.tel"
  				value="<s:property value="#u.tel"/>" style="width: 400px"/>
					 </div>
                     <div>
						 <span>邮箱<label>*</label></span>
						 <input type="text" name="reg.email"
  				value="<s:property value="#u.email"/>" style="width: 400px"/>
					 </div>
					 <div class="clearfix"></div>
					 <a class="new-line"></a>
					 </div>
					 <input type="submit" value="修改">
					 <div class="clearfix"> </div>
				</s:form>
				<div class="clearfix"> </div>
		   </div>
     </div>
</div>      
</body>
</html>