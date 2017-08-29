<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="{$t_url}css/hangneinewsListInfo.css" />

	</head>
	<body>
		
		<div style="padding-left: 30px;width: 1180px">
			<h3>{$article.title}</h3>
			<p class="time">{echo DisplayDate($article.created)}</p>
			<p class="yinzi">  引自：海纳川公司</p>
			<div class="img">
				<img src="{$t_url}images/xwxq_03.jpg" alt="">
			</div>
			<p class="wzms">
				{echo html($article.content)}
			</p>
		</div>
	</body>
</html>

