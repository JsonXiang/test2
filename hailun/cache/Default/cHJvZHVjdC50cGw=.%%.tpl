<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>css/productListInfo.css" />
		<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>util/css/swiper.min.css" />
	</head>
	<body>
		<div style="padding-left: 30px;width: 900px">
			<p class="productListInfo_title"><!-- 米琪林（轮胎 ）G1251TR --><?php echo $this->_tpl_vars['product']['title']; ?></p>
			<div class="swiper-container">
			    <div class="swiper-wrapper">

				    <div class="swiper-slide">
				    	<div class="productListInfo">
							<img src="<?php PrintImageURL($this->_tpl_vars['product']['path'], $this->_tpl_vars['product']['filename'], 3); ?>" alt="" />
						</div>
				    </div>

			    </div>
			    <div class="swiper-button-prev swiper-button-prev01"></div>
    			<div class="swiper-button-next swiper-button-next01"></div>
			</div>
			<div id="xiangqin" class="productListInfo_detail">
				<!-- <p>品名：米琪林（轮胎 ）</p>
				<p>原厂编号：04466-30320</p>
				<p>AKOK编号：G1251-TR</p>
				<p>适用车型：GRS1#.2#.GRX</p> -->
				<?php echo html($this->_tpl_vars['product']['content']); ?>
			</div>
			<div class="productListInfo_footer">
				<a href="javascript:window.print();">【<!-- 打印此页 --><?php echo $this->_tpl_vars['langs']['print']; ?>】</a>
				<a href="<?php PURL('products?cat='); ?><?php echo $this->_tpl_vars['cat']; ?>">【<?php echo $this->_tpl_vars['langs']['back']; ?>】</a>
			</div>
		</div>
	</body>
	<script src="<?php echo $this->_tpl_vars['t_url']; ?>util/js/swiper.min.js"></script>
	<script>
		var mySwiper = new Swiper('.swiper-container', {
			autoplay: 5000,//可选选项，自动滑动
			prevButton:'.swiper-button-prev',
			nextButton:'.swiper-button-next',
			loop : true,
		})

		// 去掉pre标签

	// var html=$("#xiangqin").children();
	// $("#xiangqin").children().remove();
	// $("#xiangqin").html(html);
	</script>
</html>













