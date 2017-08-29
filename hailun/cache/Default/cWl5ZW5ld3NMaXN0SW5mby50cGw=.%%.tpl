<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<?php echo $this->_tpl_vars['t_url']; ?>css/hangneinewsListInfo.css" />

	</head>
	<body>
		
		<div style="padding-left: 30px;width: 1180px">
			<h3><?php echo $this->_tpl_vars['article']['title']; ?></h3>
			<p class="time"><?php echo DisplayDate($this->_tpl_vars['article']['created']); ?></p>
			<p class="yinzi">  引自：海纳川公司</p>
			<div class="img">
				<img src="<?php echo $this->_tpl_vars['t_url']; ?>images/xwxq_03.jpg" alt="">
			</div>
			<p class="wzms">
				<?php echo html($this->_tpl_vars['article']['content']); ?>
			</p>
		</div>
	</body>
</html>

