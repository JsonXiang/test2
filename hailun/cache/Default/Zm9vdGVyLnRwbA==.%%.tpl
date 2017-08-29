<div class="footer">
			<div class="f-content">
				<ul>
					<li class="f-firstLI"><a href="<?php PURL('about'); ?>"><?php echo $this->_tpl_vars['langs']['firm']; ?></a></li>
					<li><a href="<?php PURL('about'); ?>"><?php echo $this->_tpl_vars['langs']['Introduction']; ?></a></li>
					<li  class="ff"><a  href="<?php PURL('about?a=1'); ?>"><?php echo $this->_tpl_vars['langs']['global']; ?></a></li>
					<li  class="ff"><a  href="<?php PURL('about?a=2'); ?>"><?php echo $this->_tpl_vars['langs']['Cultural']; ?></a></li>
			        		<li  class="ff"><a  href="<?php PURL('about?a=3'); ?>"><?php echo $this->_tpl_vars['langs']['Team']; ?></a></li>
			        		<li  class="ff"><a  href="<?php PURL('about?a=4'); ?>"><?php echo $this->_tpl_vars['langs']['partner']; ?></a></li>
				</ul>
				<ul>
					<li class="f-firstLI"><a href="<?php PURL('products'); ?>"><?php echo $this->_tpl_vars['langs']['products']; ?></a></li>
					<li><a><?php echo $this->_tpl_vars['langs']['tyre']; ?></a></li>
					<li><a><?php echo $this->_tpl_vars['langs']['hub']; ?></a></li>
					<li><a><?php echo $this->_tpl_vars['langs']['body']; ?></a></li>
					<li><a><?php echo $this->_tpl_vars['langs']['Electronics']; ?></a></li>
					<li><a><?php echo $this->_tpl_vars['langs']['seat']; ?></a></li>

				</ul>
				<ul>
					<li class="f-firstLI" ><a href="<?php PURL('news'); ?>"><?php echo $this->_tpl_vars['langs']['news']; ?></a></li>
					<li><a href="<?php PURL('news'); ?>"><!-- 企业新闻 --><?php echo $this->_tpl_vars['langs']['companyNews']; ?></a></li>
					<li><a href="<?php PURL('news?f=1'); ?>"><!-- 行业新闻 --><?php echo $this->_tpl_vars['langs']['TradeNews']; ?></a></li>
					<li><a><!-- 客户 --> <?php echo $this->_tpl_vars['langs']['client']; ?></a></li>
					<li><a href="<?php PURL('contactUs'); ?>"><!-- 联系我们 --><?php echo $this->_tpl_vars['langs']['contactUs']; ?></a></li>
				</ul>
				
				<div class="code">
					<div class="z">
						<img src="<?php echo $this->_tpl_vars['t_url']; ?>util/images/QRcode.jpg" />
						<span style="margin-top: 36px;"><!-- 二微码 --><?php echo $this->_tpl_vars['langs']['code']; ?></span>
						<span><!-- 扫一扫关注 --><?php echo $this->_tpl_vars['langs']['sys']; ?></span>
					</div>
					<div class="z">
						<p><?php echo $this->_tpl_vars['langs']['flink']; ?></p>
						<div class="bt"><a><!-- 海轮急配 --><?php echo $this->_tpl_vars['langs']['hailun']; ?><em></em></a></button>
					</div>
				</div>
			</div>
		</div>
		