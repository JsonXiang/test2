<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['t_url']; ?>css/page.css">
	</head>
	<body>
		<div class="iframeData">

			<ul class="z" style="margin: 20px 0 30px;">

				<?php foreach($this->_tpl_vars['products'] as $this->_tpl_vars['k']=>$this->_tpl_vars['product']){; ?>
					<li><a class ='zz' data-z = <?php echo $this->_tpl_vars['product']['pro_id']; ?>><img src="<?php PrintImageURL($this->_tpl_vars['product']['path'], $this->_tpl_vars['product']['filename'], 2); ?>" /><p><?php echo $this->_tpl_vars['product']['title']; ?></p></a></li>
				<?php }; ?>
	
			</ul>
			<div class="page-box" >
		<table id="table">
	                    <tr>
	                        <td>
	                        <span><!-- 总共 --><?php echo $this->_tpl_vars['langs']['total']; ?><?php echo $this->_tpl_vars['total_page']; ?><!-- 页 --><?php echo $this->_tpl_vars['langs']['ye']; ?><span>
	                        <?php if($this->_tpl_vars['total_page'] > 0){; ?>
	                            <span><!-- 当前第 --><?php echo $this->_tpl_vars['langs']['now']; ?><?php echo $this->_tpl_vars['cur_page']; ?><!-- 页 --><?php echo $this->_tpl_vars['langs']['ye']; ?></span>
	                        <?php }; ?>
	                        
	                            <a  class = 'a' data-id =1 ><!-- 首页 --><?php echo $this->_tpl_vars['langs']['first']; ?></a>
	                            <a <?php if($this->_tpl_vars['cur_page']>1){; ?> class = 'a' data-id =<?php echo $this->_tpl_vars['prev_page']; ?> <?php }; ?> class='prev'><!-- 上一页 --><?php echo $this->_tpl_vars['langs']['preva']; ?></a>
	                        
	                        <?php if($this->_tpl_vars['total_page'] > 0){; ?>
	                            <?php echo $this->_tpl_vars['str']; ?>
	                        <?php }; ?>
	                                    
	                       
	                            <a  <?php if($this->_tpl_vars['cur_page'] < $this->_tpl_vars['total_page']){; ?> class = 'a' data-id =<?php echo $this->_tpl_vars['next_page']; ?><?php }; ?> class='next' ><!-- 下页 --><?php echo $this->_tpl_vars['langs']['nexta']; ?></a>
	                            <a  class = 'a' data-id =<?php echo $this->_tpl_vars['total_page']; ?> ><!-- 尾页 --><?php echo $this->_tpl_vars['langs']['last']; ?></a>
	                            <input  type="text" id='blur'>
	                        </td>
	                    </tr>
                     </table>




			</div>

		</div>
	</body>
</html>

 
<script src="<?php echo $this->_tpl_vars['t_url']; ?>/util/js/jquery.pagination.js"></script>

<script>
	

$('#blur').on("blur",function(){
		var p=parseInt($(this).val());
		if(p<=1)
		{
			p=1;
		}else if (p>=<?php echo $this->_tpl_vars['total_page']; ?>)
		{
			p=<?php echo $this->_tpl_vars['total_page']; ?>;
		}else if(isNaN(p)){
	            p=1;
	          }
		//alert(id);
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		$.get("productlist?p="+p+'&cat='+<?php echo $this->_tpl_vars['cat']; ?>+'&c=1',function(data) {

			//alert(location.search);
			$('.iframeData').html(data);
		});	

	})




$('.zz').on("click",function(){
		var id=$(this).attr('data-z');
		//alert(id);
		$.get("products?id="+id+'&cat='+<?php echo $this->_tpl_vars['cat']; ?>,function(data) {

			//alert(location.search);
			$('.iframeData').html(data);
		});	

	})
	//点击数字时的跳转

	$('.a').on("click",function(){
		//alert(<?php echo $this->_tpl_vars['cat']; ?>);
		var p = $(this).attr('data-id');
			$.get("productlist?p="+p+'&cat='+<?php echo $this->_tpl_vars['cat']; ?>+'&c=1',function(data) {
				$('.iframeData').html(data);
			});	

		})



	



</script>
 
