
		<!--head-->
		{include header.tpl}
		<!--page-->
		<div class="page" id="con">
			
			<!--  <div class="banner util">
				<div class="bannerBox">
					<img src="{$t_url}util/images/banner.jpg" />
					<div><h5>联系我们</h5><p>CONTACT US</span></div>
				</div>
			</div>
			
			<div class="map">
				<div>
					<h5>海轮集团联系方式：</h5>
					<p>地址：xxxxxxxxxxxxxxxxxxxxxxx.</p>
					<p>邮编：xxxxxxxxxxxxxxxxxxxxxxx.</p>
					<p>电话：xxxxxxxxxxxxxxxxxxxxxxx.</p>
					<p>传真：xxxxxxxxxxxxxxxxxxxxxxx.</p>
				</div>
				<img class="z" src="{$t_url}images/map.jpg" />
			</div> -->
			
			{echo html($result.content)}
		</div>
		
		<!--footer-->
		{include footer.tpl}


		<script type="text/javascript">
			var html1=$("#con").children().children();
	$("#con").children().remove();
	$("#con").html(html1);

		</script>
	</body>
</html>
