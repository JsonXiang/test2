
<!--head-->
<?php $this->display('header.tpl'); ?>
<!--page-->
<div class="page">

	<div class="banner">
		<div class="bannerBox bannerBox1">
			<img src="<?php echo $this->_tpl_vars['t_url']; ?>util/images/banner.jpg" />
			<div><h5>HELEN</h5><span><!-- 了解更多 --><?php echo $this->_tpl_vars['langs']['more']; ?></span></div>
		</div>
	</div>

	<div class="pageMenu">
		<div class="z">
			<a href="<?php PURL('about'); ?>"><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/<?php echo $this->_tpl_vars['langs']['pic1']; ?>" /></a>
			<a href="<?php PURL('products'); ?>"><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/<?php echo $this->_tpl_vars['langs']['pic2']; ?>" /></a>
			<a href="<?php PURL('news'); ?>"><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/<?php echo $this->_tpl_vars['langs']['pic3']; ?>" /></a>
			<a href="<?php PURL('ToJoin'); ?>"><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/<?php echo $this->_tpl_vars['langs']['pic4']; ?>" /></a>
			<a onclick="javascript:document.getElementById('tiaozhuan').scrollIntoView()"><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/<?php echo $this->_tpl_vars['langs']['pic5']; ?>" /></a>
			<a href="<?php PURL('contactUs'); ?>"><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/<?php echo $this->_tpl_vars['langs']['pic6']; ?>" /></a>
		</div>
	</div>

	<div class="swiper">
		<div class="z">
			<div class="swiperTitle"><span><em class="hrLeft"></em><!-- 产品展示 --><?php echo $this->_tpl_vars['langs']['display']; ?><em class="hrRight"></em></span></div>
		</div>
		<!-- Swiper -->
		<div class="z swiper-container">
			<div class="swiper-wrapper">
				<!-- <div class="swiper-slide"><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/luntai_03.jpg" /></a></div>
				<div class="swiper-slide"><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/luntai_03.jpg" /></a></div>
				<div class="swiper-slide"><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/luntai_03.jpg" /></a></div>
				<div class="swiper-slide"><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/luntai_03.jpg" /></a></div>
				<div class="swiper-slide"><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/luntai_03.jpg" /></a></div> -->
				<?php foreach($this->_tpl_vars['recommends'] as $this->_tpl_vars['v']){; ?>
				<div class="swiper-slide zz" data-z = <?php echo $this->_tpl_vars['v']['pro_id']; ?>><a><img src="<?php PrintImageURL($this->_tpl_vars['v']['path'], $this->_tpl_vars['v']['filename'], 2); ?>" /></a></div>
				<?php }; ?>
			</div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<!--/**************/-->
			<!--竖线不可删-->
			<div style="position: absolute;background-color: #FFFFFF;width: 2px;height: 409px;left: 0px;top: 0px;z-index: 1000"></div>
			<!--/**************/-->
		</div>
	</div>
	<!-- Swiper JS -->
	<script src="<?php echo $this->_tpl_vars['t_url']; ?>util/js/swiper.min.js"></script>
	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			nextButton: '.swiper-button-next',
			prevButton: '.swiper-button-prev',
			paginationClickable: true,
			slidesPerView: 3,
			spaceBetween: 1,
			//autoplay: 2500,
			autoplayDisableOnInteraction: false
		});
	</script>

	<div class="banner product">
		<div class="banner bannerBox productBox">
			<img src="<?php echo $this->_tpl_vars['t_url']; ?>images/product_06.jpg" />
		</div>
	</div>

	<div class="brand" id="tiaozhuan">
		<div class="z">
			<div class="swiperTitle"><span><em class="hrLeft"></em><!-- 合作品牌 --><?php echo $this->_tpl_vars['langs']['CoopBrand']; ?><em class="hrRight"></em></span></div>
		</div>
		<ul class="z">
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="<?php echo $this->_tpl_vars['t_url']; ?>images/businessmen_logo_53.jpg" /></a></li>
		</ul>
	</div>
</div>

<!--footer-->
<?php $this->display('footer.tpl'); ?>
<script src="<?php echo $this->_tpl_vars['t_url']; ?>util/js/jquery.min.js"></script>
<script>
	$('.zz').on("click",function(){
		var id=$(this).attr('data-z');
		//console.log(id);
		$.get("poducts",function(data) {
		//alert(location.search);
		/*$('.iframeData').html(data);*/
		window.location = 'products?pro_id='+id;
			});	

		})


	
</script>
 </body>
</html>
