<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>show</title>
<link href="css/show.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
  		$(".imgtext").hide();
  		$(".item-in").hover(
		function(){
  			$(this).find(".imgtext").slideToggle(1000);
			$(this).find("img").attr({ style: "border: 8px solid #f54d56;" });
  		},
		function(){
  			$(this).find(".imgtext").slideToggle(1000);
			$(this).find("img").attr({ style: "border: 8px solid #EBEBEB;" });
  		});
	});
</script>
</head>

<body>
<div style="height:152px;">
		<iframe width="100%" height="152" frameborder="0" scrolling="no" name="unify_nav" vspace="0" hspace="0" marginheight="0" marginwidth="0" src="head.jsp"> </iframe>
</div>
<s:set name="u" value="#session.list"></s:set> 
<s:set name="s" value="#request.sortway"></s:set> 
<div class="container">
	<div class="women_main">
		<div class="col-md-9 w_content">
			<div class="women">
				<a href="#"><h4>商品筛选 - <span><s:property value="#session.list.size()"/></span> </h4></a>
				<ul class="w_nav">
					<li>排序 :</li>
		     		<li><a class="active" href="insellnumsort.action">销量</a></li> |
		     		<li><a href="#">新品</a></li> |
		     		<li><a href="#">评论数</a></li> |
		     		<li>
		     		<s:if test='%{#request.sortway == "price_inc"}'>
		     		<a href="depricesort.action">价格: 从高到低</a>
		     		</s:if>
		     		<s:else>
		     		<a href="inpricesort.action">价格: 从低到高</a>
		     		</s:else>
		     		</li> 
		     		<div class="clear"></div>	
		     	</ul>
		    <div class="clearfix"></div>	
		</div>
		<!-- grids_of_4 -->
		<s:iterator value="#session.list" id="f" status="status" >
			<s:if test="#status.index % 4 == 0">
             <div class="items-in">
            </s:if>
			<div class="item-in">
                        <a href="productdetail.action?buypid=<s:property value="#f.pid"/>"  target="_blank"><img src="<s:property value='#f.picture'/>"></a>
                        <div class="text">
                            <div class="item_dsr">
								<h4><a href="productdetail.action?buypid=<s:property value="#f.pid"/>"  target="_blank"><span class="color_red"></span><s:property value='#f.pname'/></a></h4>
								<p class="price"><strong id="trueprice_251404633">￥<s:property value='#f.sellprice'/></strong></p>
							</div>
                            <div style="display: none;" class="imgtext">
								<s:property value='#f.intro'/>
							</div>
                        </div>
					</div>
		<s:if test="#status.index % 4 == 3 || #status.last">
                </div>
                </s:if>
			</s:iterator>
		<div class="grids_of_4">
	
		</div>
		<div class="grids_of_4">

		</div>
		<!-- end grids_of_4 -->
	</div>
	<!-- start sidebar -->
	<div class="col-md-3">
	  <div class="w_sidebar">

		<section class="sky-form">
			<h4>人气热卖</h4>
			<s:iterator value="#session.hotlist" id="h" status="status1" >
			<s:if test="#status1.index <3">
          	<div class="content_box">
          		<a href="productdetail.action?buypid=<s:property value="#h.pid"/>">
			   	     <img width="236"  height="326" src="<s:property value='#h.picture'/>" class="img-responsive" alt="">
				</a>
			</div>
			<p><a href="productdetail.action?buypid=<s:property value="#h.pid"/>"><s:property value="#h.pname"/></a></p>
			<p style="color:red;font-size:16px;">￥<s:property value="#h.sellprice"/></p>
			</s:if>
          	</s:iterator>
			
			
		
			
		</section>	
	  </div>
   </div>
	<!-- start content -->
   <div class="clearfix"></div>
   <!-- end content -->
 </div>
</div>
</body>
</html>