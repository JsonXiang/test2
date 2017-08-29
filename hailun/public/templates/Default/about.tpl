
	<!--head-->
		{include header.tpl}
		<!--page-->
		<div class="page">
			<div class="banner util">
				<div class="bannerBox">
					<img src="{$t_url}util/images/banner.jpg" />
					<div><h5>关于我们</h5><p>ABOUT US</p></div>
				</div>
			</div>
			
			<div class="tab">
				<!-- Swiper -->
			    <div class="z swiper-container swiper-no-swiping">
			        <div class="swiper-wrapper">
			        	<!--企业介绍-->
					
					
			        <div class="swiper-slide Introduction">
			            	<div class="slideBox">
			            	{echo html($result.0.content)}
<!-- 
			            	<div style="margin-top: 93px; padding: 0 104px 0 63px; float: left; padding-bottom: 145px;">
			            		<div class="img"><img src="{$t_url}images/Store_17.jpg" /></div>
			            		<h5 style="margin-top: 4px;">北京海纳川汽车部件股份有限公司</h5>
			            		<h5 style="margin-bottom: 28px;">(BEIJING HAINACHUAN AUTOMOTIVE PARTS CO., LTD.)</h5>
			            		
			            		<p>北京海纳川汽车部件股份有限公司（简称“海纳川公司”），是一家国际化、综合性的汽车零部件集团企业。2008年1月在北京注册成立，
					}
是由北京汽车集团有限公司（占股比60%）与北京工业发展投资管理有限公司（占股比40%）共同投资组建而成，注册资本24.68亿元人民币。
2016年，海纳川公司营业收入488亿元。</p>
								<p>作为国内一流的汽车零部件供应商，海纳川公司一直致力于为全球知名整车客户提供模块化、集成化供货，同时积极推进汽车轻量化、电
动化、智能化技术的研发工作，着力为广大客户创造最大价值。</p>
								<p>从精致到极致，分毫之间的差异，就是海纳川公司所秉承的执着匠心。海纳川公司秉承“创新、勤奋、责任、厚道”的文化理念，以宽大
的胸怀和执着的姿态，引领零部件产业与未来科技的不断发展。</p>
			            		<div class="img" style="margin-top: 94px; margin-bottom: 29px;"><img src="{$t_url}images/Store_38.jpg" /></div>
			            		<p>目前海纳川公司旗下共有所属企业50余家，客户遍及国内国际40余家整车企业。海纳川公司所属企业产品覆盖汽车座椅、汽车内、外饰、
汽车动力系统、汽车底盘系统、汽车车身系统、汽车电子电器等系列，形成了技术领先和成本领先的产品组合，具备了与不同层次整车同步开发
产品的能力。2011年，海纳川公司成功收购荷兰英纳法集团100%股权，开启了国际化发展新篇章。2015年，山东滨州渤海活塞股份有限公司国
有股权无偿划转到北汽集团，为海纳川实现境内证券市场融资创造了条件。</p>
								<p>海纳川公司致力于为广大整车客户提供模块化、集成化的零部件供货业务，形成了“汽车内外饰系统、汽车电子控制系统、汽车底盘系统、
汽车动力系统、汽车车身系统”等产品多样、能力卓越的整车供货能力和同步开发能力。</p>
								<p>“十三五”期间，海纳川公司将紧紧抓住汽车产业新技术革命的机遇，以研发为支撑，以客户为导向，以资本为纽带，以“铸精品部件，伴
车行天下”为使命，通过“产业实体化、团队专业化、市场国际化、资产证券化”的发展路径，着力将企业发展成为全球化的汽车
核心零部件研发、制造及服务提供商</p>
			            	</div>
 -->
			            	</div>
			            </div> 

			            <!--全球分布-->
			            <div class="swiper-slide distributed"><!-- <img style="margin-top: -27px;" class="z" src="{$t_url}images/map_02.jpg" /> -->{echo html($result.1.content)}</div>
			            <!--文化理念-->
			            <div class="swiper-slide culture">
			            	<div class="slideBox">
			            		<!-- <h5 class="z" align="center">文化理念</h5>
			            		<div class="culture-l">
			            			<img src="{$t_url}images/culture_12.jpg" />
			            			<p style="margin-top: 127px; padding: 0 65px 0 54px;">这一创意取义于“海纳川”：圆形的整体结构寓意海纳川全
球化的发展战略，蔚蓝色的圆形寓意海洋；蓝色的主色调，
代表新企业严谨的管理；渐变的波纹、“川”字的变形，简
明地阐述了“海纳川”的内涵，鲜明地表现了海纳川的稳重
而又灵动的企业特点，也表现出我们管理团队和全体员工远
大的抱负、必胜的信心和“海纳百川”的胸襟</p>
			            		</div>
			            		<div class="culture-r">
			            			<p style="margin-bottom: 140px; margin-top: 44px; padding-right: 60px;">海纳川公司致力于企业发展方式的创新，在汽车工业发展的“新常态”
下，秉承“创新、勤奋、责任、厚道”的文化理念，立志通过“产业
实体化、团队专业化、市场国际化、资产证券化”的发展路径，着力
将企业发展成为全球化的汽车核心零部件研发、制造及服务提供商。</p>
			            			<img src="{$t_url}images/culture_30.jpg" />
			            		</div> -->
			            		{echo html($result.2.content)}
			            	</div>
			            </div>
			            <!--领导团队-->
			            <div class="swiper-slide team">
			            	<div id="tim" class="slideBox">
					{echo html($result.3.content)}

			            		
			            		
			            	</div>
			            </div>
			            <!--合作伙伴-->
			            <div class="swiper-slide trademark"><div class="slideBox">
			            	<ul class="z" id="conpany">
			            		<!-- <li><a><img src="{$t_url}images/trademark_17.jpg" /></a></li>  -->
			            		{echo html($result.4.content)}
			            	</ul>

			            </div></div>
			        </div>
			        <!-- Add Pagination -->
			        <ul class="z swaper-tab">
			        	<li class="active">{$langs.Introduction}<em></em></li>
			        	<li>{$langs.global}<em></em></li>
			        	<li>{$langs.Cultural}<em></em></li>
			        	<li>{$langs.Team}<em></em></li>
			        	<li>{$langs.partner}<em></em></li>
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
<script>
	$(".swiper-pagination span").on("click",function(){
		var index = $(this).index();
		console.log(index);
		$('.swaper-tab li').removeClass("active");
		$('.swaper-tab li').eq(index).addClass("active");
	})


	var html=$("#tim").children().children();
	$("#tim").children().remove();
	$("#tim").html(html);

	var htm=$("#conpany").children().children();
	$("#conpany").children().remove();
	$("#conpany").html(htm);


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
