<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="{$t_url}css/newsListInfo.css" />

	</head>
	<body>
	{if $errorinfo}
		<!-- 输出错误信息 start -->
		{PrintInfo($errorinfo)}
		<!-- 输出错误信息 end -->
	{else}
		<div style="padding-left: 30px;width: 1180px">
			<h3>{$news.title}</h3>
			<p class="time"> {echo DisplayDate($news.created)}</p>
			<!-- <p class="yinzi">  引自：海纳川公司</p> -->
			<div class="img">
				<img src="{$t_url}images/xwxq_03.jpg" alt="">
			</div> 
			<p id="wzms" class="wzms">
				{echo html($news.content)}
			</p>
		</div>
		{/if}
		
	</body>
</html>
