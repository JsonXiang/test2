
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>{$title}</title>
		<link rel="icon" href="{$t_url}images/favicon.ico" type="image/x-icon" />
    	<link rel="shortcut icon" href="{$t_url}images/favicon.ico" type="image/x-icon" />
	
	<link rel="stylesheet" href="{$t_url}css/styles.css" type="text/css">



		<link rel="stylesheet" href="{$t_url}util/css/swiper.min.css" />

		<link rel="stylesheet" href="{$t_url}util/css/util.css" />
		<link rel="stylesheet" href="{$t_url}css/{$css2}" />

		
		
	<link rel="stylesheet" href="{$t_url}css/menu.css" type="text/css">
	<link rel="stylesheet" href="{$t_url}css/{$css}" />
	
	<script type="text/javascript">
	siteConfig={
		siteurl:"{$baseurl}",
		sitename:"{$sitename}",
		scrolltop:"{$langs.backtotop}"
	};
	</script>

	<script type="text/javascript" src="{$public}js/jquery-1.2.6.min.js"></script>
	<script type="text/javascript" src="{$public}js/jquery.addon.js"></script>
	<script type="text/javascript" src="{$public}js/common.js"></script>
	</head>
	<body>

	<!-- 顶部导航栏 start -->
	<div id="shortcut">
		<div class="w">
			<ul class="fl lh">
				{if IS_CHINESE}
					<li class="fore1"><div class="cn_on" title="{$langs.chinese}"></div></li>
					<li><div class="en" title="{$langs.change_lan}"></div></li>
				{else}
					<li class="fore1"><div class="cn" title="{$langs.change_lan}"></div></li>
					<li><div class="en_on" title="{$langs.english}"></div></li>
				{/if}
			</ul>
			
			<!-- <ul class="fr lh">
				<li class="fore1 ld"><b></b><a href="javascript:addToFavorite()">{$langs.addfavorite}</a></li>
				<li><a href="{PURL('about')}">{$langs.aboutus}</a></li>
				<li><a href="{PURL('about?id=2')}">{$langs.contactus}</a></li>
				<li class="menu">
					<dl>
						<dt class="ld">{$langs.services}<b></b></dt>
						<dd>
							<div><a href="{PURL('about?id=14')}">{$langs.culture}</a></div>
							<div><a href="{PURL('about?id=15')}">{$langs.organization}</a></div>
						</dd>
					</dl>
				</li>
				<li class="menu w1">
					<dl class="w2">
						<dt class="ld">{$langs.companys}<b></b></a></dt>
						<dd>
							<div><a href="{PURL('about?id=11')}">{$langs.company1}</a></div>
							<div><a href="{PURL('about?id=12')}">{$langs.company2}</a></div>
							<div><a href="{PURL('about?id=13')}">{$langs.company3}</a></div>
						</dd>
					</dl>
				</li>
			</ul> -->
			<span class="clr"></span>
		</div>
	</div>

			<!--head-->

			<div class="head">
				<div class="headBox">
					<div class="z topTitle">
						<img src="{$t_url}images/icon_phone.png" />
						<a class="tel" href="tel:400-880-2088">400-880-2088</a>
						<ul>
							<li class="index"><a href="{PURL('')}">{$langs.home}</a></li>
							<li><a href="{PURL('about')}"><!-- 海轮急配 -->{$langs.hailun}</a></li>
						</ul>
					</div>
					<div class="z topMenu">
						<img src="{$t_url}images/logo.png" />
						<ul class="topMenuUi">
							<li class="topMenuLi {$z_active1}" ><a href="{PURL('')}">{$langs.home}</a></li>
							<li class="topMenuLi {$z_active2}"><a href="{PURL('about')}">{$langs.aboutus}</a>
								<!-- <ul>
									<li><a>{$langs.aboutus}</a></li>
									<li><a>{$langs.products}</a></li>
									<li><a>{$langs.news}</a></li>
									<li><a>{$langs.ToJoin}</a></li>
									<li><a>{$langs.contactus}</a></li>
									<li><a>CN</a></li>
								</ul> -->
							</li>
							<li class="topMenuLi {$z_active3}"><a href="{PURL('products')}">{$langs.products}</a>
								<ul>
									<!-- <li><a>{$langs.aboutus}</a></li>
									<li><a>{$langs.products}</a></li>
									<li><a>{$langs.news}</a></li>
									<li><a>{$langs.ToJoin}</a></li>
									<li><a>{$langs.contactus}</a></li> -->
									 {foreach($cats as $v)}
										<li><a href="{PURL('products?cat=')}{$v.cat_id}">{$v.name}</a></li>
									 {/foreach}

								</ul>
							</li>
							<li class="topMenuLi  {$z_active4}"><a href="{PURL('news')}">{$langs.news}</a></li>
							<li class="topMenuLi  {$z_active5}"><a href="{PURL('ToJoin')}">{$langs.ToJoin}</a></li>
							<li class="topMenuLi  {$z_active6}"><a href="{PURL('contactUs')}">{$langs.contactus}</a></li>
							<li class="topMenuLi"><a>CN</a></li>
						</ul>
					</div>
				</div>
			</div>
			{if $pagenav}
	<div class="w">
		<div class="nav">
			<div id="pagenav"><span class=navicon></span>{$langs.yourarehere}&nbsp;&nbsp;{$pagenav}</div>
		</div>
	</div>
	{/if}
	<!-- 当前位置导航栏 end -->

	<script type="text/javascript">
	(function() {
		//固定顶部Div不随页面滚动
		js_scrolly({
			id:'shortcut', l:0, t:0, f:1
		});

		$("#shortcut .menu").Jdropdown({
			delay: 50
		});

		//加载scrolltop
		scrolltotop.init();

		//切换语言动作
		$("#shortcut .cn").click(function(){
			setCookie('{echo COOKIE_KEY}lang', 'Chinese', 30);
			document.location=window.location.href.replace(/#[\w]*/ig, '');
		});
		$("#shortcut .en").click(function(){
			setCookie('{echo COOKIE_KEY}lang', 'English', 30);
			document.location=window.location.href.replace(/#[\w]*/ig, '');
		});

		/*//JQuery多级菜单
		$("ul.sf-menu").superfish();*/

		//搜索关键词变化
		var searchkey_obj =$("#searchkey");
		var keyword = searchkey_obj.val();
		searchkey_obj.bind("focus",function(){
			if (this.value==keyword){
				this.value="";
				this.style.color="#333";
				this.style.background="#FFF";
				this.style.borderColor="#CC3300";
			}
		}).bind("blur",function(){
			if (!this.value){
				this.value=keyword;
				this.style.color="#999";
				this.style.background="#d8d8d8";
				this.style.borderColor="#3C3C3C";
			}
		});
	})();


	</script>