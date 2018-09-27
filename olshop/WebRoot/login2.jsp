<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
	<title>网络商城</title>
	<style type="text/css">
	<!--
	body { font-size:15px;  font-family:微软雅黑; }
	.inp1{ background: url(image/inp_bg1.jpg) no-repeat; width:210px; height:33px; line-height:32px; border:0; padding-left:5px; padding-right:3px;}
	.inp2{ background: url(image/inp_bg2.jpg) no-repeat; width:77px; height:33px; line-height:32px; border:0; padding-left:5px; padding-right:3px;}
	.dl_btn{ background: url(image/login_btn.png) no-repeat; width:95px; height:32px; display:block; border:0; cursor:pointer; margin-top:33px;}

	-->
	</style>
	<script type="text/javascript" src="/dwr/interface/ajaxtool.js"></script>
	<script type="text/javascript" src="/dwr/engine.js"></script>
	<script type="text/javascript" src="/dwr/util.js" ></script>
	<script type='text/javascript'>
	window.onload=function(){ 
		var imgs=["url(image/login_01.jpg)" ]; 
  		var tab = document.getElementById("table00"); 
  		//var rollIndex = Math.round(Math.random()*4);
  		//alert(rollIndex);
  		//setInterval(     
			//function(){     
		  		//if(rollIndex==imgs.length){
				//	rollIndex=0;         
		  		//}
		  		tab.style.backgroundImage=imgs[0]; 
		  		//rollIndex++;     
		  	//} ,3000); 
	} 	

	function login(){
		 if(document.loginForm.zjh.value == ""){
			alert("请输入您的帐号");
			document.loginForm.zjh.focus();
			return ;
  	   }
		if(document.loginForm.mm.value == ""){
			alert("请输入您的密码");
			document.loginForm.mm.focus();
			return ;
  	   }
   	 document.loginForm.submit();
	}

	</script>
  </head>
  
  <body>
 	<table width="100%" height="100%"><tr><td valign="middle">
	<table id="table00" width="1350" height="629" border="0" align="center"  valign="middle" cellpadding="0" cellspacing="0" >
  	<tr>
  	  <td><br />
    	  <br />
    	    <br />
     	    <table width="450" border="0" align="center" cellpadding="0" cellspacing="0" background="image/bj_01.png">
      	    <tr>
            <td height="38">&nbsp;     
     		 </td>
        </tr>
	<tr>
        <td>
  	<s:form action="login.action" method="post">
	<input type="hidden" name="type" value="sso">
    	<table width="380" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
		     <td width="26%" align="right">用户名：</td>
		     <td height="45" colspan="2"><input name="dl.username" value="" type="text" label="密码" class="inp1" alt="notnull"/></td>
		</tr>
		<tr>
		     <td align="right">密码：</td>
		     <td height="45" colspan="2"><input name="dl.pwd" type="password" class="inp1" alt="notnull"/></td>
		</tr>
		<tr>
		     <td colspan="3"><div align="center">
		     <input id="btnSure" name="Input2" type="submit" value="" class="dl_btn"/>
		     </div></td>
		</tr>
    	</table>
    	</s:form>
  	</td>
        </tr>
	<tr>
            <td height="38">&nbsp;</td>
        </tr>
        </table></td>
  </tr>
</table></td></tr></table>
  </body>
</html>

