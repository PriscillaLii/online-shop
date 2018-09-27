<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
    <link href="css/item.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/focus.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/footer.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/focus.js"></script>
</head>

<body>
	<div style="height:152px;">
		<iframe width="100%" height="152" frameborder="0" scrolling="no" name="unify_nav" vspace="0" hspace="0" marginheight="0" marginwidth="0" src="head.jsp"> </iframe>
	</div>
    
    <div id="focus">
    <div id="gps">
    	<!-- The JavaScript -->
    	<script type="text/javascript" src="js/jquery.path.js"></script>
        <script type="text/javascript" src="js/gps.js"></script>
        <div class="wrapper">
            <div id="images" class="images">
            	<img id="image_about" src="image/1.png" alt="" width="402" height="402" style="display:block;"/>
            	<img id="image_portfolio" src="image/2.png" alt="" width="402" height="402"/>
            	<img id="image_contact" src="image/3.png" alt="" width="402" height="402" />
        	</div>
        	<div class="circleBig">
        		<div id="menu" class="menu">
            	<a id="about" class="about" href="">数码</a>
            	<a id="portfolio" class="portfolio" href="">服饰</a>
            	<a id="contact" class="contact" href="">其他</a>
       			</div>
        	</div>
        </div>
        <div id="circle_about" class="circle">
        	<div class="description">
            	<ul>
                	<li><a href="producttype.action?typeid=12" >手机</a></li>
                	<li><a href="producttype.action?typeid=13">笔记本</a></li>
                	<li><a href="producttype.action?typeid=11">电脑配件</a></li>
                </ul>
            </div>
        </div>
        <div id="circle_portfolio" class="circle">
        	<div class="description">
            	<ul>
            	<li><a href="producttype.action?typeid=7">男装</a></li>
                    <li><a href="producttype.action?typeid=8">女装</a></li>
                    <li><a href="producttype.action?typeid=10">鞋</a></li>
                </ul>
            </div>
        </div>
        <div id="circle_contact" class="circle">
        	<div class="description">
            	<ul>
                	<li><a href="producttype.action?typeid=6">图书</a></li>
                    <li><a href="producttype.action?typeid=2">玩具</a></li>
                    <li><a href="producttype.action?typeid=9">零食</a></li>
                </ul>
            </div>
      	</div>
	</div>
    <div id="ifocus">
     	<div id="ifocus_pic">
  			<div id="ifocus_piclist" style="left:0; top:0;">
   			<ul>
    			<li><a href="producttype.action?typeid=12"><img src="img/01.jpg" alt="" /></a></li>
    			<li><a href="producttype.action?typeid=11"><img src="img/02.jpg" alt="" /></a></li>
    			<li><a href="producttype.action?typeid=7"><img src="img/03.jpg" alt="" /></a></li>
    			<li><a href="producttype.action?typeid=8"><img src="img/04.jpg" alt="" /></a></li>
   			</ul>
  			</div>
 		</div>
 		<div id="ifocus_btn">
  		<ul>
   			<li class="current"><img src="img/btn_01.jpg" alt="" /></li>
   			<li class="normal"><img src="img/btn_02.jpg" alt="" /></li>
   			<li class="normal"><img src="img/btn_03.jpg" alt="" /></li>
   			<li class="normal"><img src="img/btn_04.jpg" alt="" /></li>
  		</ul>
 		</div>
    </div>
    </div>
    
    
    
    
    
    
    
    
    
	<div class="w">
       	<!-- requried-jsfiles-for owl -->
    	<link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
		<script src="js/owl.carousel.js"></script>
		<script>
			$(document).ready(function() {
				$("#owl-demo").owlCarousel({
					items : 1,
					lazyLoad : false,
					autoPlay : true,
					navigation : false,
					navigationText :  false,
					pagination : true,
				});
				$("#owl-demo2").owlCarousel({
					items : 1,
					lazyLoad : false,
					autoPlay : true,
					navigation : false,
					navigationText :  false,
					pagination : true,
				});
			});
		</script>
        <script type="text/javascript">
			$(document).ready(function(){
  				$(".imgtext").hide();
  				$(".item-in").hover(
				function(){
  					$(this).find(".imgtext").slideToggle(1000);
					$(this).find("img").attr({ style: "border: 8px solid #f54d56;" });
					var owl = $(this).closest("div").find(".owl-carousel").data('owlCarousel');
					owl.stop();
  				},
				function(){
  					$(this).find(".imgtext").slideToggle(1000);
					$(this).find("img").attr({ style: "border: 8px solid #EBEBEB;" });
					var owl = $(this).closest("div").find(".owl-carousel").data('owlCarousel');
					owl.play();
  				});
			});
		</script>

			
		
		</script>
		
		<!-- //requried-jsfiles-for owl -->
        
		<div class="item">
  			<div class="kind">
  				<div class="mod_floor_title xihu">
					<div>
					<a title="推荐" class="bt" target="_blank" href="">人气推荐<img src="image/tuijian.gif"> </a>
						
					</div>
				</div>
  			</div>
			<!-- start content_slider -->
			
			
			<div id="owl-demo" class="owl-carousel">
			<s:iterator value="#session.hotlist" id="f" status="status" >
			<s:if test="#status.index % 5 == 0">
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
				<s:if test="#status.index % 5 == 4 || #status.last">
                </div>
                </s:if>
			</s:iterator>
			</div>
			
		</div>	
		
		 <div class="item">
  			<div class="kind">
  				<div class="mod_floor_title xihu">
					<div>
						<a title="新品" class="bt" target="_blank" href="http://market.yhd.com?tc=ad.0.0.16092-15985564.1&amp;tp=1.1.714.1.1.KoitRA2-10-Cpdsc">新品上市<img src="image/new.gif"> </a>
					</div>
				</div>
  			</div>
			<!-- start content_slider -->
			
			
			<div id="owl-demo2" class="owl-carousel">
			<s:iterator value="#session.newlist" id="n" status="statusn" >
			<s:if test="#statusn.index % 5 == 0">
             <div class="items-in">
            </s:if>
            
          			<div class="item-in">
                        <a href="productdetail.action?buypid=<s:property value="#n.pid"/>"  target="_blank"><img src="<s:property value='#n.picture'/>"></a>
                        <div class="text">
                            <div class="item_dsr">
								<h4><a href="productdetail.action?buypid=<s:property value="#n.pid"/>"  target="_blank"><span class="color_red"></span><s:property value='#n.pname'/></a></h4>
								<p class="price"><strong id="trueprice_251404633">￥<s:property value='#n.sellprice'/></strong></p>
							</div>
                            <div style="display: none;" class="imgtext">
								<s:property value='#n.intro'/>
							</div>
                        </div>
					</div>
				<s:if test="#statusn.index % 5 == 4 || #statusn.last">
                </div>
                </s:if>
			</s:iterator>
			
			</div>
			
    </div>
</div>
		
       

	<div id="footer" class="footer vip-common-footer">
  		<div class="footer-inner">
        	<ul class="footer-vip">
      		<li>
        		<i class="footer-vip-ico01">正品采购</i>
      		</li>
      		<li>
       			<i class="footer-vip-ico02">正品保险</i>
      		</li>
      		<li>
        		<i class="footer-vip-ico03">美国上市</i>
      		</li>
      		<li>
        		<i class="footer-vip-ico04">专业配送</i>
      		</li>
      		<li>
        		<i class="footer-vip-ico05">金牌服务</i>
      		</li>
      		<li>
        		<i class="footer-vip-ico06">万千信赖</i>
      		</li>
      		<li>
        		<i class="footer-vip-ico07">权威荣誉</i>
      		</li>
    		</ul>     
  		</div>
	</div>
    <div class="footer">
    	<img src="image/bottom_bg.jpg" width="1366" height="341"/>
    </div>
</body>
</html>