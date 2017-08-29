
		<!--head-->
		<?php $this->display('header.tpl'); ?>
		
		<!--page-->
		<div class="page">
			
			<div class="banner util">
				<div class="bannerBox">
					<img src="<?php echo $this->_tpl_vars['t_url']; ?>util/images/banner.jpg" />
					<div><h5>合作加盟</h5><p>COOPERATIVE FRANCHISE</span></div>
				</div>
			</div>
			
			<div class="z">
				<div style="min-width: 1180px; width: 1180px; margin: 0 auto;">
					<h5 style="margin: 100px 0 12px; padding-left: 122px; font-size: 36px; color: #1880ca;">合作流程：</h5>
					<img class="z" src="<?php echo $this->_tpl_vars['t_url']; ?>images/<?php echo $this->_tpl_vars['langs']['pic7']; ?>" />
					<img class="z" style="margin: 114px 0 126px 0;" src="<?php echo $this->_tpl_vars['t_url']; ?>images/ToJoin_28.jpg" />
				</div>
			</div>
		</div>
		
		<!--footer-->
		<?php $this->display('footer.tpl'); ?>

	</body>
</html>
