
<!-- 产品列表页 start -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>海轮集团</title>
		<link rel="icon" href="{$t_url}images/favicon.ico" type="image/x-icon" />
    	<link rel="shortcut icon" href="{$t_url}images/favicon.ico" type="image/x-icon" />
    	
		<link rel="stylesheet" href="{$t_url}util/css/swiper.min.css" />
		<link rel="stylesheet" href="{$t_url}util/css/util.css" />
		<link rel="stylesheet" href="{$t_url}/css/product.css" />
	</head>
	
	<body>
		<!--head-->
		{include header.tpl}




		<!--page-->
		<div class="page">
			
			<div class="banner util">
				<div class="bannerBox">
					<img src="{$t_url}util/images/banner.jpg" />
					<div><h5>产品</h5><p>PRODUCT</p></div>
				</div>
			</div>
			<div class="product">
				<div class="z" style="padding-top: 24px;">
					<div class="p-left">
						<div class="p-l-title">
							<h5><!-- 海轮产品 -->{$langs.hlProduct}</h5>
							<p>HELEN PRODUCTS</p>
						</div>
						<div class="p-l-tab">
						<!-- 循环出右边的分类 -->
						{foreach $pcategories as $v}
							<ul class="z card">						
								<li  class="navigate" ><div data-a={$v.cat_id}><em></em><a  class ="abc">{$v.name}</a></div> 
									<ul class="collapse-content" style="display: block;">
									{foreach $v.children as $vv}
										<li class="active" ><a data-url="{PURL('productlist?cat=' . $vv.cat_id)}">+{$vv.name}</a></li>
									{/foreach}
									</ul>
								</li>
							</ul>
						{/foreach}
						</div>
					</div>
					<div class="p-right">
						<div class="p-r-title">
							<span>※</span>
							<span><!-- 海轮产品 -->{$c}{$langs.hlProduct}</span>
						</div>
						<div id="iframeBox" class="p-r-box">
							
						</div>
					</div>
				</div>
			</div>
			
		</div>
		{include footer.tpl}
	
		
	</body>
</html>
<script src="{$t_url}util/js/jquery.min.js"></script>
<script>
	$("#aa").on("click",function(){
		$.get('bbb.html',function(data) {
    		$('#bbb').html(data);
		});
	})
	
	$(".p-l-tab .navigate div").on("click",function(){
		$(this).next().toggle("100");
		var cat = $(this).attr('data-a');
		//alert(cat);
		//alert("{PURL('productList?cat=')}"+cat+'&c=1');
		$.get("{PURL('productList?cat=')}"+cat+'&c=1',function(data) {
			$('.iframeData').html(data);
		});
	})
	
	
	$(".p-l-tab .navigate li").on("click",function(){
		$(".p-l-tab .navigate li").removeClass("active");
		$(this).addClass("active");
		var url = $(this).children("a").attr("data-url");
		$.get(url,function(data) {
    		$('#iframeBox').html(data);
		});
	})



		url=window.location.search;
		
		if(url.indexOf("pro_id")!=-1){
			$.get("{PURL('productListInfo')}"+url,function(data) {
			$('#iframeBox').html(data);
		});

		}else if(url.indexOf("cat")!=-1){
			$.get("{PURL('productList')}"+url,function(data) {
			$('#iframeBox').html(data);
		});

		}else{
			$.get("{PURL('productList?cat=0')}",function(data) {
			$('#iframeBox').html(data);
			});
		}

		
</script>
<!-- 产品列表页 end -->


