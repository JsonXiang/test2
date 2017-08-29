<?php $this->display('header.tpl'); ?>
<!--page-->
<div class="page">

	<div class="banner util">
		<div class="bannerBox">
			<img src="<?php echo $this->_tpl_vars['t_url']; ?>util/images/banner.jpg" />
			<div><h5>新闻动态</h5><p>NEWS INFORMAION</p></div>
		</div>
	</div>

	<div class="tab">
		<!-- Swiper -->
		<div class="z swiper-container swiper-no-swiping">
			<div class="swiper-wrapper">
				<!--企业新闻-->
				<div class="swiper-slide  trademark">
					<div class="slideBox">
						<div class="z" style="margin-top: 54px;">
							<div id="iframeBox1">

							</div>
						</div>
					</div>
				</div>
				<!--行业新闻-->
				<div class="swiper-slide trademark">
					<div class="slideBox">
						<div id="iframeBox2">

						</div>

					</div>
				</div>
			</div>
			<!-- Add Pagination -->
			<ul class="z swaper-tab">
				<li  class="active"><a data-url="index.html"><!-- 企业新闻 --><?php echo $this->_tpl_vars['langs']['companyNews']; ?></a><em></em></li>
				<li><a data-url="index.html"><!-- 行业新闻 --><?php echo $this->_tpl_vars['langs']['TradeNews']; ?></a><em></em></li>
			</ul>
			<div class="swiper-pagination"></div>
		</div>
		<!-- Swiper JS -->
		<script src="<?php echo $this->_tpl_vars['t_url']; ?>util/js/swiper.min.js"></script>

		<!-- Initialize Swiper -->
		<script>
			var swiper = new Swiper('.swiper-container', {
				pagination: '.swiper-pagination',
				paginationClickable: true,
				speed:600,
				//spaceBetween: 30,
				centeredSlides: true,
				//autoplay: 2500,
				autoplayDisableOnInteraction: false
			});
		</script>
	</div>

</div>

<!--footer-->
<?php $this->display('footer.tpl'); ?>
</body>
</html>
<script src="<?php echo $this->_tpl_vars['t_url']; ?>util/js/jquery.min.js"></script>
<script src="<?php echo $this->_tpl_vars['t_url']; ?>util/js/jquery.pagination.js"></script>
<script>
	$(".swiper-pagination span").on("click",function(){
		var index = $(this).index();
		$('.swaper-tab li').removeClass("active");
		$('.swaper-tab li').eq(index).addClass("active");
	})

	$('.page-box').pagination({
		pageCount: 10, //初始化时总页数10页
		totalData: 0,	//数据总条数
		current: 1,	//当前第几页
		showData: 0,	//每页显示的条数
		prevCls: 'prev',	//上一页class
		nextCls: 'next',	//下一页class
		prevContent: '上一页',	//上一页节点内容
		nextContent: '下一页',	//下一页节点内容
		activeCls: 'active',	//当前页选中状态class名
		count: 2,	//当前选中页前后页数
		coping: true,	//是否开启首页和末页，值为boolean
		isHide: false,	//总页数为0或1时隐藏分页控件
		keepShowPN: true,	//是否一直显示上一页下一页
		homePage: '首页',	//首页节点内容，默认为空
		endPage: '尾页',	//尾页节点内容，默认为空
		jump: true,	//是否开启跳转到指定页数，值为boolean类型
		jumpIptCls: 'jump-ipt',	//文本框内容
		jumpBtnCls: 'jump-btn',	//跳转按钮class
		jumpBtn: '跳转',	//跳转按钮文本内容
		/*callback:function(api){
		 var data = {
		 page: api.getCurrent(),
		 name: 'mss',
		 say: 'oh'
		 };
		 var url = 'http://www.www.com'
		 $.getJSON(url,data,function(json){
		 console.log(json);
		 });
		 }*/
	});


	//	$(".swaper-tab li").on("click",function(){
	//		var url = $(this).children("a").attr("data-url");
	//		$.get(url,function(data) {
	//			$('.slideBox1').html(data);
	//		});
	//	})
	$.get("qiyenewsList",function(data) {
		$('#iframeBox1').html(data);
	});
	$.get("hangneinewsList",function(data) {
		$('#iframeBox2').html(data);
	});

</script>
<script>
	$('div.z div.swiper-pagination span:first-child').on("click",function(){
		$.get("qiyenewsList",function(data) {
			$('#iframeBox1').html(data);
		});
	})
	$('div.z div.swiper-pagination span:last-child').on("click",function(){
		$.get("hangneinewsList",function(data) {
			$('#iframeBox2').html(data);
		});
	})

	if(window.location.search.substring(3))
	{
		var  about=window.location.search.substring(3);
		var index = "";
		index=about;
		$('.swaper-tab li').removeClass("active");
		$('.swaper-tab li').eq(index).addClass("active");
		swiper.slideTo(index, 10, false);

	}
</script>