<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>single</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script src="js/jquery.easydropdown.js"></script>
<!--放大镜-->
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.etalage.min.js"></script>
<script>
	jQuery(document).ready(function($){
		$('#etalage').etalage({
			thumb_image_width: 300,
			thumb_image_height: 400,
			source_image_width: 900,
			source_image_height: 1200,
			show_hint: true,
			click_callback: function(image_anchor, instance_id){
				alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');}
		});

	});
</script>
<!--initiate accordion-->
<script type="text/javascript">
	$(function() {
	
	    var menu_ul = $('.menu_drop > li > ul'),
	           menu_a  = $('.menu_drop > li > a');
	    
	    menu_ul.hide();
	
	    menu_a.click(function(e) {
	        e.preventDefault();
	        if(!$(this).hasClass('active')) {
	            menu_a.removeClass('active');
	            menu_ul.filter(':visible').slideUp('normal');
	            $(this).addClass('active').next().stop(true,true).slideDown('normal');
	        } else {
	            $(this).removeClass('active');
	            $(this).next().stop(true,true).slideUp('normal');
	        }
	    });
	
	});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
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
	<div style="height:152px;">
		<iframe width="100%" height="152" frameborder="0" scrolling="no" name="unify_nav" vspace="0" hspace="0" marginheight="0" marginwidth="0" src="head.jsp"> </iframe>
	</div>
	<div class="single_top">
		<div class="container"> 
	      	<div class="single_grid">
	      	<s:iterator value="#request.detail" id="d">
				<div class="grid images_3_of_2">
				
					<ul id="etalage">
						<li>
							<a href="optionallink.html">
								<img class="etalage_thumb_image" src="<s:property value='#d.picture'/>" class="img-responsive" />
								<img class="etalage_source_image" src="<s:property value='#d.picture'/>" class="img-responsive" title="" />
							</a>
						</li>
						<li>
							<img class="etalage_thumb_image" src="<s:property value='#d.picture'/>" class="img-responsive" />
							<img class="etalage_source_image" src="<s:property value='#d.picture'/>" class="img-responsive" title="" />
						</li>
						<li>
							<img class="etalage_thumb_image" src="<s:property value='#d.picture'/>" class="img-responsive"  />
							<img class="etalage_source_image" src="<s:property value='#d.picture'/>"class="img-responsive"  />
						</li>
						<li>
							<img class="etalage_thumb_image" src="<s:property value='#d.picture'/>" class="img-responsive"  />
							<img class="etalage_source_image" src="<s:property value='#d.picture'/>"class="img-responsive"  />
						</li>
					</ul>
					<div class="clearfix"></div>		
				</div> 
				
				<form onsubmit=" return check(<s:property value="#session.userlogininfo"/>);" action="productbuy.action" method="post">
				
				<div class="desc1 span_3_of_2">
					<h1><s:property value="#d.pname"/></h1>
					<ul class="price_single">
					    <li class="head"><p>市场价：￥<s:property value="#d.marketprice"/></p></li>
					  	<li class="head_desc"><a href="#">加入收藏夹</a><img src="images/review.png" alt=""/></li>
					  	<div class="clearfix"></div>
					</ul>
					<ul class="price_single">
					    <p>
					             劲爆价：
					    </p>
					  	<li class="head"><h2>￥<s:property value="#d.sellprice"/></h2></li>
					  	<div class="clearfix"></div>
					</ul>
					<ul class="price_single">
					  	<li class="head"><h1>销量：<s:property value="#d.sellcount"/></h1></li>
					  	<div class="clearfix"></div>
					</ul>
					<p>
					<s:property value="#d.intro"/>
					</p>
				    <div class="dropdown_top">
				    	<div class="dropdown_left">
					     	<select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro1"}'>
	            				<option value="0">选择分类</option>	
								<option value="1">M</option>
								<option value="2">L</option>
								<option value="3">XL </option>
								<option value="4">Fs</option>
								<option value="5">S </option>
								<option value="5"></option>
								<option value="5"></option>
			             	</select>
			            </div>
			            <ul class="color_list">
							<li><a href="#"> <span class="color1"> </span></a></li>
							<li><a href="#"> <span class="color2"> </span></a></li>
							<li><a href="#"> <span class="color3"> </span></a></li>
							<li><a href="#"> <span class="color4"> </span></a></li>
							<li><a href="#"> <span class="color5"> </span></a></li>
						</ul>
						<div class="clearfix"></div>
			       	</div>
			       	<a onclick=" return check(<s:property value="#session.userlogininfo"/>);" href="productbuy.action?buypid=<s:property value="#d.pid"/>&buynumber=1" class="btn1 btn2 btn-primary1"><span>加入购物车</span></a>
				</div>
				</s:iterator>
          	    <div class="clearfix"></div>
          	</div>
          	<div class="single_social_top"></div>
			<ul class="menu_drop">
				<li class="item1"><a href="#"><img src="images/product_arrow.png">商品详情</a>
					<ul>
						<p>
					<s:property value="#d.intro"/>
					</p>
					</ul>
				</li>
				<li class="item2"><a href="#"><img src="images/product_arrow.png">附加信息</a>
					<ul>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>	
				<li class="item3"><a href="#"><img src="images/product_arrow.png">商品评价</a>
					<ul>
						<li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor </a></li>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				<li class="item4"><a href="#"><img src="images/product_arrow.png">帮助链接</a>
					<ul>
					   	<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				
	 		</ul>
   		</div>
   		<h3 class="m_2">相关产品推荐</h3>
		<div class="container">
          	<div class="box_3">
          	<s:iterator value="#request.relativelist" id="r">
          		<div class="col-md-3">
          		
          			<div class="content_box">
          				<a href="productdetail.action?buypid=<s:property value="#r.pid"/>">
			   	          	<img width="236"  height="326" src="<s:property value='#r.picture'/>" class="img-responsive" 	style="width: 245px;
  	height: 285px;" alt=""/>
				   	  	 </a>
				   	</div>
				    <h4><a href="productdetail.action?buypid=<s:property value="#r.pid"/>"><s:property value="#r.pname"/></a></h4>
				   <p style="color:red;font-size:16px;">￥<s:property value="#r.sellprice"/></p>
			    </div>
			  </s:iterator> 
          		
			    
			    <div class="clearfix"> </div>
          	</div>
        </div>
    </div>
 <script >
    function check(x){
if(x==null) {alert("请先登录");
window.location.href = "login.jsp";
return false;}
else return true;
}
</script>
</body>
</html>