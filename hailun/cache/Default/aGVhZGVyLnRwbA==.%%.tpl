
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title><?php echo $this->_tpl_vars['title']; ?></title>
		<link rel="icon" href="<?php echo $this->_tpl_vars['t_url']; ?>images/favicon.ico" type="image/x-icon" />
    	<link rel="shortcut icon" href="<?php echo $this->_tpl_vars['t_url']; ?>images/favicon.ico" type="image/x-icon" />
	
	<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>css/styles.css" type="text/css">



		<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>util/css/swiper.min.css" />

		<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>util/css/util.css" />
		<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>css/<?php echo $this->_tpl_vars['css2']; ?>" />

		
		
	<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>css/menu.css" type="text/css">
	<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>css/<?php echo $this->_tpl_vars['css']; ?>" />
	
	<script type="text/javascript">
	siteConfig={
		siteurl:"<?php echo $this->_tpl_vars['baseurl']; ?>",
		sitename:"<?php echo $this->_tpl_vars['sitename']; ?>",
		scrolltop:"<?php echo $this->_tpl_vars['langs']['backtotop']; ?>"
	};
	</script>

	<script type="text/javascript" src="<?php echo $this->_tpl_vars['public']; ?>js/jquery-1.2.6.min.js"></script>
	<script type="text/javascript" src="<?php echo $this->_tpl_vars['public']; ?>js/jquery.addon.js"></script>
	<script type="text/javascript" src="<?php echo $this->_tpl_vars['public']; ?>js/common.js"></script>
	</head>
	<body>

	<!-- 顶部导航栏 start -->
	<div id="shortcut">
		<div class="w">
			<ul class="fl lh">
				<?php if(IS_CHINESE){; ?>
					<li class="fore1"><div class="cn_on" title="<?php echo $this->_tpl_vars['langs']['chinese']; ?>"></div></li>
					<li><div class="en" title="<?php echo $this->_tpl_vars['langs']['change_lan']; ?>"></div></li>
				<?php }else{; ?>
					<li class="fore1"><div class="cn" title="<?php echo $this->_tpl_vars['langs']['change_lan']; ?>"></div></li>
					<li><div class="en_on" title="<?php echo $this->_tpl_vars['langs']['english']; ?>"></div></li>
				<?php }; ?>
			</ul>
			
			<!-- <ul class="fr lh">
				<li class="fore1 ld"><b></b><a href="javascript:addToFavorite()"><?php echo $this->_tpl_vars['langs']['addfavorite']; ?></a></li>
				<li><a href="<?php PURL('about'); ?>"><?php echo $this->_tpl_vars['langs']['aboutus']; ?></a></li>
				<li><a href="<?php PURL('about?id=2'); ?>"><?php echo $this->_tpl_vars['langs']['contactus']; ?></a></li>
				<li class="menu">
					<dl>
						<dt class="ld"><?php echo $this->_tpl_vars['langs']['services']; ?><b></b></dt>
						<dd>
							<div><a href="<?php PURL('about?id=14'); ?>"><?php echo $this->_tpl_vars['langs']['culture']; ?></a></div>
							<div><a href="<?php PURL('about?id=15'); ?>"><?php echo $this->_tpl_vars['langs']['organization']; ?></a></div>
						</dd>
					</dl>
				</li>
				<li class="menu w1">
					<dl class="w2">
						<dt class="ld"><?php echo $this->_tpl_vars['langs']['companys']; ?><b></b></a></dt>
						<dd>
							<div><a href="<?php PURL('about?id=11'); ?>"><?php echo $this->_tpl_vars['langs']['company1']; ?></a></div>
							<div><a href="<?php PURL('about?id=12'); ?>"><?php echo $this->_tpl_vars['langs']['company2']; ?></a></div>
							<div><a href="<?php PURL('about?id=13'); ?>"><?php echo $this->_tpl_vars['langs']['company3']; ?></a></div>
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
						<img src="<?php echo $this->_tpl_vars['t_url']; ?>images/icon_phone.png" />
						<a class="tel" href="tel:400-880-2088">400-880-2088</a>
						<ul>
							<li class="index"><a href="<?php PURL(''); ?>"><?php echo $this->_tpl_vars['langs']['home']; ?></a></li>
							<li><a href="<?php PURL('about'); ?>"><!-- 海轮急配 --><?php echo $this->_tpl_vars['langs']['hailun']; ?></a></li>
						</ul>
					</div>
					<div class="z topMenu">
						<img src="<?php echo $this->_tpl_vars['t_url']; ?>images/logo.png" />
						<ul class="topMenuUi">
							<li class="topMenuLi <?php echo $this->_tpl_vars['z_active1']; ?>" ><a href="<?php PURL(''); ?>"><?php echo $this->_tpl_vars['langs']['home']; ?></a></li>
							<li class="topMenuLi <?php echo $this->_tpl_vars['z_active2']; ?>"><a href="<?php PURL('about'); ?>"><?php echo $this->_tpl_vars['langs']['aboutus']; ?></a>
								<!-- <ul>
									<li><a><?php echo $this->_tpl_vars['langs']['aboutus']; ?></a></li>
									<li><a><?php echo $this->_tpl_vars['langs']['products']; ?></a></li>
									<li><a><?php echo $this->_tpl_vars['langs']['news']; ?></a></li>
									<li><a><?php echo $this->_tpl_vars['langs']['ToJoin']; ?></a></li>
									<li><a><?php echo $this->_tpl_vars['langs']['contactus']; ?></a></li>
									<li><a>CN</a></li>
								</ul> -->
							</li>
							<li class="topMenuLi <?php echo $this->_tpl_vars['z_active3']; ?>"><a href="<?php PURL('products'); ?>"><?php echo $this->_tpl_vars['langs']['products']; ?></a>
								<ul>
									<!-- <li><a><?php echo $this->_tpl_vars['langs']['aboutus']; ?></a></li>
									<li><a><?php echo $this->_tpl_vars['langs']['products']; ?></a></li>
									<li><a><?php echo $this->_tpl_vars['langs']['news']; ?></a></li>
									<li><a><?php echo $this->_tpl_vars['langs']['ToJoin']; ?></a></li>
									<li><a><?php echo $this->_tpl_vars['langs']['contactus']; ?></a></li> -->
									 <?php foreach($this->_tpl_vars['cats'] as $this->_tpl_vars['v']){; ?>
										<li><a href="<?php PURL('products?cat='); ?><?php echo $this->_tpl_vars['v']['cat_id']; ?>"><?php echo $this->_tpl_vars['v']['name']; ?></a></li>
									 <?php }; ?>

								</ul>
							</li>
							<li class="topMenuLi  <?php echo $this->_tpl_vars['z_active4']; ?>"><a href="<?php PURL('news'); ?>"><?php echo $this->_tpl_vars['langs']['news']; ?></a></li>
							<li class="topMenuLi  <?php echo $this->_tpl_vars['z_active5']; ?>"><a href="<?php PURL('ToJoin'); ?>"><?php echo $this->_tpl_vars['langs']['ToJoin']; ?></a></li>
							<li class="topMenuLi  <?php echo $this->_tpl_vars['z_active6']; ?>"><a href="<?php PURL('contactUs'); ?>"><?php echo $this->_tpl_vars['langs']['contactus']; ?></a></li>
							<li class="topMenuLi"><a>CN</a></li>
						</ul>
					</div>
				</div>
			</div>
			<?php if($this->_tpl_vars['pagenav']){; ?>
	<div class="w">
		<div class="nav">
			<div id="pagenav"><span class=navicon></span><?php echo $this->_tpl_vars['langs']['yourarehere']; ?>&nbsp;&nbsp;<?php echo $this->_tpl_vars['pagenav']; ?></div>
		</div>
	</div>
	<?php }; ?>
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
			setCookie('<?php echo COOKIE_KEY; ?>lang', 'Chinese', 30);
			document.location=window.location.href.replace(/#[\w]*/ig, '');
		});
		$("#shortcut .en").click(function(){
			setCookie('<?php echo COOKIE_KEY; ?>lang', 'English', 30);
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