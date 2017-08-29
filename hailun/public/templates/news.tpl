<!-- 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>海轮集团</title>
		<link rel="icon" href="{$t_url}util/images/favicon.ico" type="image/x-icon" />
    	<link rel="shortcut icon" href="{$t_url}util/images/favicon.ico" type="image/x-icon" />
    	
		<link rel="stylesheet" href="{$t_url}util/css/swiper.min.css" />
		<link rel="stylesheet" href="{$t_url}util/css/util.css" />
		<link rel="stylesheet" href="{$t_url}css/aboutUS.css" />
		<link rel="stylesheet" href="{$t_url}css/news.css" />
	</head>
	
	<body> -->
		<!--head-->
		{include header.tpl}
		<!--page-->
		<div class="page">
			
			<div class="banner util">
				<div class="bannerBox">
					<img src="{$t_url}util/images/banner.jpg" />
					<div><h5>新闻动态</h5><p>NEWS INFORMAION</p></div>
				</div>
			</div>
			
			<div class="tab">
				<!-- Swiper -->
			    <div class="z swiper-container swiper-no-swiping">
			        <div class="swiper-wrapper">
			        	<!--企业新闻-->
			            <div class="swiper-slide">
			            	<div class="slideBox">
			            		<!-- <div class="z" style="margin-top: 54px;">企业新闻</div> -->
			            		<div class="z" style="margin-top: 54px;">企业新闻

	


			{PrintInfo($errorinfo)}
			<!-- 输出错误信息 end -->

			<ul>
			
			{$num = 1}
			<!-- {var_dump($news.3)} -->
			{foreach $news AS $new}

				<li class="{if is_int($num/2)}bg{/if}"><span class="ntitle"><span class="num">{echo $start + $num}.</span><a href="{if $new.linkurl}{$new.linkurl}{else}{PURL('news?id=' . $new.n_id)}{/if}" >{$new.title}</a></span><span class="date">{echo DisplayDate($new.created)}</span></li>
				{$num += 1}
			{/foreach}

			</ul>
			<!-- 分页 start -->
			{if $pagelist}<div id="pagelist">{$pagelist}</div>{/if}
		<!-- 分页 end -->

			            		</div>
			            	</div>
			            </div>
			            <!--行业新闻-->
			            <div class="swiper-slide trademark"><div class="slideBox">
			            	<ul class="z" style="margin-top: 54px;">
			            		<li><a>
			            			<img src="{$t_url}images/trademark_17.jpg" />
			            			<div><p class="z newsTitle ellipsis">鬼地方个第三方公司告诉告诉对方公司的风格都是法国的风格的双方各</p>
			            			<p class="z newsTime">2017-6-16 9:45</p></div>
			            		</a></li>
								<li><a>
			            			<img src="{$t_url}images/trademark_17.jpg" />
			            			<div><p class="z newsTitle ellipsis">鬼地方个第三方公司告诉告诉对方公司的风格都是法国的风格的双方各</p>
			            			<p class="z newsTime">2017-6-16 9:45</p></div>
			            		</a></li>
			            		<li><a>
			            			<img src="{$t_url}images/trademark_17.jpg" />
			            			<div><p class="z newsTitle ellipsis">鬼地方个第三方公司告诉告诉对方公司的风格都是法国的风格的双方各</p>
			            			<p class="z newsTime">2017-6-16 9:45</p></div>
			            		</a></li>
			            		<li><a>
			            			<img src="{$t_url}images/trademark_17.jpg" />
			            			<div><p class="z newsTitle ellipsis">鬼地方个第三方公司告诉告诉对方公司的风格都是法国的风格的双方各</p>
			            			<p class="z newsTime">2017-6-16 9:45</p></div>
			            		</a></li>
			            		<li><a>
			            			<img src="{$t_url}images/trademark_17.jpg" />
			            			<div><p class="z newsTitle ellipsis">鬼地方个第三方公司告诉告诉对方公司的风格都是法国的风格的双方各</p>
			            			<p class="z newsTime">2017-6-16 9:45</p></div>
			            		</a></li>
			            		<li><a>
			            			<img src="{$t_url}images/trademark_17.jpg" />
			            			<div><p class="z newsTitle ellipsis">鬼地方个第三方公司告诉告诉对方公司的风格都是法国的风格的双方各</p>
			            			<p class="z newsTime">2017-6-16 9:45</p></div>
			            		</a></li>
			            	</ul>
			            	
			            	<div class="page-box"></div>
			            </div></div>
			        </div>
			        <!-- Add Pagination -->
			        <ul class="z swaper-tab">
			        	<li class="active">企业新闻<em></em></li>
			        	<li>行业新闻<em></em></li>
			        </ul>
			        <div class="swiper-pagination"></div>
			    </div>
			    <!-- Swiper JS -->
			    <script src="{$t_url}util/js/swiper.min.js"></script>
			
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
		{include footer.tpl}
	</body>
</html>
<script src="{$t_url}util/js/jquery.min.js"></script>
<script src="{$t_url}util/js/jquery.pagination.js"></script>
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
	
	$('.iframeData li').on("click",function(){
		$.get("productListInfo.html",function(data) {
			$('.iframeData').html(data);
		});
	})
</script>
<!-- 新闻列表页 end -->


