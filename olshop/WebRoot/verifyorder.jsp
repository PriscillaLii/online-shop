<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>submit_order</title>
<link href="css/submit_order.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/widget.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/cart.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div style="height:152px;">
		<iframe width="100%" height="152" frameborder="0" scrolling="no" name="unify_nav" vspace="0" hspace="0" marginheight="0" marginwidth="0" src="head.jsp"> </iframe>
	</div>
	<div id="content" class="w">
		<div class="m">
			<div class="mt">
				<h2>填写并核对订单信息</h2>
			</div>
			<div class="mc">
			<s:set name="u" value="#session.userlogininfo"></s:set> 
				<div class="checkout-steps">
          			<div class="step-tit">
            			<h3>收货人信息</h3>
            			<div class="extra-r">
              				<a href="myaddress.jsp" class="ftx-05" >新增收货地址</a>
            			</div>
          			</div>
          			<div class="step-cont">
            			<div id="consignee-addr" class="consignee-addr"> 
              				<div id="consignee-ret"></div>
              				<div class="consignee-cont ui-switchable-panel-body" style="position: relative; height: auto;" id="consignee1">
                                <ul class="ui-switchable-panel-main" style="top: 0px; position: relative;" id="consignee-list">
									<li class="ui-switchable-panel ui-switchable-panel-selected" style="display: list-item;" id="consignee_index_0" selected="selected">
										<div class="consignee-item item-selected" consigneeid="0" id="consignee_index_div_0">
											<span title="李晨" limit="3"><s:property value="#u.username"/> China</span><b></b>			
										</div>
										
	                                    <s:form name="ordersubmit" action="submitOrder.action" method="post">
										<div class="addr-detail">
											<span title="李晨" class="addr-name" limit="6"><s:property value="#u.username"/></span>
											<input type="hidden" name="ord.recipients"
  				                            value="<s:property value="#u.username"/>" style="width: 80px"/>
											<span title="北京 昌平区 六环以内 北七家镇郑各庄村北京邮电大学宏福校区" class="addr-info" limit="32"><s:property value="#u.address"/></span>
											
											<input type="hidden" name="ord.address"
  				                            value="<s:property value="#u.address"/>" style="width: 400px"/>
  				                            <span title="102209" class="addr-name" limit="6"><s:property value="#u.postcode"/></span>
  				                            <input type="hidden" name="ord.postcode"
  				                            value="<s:property value="#u.postcode"/>" style="width: 80px"/>
											<span class="addr-tel"><s:property value="#u.tel"/></span>
											<input type="hidden" name="ord.tel"
  				                            value="<s:property value="#u.tel"/>" style="width: 80px"/>
										</div>
										</s:form>
									</li>
  								</ul>
              				</div>
           			 	</div>
          			</div>
          			<div class="hr"></div>
          			<div id="shipAndSkuInfo">
            			<div id="payShipAndSkuInfo">
							<div class="step-tit">
  								<h3>送货清单</h3>
 			 					<div class="extra-r">
          							<a href="http://cart.jd.com/cart/cart.html" id="cartRetureUrl" class="return-edit ftx-05">返回修改购物车</a>
      							</div>
							</div>
							<div class="step-cont" id="skuPayAndShipment-cont">
                            	<div class="gwc" style=" margin:auto;">
									<table cellpadding="0" cellspacing="0" class="gwc_tb1">
										<tr>
											<td class="tb1_td3">商品</td>
											<td class="tb1_td5">数量</td>
											<td class="tb1_td6">单价</td>
											<td class="tb1_td6">总价</td>
										</tr>
									</table>
									<s:set var ="total" value="0" />
									<s:set var ="t" value="0" />
									<s:iterator value="#session.selectcartlist" id="o">
									<table cellpadding="0" cellspacing="0" class="gwc_tb2">
										<tr>
											<td class="tb2_td2"><a href="#"><img src="<s:property value='#o.productinfo.picture'/>"/></a></td>
											<td class="tb2_td3"><a href="#"><s:property value="#o.productinfo.pname"/></a></td>
											<td class="tb1_td5"><s:property value="#o.number"/></td>
											<td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;"><s:property value="#o.productinfo.sellprice"/></label></td>
			                                <td class="tb1_td6"><label id="total1" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;"><s:property value="#o.number*#o.productinfo.sellprice"/></label></td>
										</tr>
									</table>
									<s:set var ="total" value="#o.number*#o.productinfo.sellprice+#total"/>
									<s:set var ="t" value="#t + 1"/>
									</s:iterator>
								</div>
  								<div class="order-remarks hide" id="orderRemarkItem"></div>
							</div>            
                    	</div>
          			</div>
          			<div class="clr"></div>
          			<div class="hr"></div>
        		</div>
      		</div>
    	</div>
    	<div class="order-summary">
    		<div class="statistic fr">
        		<div class="list">
          			<span><em class="ftx-01"><s:property value="#t"/></em> 件商品，总商品金额：</span>
          			<em class="price" id="warePriceId" v="499">￥<s:property value="#total"/></em>
        		</div>
       			<div class="list">
          			<span>运费：</span>
          			<em class="price" id="freightPriceId"><font color="#000000"> ￥0.00</font></em>
        		</div>
        		<div class="list">
          			<span>应付总额：</span>
          			<em class="price" id="sumPayPriceId">￥<s:property value="#total"/></em>
        		</div>
    		</div>
    		<div class="clr"></div>
    		<div class="hr"></div>
    		<div class="trade-foot">
    			<div id="checkout-floatbar" class="group">
        			<div class="ui-ceilinglamp checkout-buttons">
          				<div class="sticky-placeholder hide" style="display: none;">
          				</div>
          				<div class="sticky-wrap">
            				<div class="inner">
              					<button type="submit" class="checkout-submit btn-1" id="order-submit" onclick="mySubmit()">
                					提交订单<b></b>
              					</button>
                        		<span class="total">
                        			应付总额：<strong id="payPriceId">￥<s:property value="#total"/></strong>
              					</span>
                        		<span id="checkCodeDiv"></span>
            				</div>
          				</div>
        			</div>
      			</div>
    		</div>
    	</div>
    </div>
   <script type="text/javascript">
function mySubmit(){
document.ordersubmit.submit();//表单提交action="register.jsp"
}
</script>
</body>
</html>