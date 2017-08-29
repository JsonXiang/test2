
<!--head-->
{include header.tpl}
<!--page-->
<div class="page">

	<div class="banner">
		<div class="bannerBox bannerBox1">
			<img src="{$t_url}util/images/banner.jpg" />
			<div><h5>HELEN</h5><span><!-- 了解更多 -->{$langs.more}</span></div>
		</div>
	</div>

	<div class="pageMenu">
		<div class="z">
			<a href="{PURL('about')}"><img src="{$t_url}images/{$langs.pic1}" /></a>
			<a href="{PURL('products')}"><img src="{$t_url}images/{$langs.pic2}" /></a>
			<a href="{PURL('news')}"><img src="{$t_url}images/{$langs.pic3}" /></a>
			<a href="{PURL('ToJoin')}"><img src="{$t_url}images/{$langs.pic4}" /></a>
			<a onclick="javascript:document.getElementById('tiaozhuan').scrollIntoView()"><img src="{$t_url}images/{$langs.pic5}" /></a>
			<a href="{PURL('contactUs')}"><img src="{$t_url}images/{$langs.pic6}" /></a>
		</div>
	</div>

	<div class="swiper">
		<div class="z">
			<div class="swiperTitle"><span><em class="hrLeft"></em><!-- 产品展示 -->{$langs.display}<em class="hrRight"></em></span></div>
		</div>
		<!-- Swiper -->
		<div class="z swiper-container">
			<div class="swiper-wrapper">
				<!-- <div class="swiper-slide"><a><img src="{$t_url}images/luntai_03.jpg" /></a></div>
				<div class="swiper-slide"><a><img src="{$t_url}images/luntai_03.jpg" /></a></div>
				<div class="swiper-slide"><a><img src="{$t_url}images/luntai_03.jpg" /></a></div>
				<div class="swiper-slide"><a><img src="{$t_url}images/luntai_03.jpg" /></a></div>
				<div class="swiper-slide"><a><img src="{$t_url}images/luntai_03.jpg" /></a></div> -->
				{foreach $recommends as $v}
				<div class="swiper-slide zz" data-z = {$v.pro_id}><a><img src="{PrintImageURL($v.path, $v.filename, 2)}" /></a></div>
				{/foreach}
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
	<script src="{$t_url}util/js/swiper.min.js"></script>
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
			<img src="{$t_url}images/product_06.jpg" />
		</div>
	</div>

	<div class="brand" id="tiaozhuan">
		<div class="z">
			<div class="swiperTitle"><span><em class="hrLeft"></em><!-- 合作品牌 -->{$langs.CoopBrand}<em class="hrRight"></em></span></div>
		</div>
		<ul class="z">
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
			<li><a><img src="{$t_url}images/businessmen_logo_53.jpg" /></a></li>
		</ul>
	</div>
</div>

<!--footer-->
{include footer.tpl}
<script src="{$t_url}util/js/jquery.min.js"></script>
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
