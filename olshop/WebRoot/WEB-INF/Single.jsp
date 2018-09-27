<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
	<div class="single_top">
		<div class="container"> 
	      	<div class="single_grid">
				<div class="grid images_3_of_2">
					<ul id="etalage">
						<li>
							<a href="optionallink.html">
								<img class="etalage_thumb_image" src="images/s1.jpg" class="img-responsive" />
								<img class="etalage_source_image" src="images/s1.jpg" class="img-responsive" title="" />
							</a>
						</li>
						<li>
							<img class="etalage_thumb_image" src="images/s2.jpg" class="img-responsive" />
							<img class="etalage_source_image" src="images/s2.jpg" class="img-responsive" title="" />
						</li>
						<li>
							<img class="etalage_thumb_image" src="images/s3.jpg" class="img-responsive"  />
							<img class="etalage_source_image" src="images/s3.jpg"class="img-responsive"  />
						</li>
						<li>
							<img class="etalage_thumb_image" src="images/s4.jpg" class="img-responsive"  />
							<img class="etalage_source_image" src="images/s4.jpg"class="img-responsive"  />
						</li>
					</ul>
					<div class="clearfix"></div>		
				</div> 
				<div class="desc1 span_3_of_2">
					<h1>nibh euismod</h1>
					<ul class="price_single">
					  	<li class="head"><h2>$99.99</h2></li>
					  	<li class="head_desc"><a href="#">12 reviews</a><img src="images/review.png" alt=""/></li>
					  	<div class="clearfix"></div>
					</ul>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum</p>
				    <div class="dropdown_top">
				    	<div class="dropdown_left">
					     	<select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro1"}'>
	            				<option value="0">Select size</option>	
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
			       	<a href="#" class="btn1 btn2 btn-primary1"><span>加入购物车</span></a>
				</div>
          	    <div class="clearfix"></div>
          	</div>
          	<div class="single_social_top"></div>
			<ul class="menu_drop">
				<li class="item1"><a href="#"><img src="images/product_arrow.png">Description</a>
					<ul>
						<li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor </a></li>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				<li class="item2"><a href="#"><img src="images/product_arrow.png">Additional information</a>
					<ul>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				<li class="item3"><a href="#"><img src="images/product_arrow.png">Reviews (10)</a>
					<ul>
						<li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor </a></li>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				<li class="item4"><a href="#"><img src="images/product_arrow.png">Helpful Links</a>
					<ul>
					   	<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
				<li class="item5"><a href="#"><img src="images/product_arrow.png">Make A Gift</a>
					<ul>
						<li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor </a></li>
						<li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
						<li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
					</ul>
				</li>
	 		</ul>
   		</div>
   		<h3 class="m_2">相关产品推荐</h3>
	    	<div class="container">
          		<div class="box_3">
          			<div class="col-md-3">
          				<div class="content_box">
                        	<a href="single.html">
			   	          		<img src="images/pic6.jpg" class="img-responsive" alt="">
				   	   		</a>
				   		</div>
				    	<h4><a href="single.html">Contrary to popular belief</a></h4>
				    	<p>$ 199</p>
			        </div>
          			<div class="col-md-3">
          				<div class="content_box">
                        	<a href="single.html">
			   	          		<img src="images/pic2.jpg" class="img-responsive" alt="">
				   	   		</a>
				   		</div>
				    	<h4><a href="single.html">Contrary to popular belief</a></h4>
				    	<p>$ 199</p>
			        </div>
          			<div class="col-md-3">
          				<div class="content_box">
                        	<a href="single.html">
			   	          		<img src="images/pic4.jpg" class="img-responsive" alt="">
				   	   		</a>
				   		</div>
				    	<h4><a href="single.html">Contrary to popular belief</a></h4>
				    	<p>$ 199</p>
			        </div>
          			<div class="col-md-3">
          				<div class="content_box">
                        	<a href="single.html">
			   	          		<img src="images/pic5.jpg" class="img-responsive" alt="">
				   	   		</a>
				   		</div>
				    	<h4><a href="single.html">Contrary to popular belief</a></h4>
				    	<p>$ 199</p>
			        </div>
			        <div class="clearfix"> </div>
          		</div>
          	</div>
        </div>
    </div>
</body>
</html>