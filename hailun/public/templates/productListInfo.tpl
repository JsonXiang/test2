<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="{$t_url}css/productListInfo.css" />
		<link rel="stylesheet" href="{$t_url}util/css/swiper.min.css" />
	</head>
	<body>
		<div style="padding-left: 30px;width: 900px">
			<div class="swiper-container">
			    <div class="swiper-wrapper">
			    	
				   <div class="swiper-slide">
				    	<div class="productListInfo">
							<p class="productListInfo_title">{$langs.protitle}:&nbsp;{$product.title}</p>
							<img  src="{PrintImageURL($product.path, $product.filename, 3)}" alt="" />
							<div class="productListInfo_detail">
								<!--  <p>品名：米琪林（轮胎 ）</p>
								<p>原厂编号：04466-30320</p>
								<p>AKOK编号：G1251-TR</p>
								<p>适用车型：GRS1#.2#.GRX</p>  -->
								{echo html($product.content)} 
							</div>
							<div class="productListInfo_footer">
								点击：{$langs.clicks}: {$product.clicks}    录入时间： {echo DisplayDate($product.created)}
								<a href="javascript:window.print();">【打印此页】</a>
								<a href="javascript:history.back();">【返回】</a>
							</div>
						</div>
				    </div>
				    
				    
				    <div class="swiper-slide">
				    	<div class="productListInfo">
							<p class="productListInfo_title">米琪林（轮胎 ）G1251TR</p>
							<img src="{$t_url}images/productListInfo.jpg" alt="" />
							<div class="productListInfo_detail">
								<p>品名：米琪林（轮胎 ）</p>
								<p>原厂编号：04466-30320</p>
								<p>AKOK编号：G1251-TR</p>
								<p>适用车型：GRS1#.2#.GRX</p>
							</div>
							<div class="productListInfo_footer">
								点击：4659    录入时间：2012-4-1
								<a href="javascript:window.print();">【打印此页】</a>
								<a href="javascript:history.back();">【返回】</a>
							</div>
						</div>
				    </div>
				    
				    <div class="swiper-slide">
				    	<div class="productListInfo">
							<p class="productListInfo_title">米琪林（轮胎 ）G1251TR</p>
							<img src="{$t_url}images/productListInfo.jpg" alt="" />
							<div class="productListInfo_detail">
								<p>品名：米琪林（轮胎 ）</p>
								<p>原厂编号：04466-30320</p>
								<p>AKOK编号：G1251-TR</p>
								<p>适用车型：GRS1#.2#.GRX</p>
							</div>
							<div class="productListInfo_footer">
								点击：4659    录入时间：2012-4-1
								<a href="javascript:window.print();">【打印此页】</a>
								<!-- <a href="javascript:history.go(-1);">【返回】</a> -->
							</div>
						</div>
				    </div>
				    
			    </div>
			    <div class="swiper-button-prev swiper-button-prev01"></div>
    			<div class="swiper-button-next swiper-button-next01"></div>
			</div>
			
		</div>
	</body>
	<script src="{$t_url}util/js/swiper.min.js"></script>
	<script>
		var mySwiper = new Swiper('.swiper-container', {
			autoplay: 5000,//可选选项，自动滑动
			prevButton:'.swiper-button-prev',
			nextButton:'.swiper-button-next',
			loop : true,
		})
	</script>
</html>
