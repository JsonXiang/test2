<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="{$t_url}css/page.css">
	</head>
	<body>
		<div class="iframeData">

			<ul class="z" style="margin: 20px 0 30px;">

				{foreach $products as $k=>$product}
					<li><a class ='zz' data-z = {$product.pro_id}><img src="{PrintImageURL($product.path, $product.filename, 2)}" /><p>{$product.title}</p></a></li>
				{/foreach}
	
			</ul>
			<div class="page-box" >
		<table id="table">
	                    <tr>
	                        <td>
	                        <span><!-- 总共 -->{$langs.total}{$total_page}<!-- 页 -->{$langs.ye}<span>
	                        {if $total_page > 0}
	                            <span><!-- 当前第 -->{$langs.now}{$cur_page}<!-- 页 -->{$langs.ye}</span>
	                        {/if}
	                        
	                            <a  class = 'a' data-id =1 ><!-- 首页 -->{$langs.first}</a>
	                            <a {if $cur_page>1} class = 'a' data-id ={$prev_page} {/if} class='prev'><!-- 上一页 -->{$langs.preva}</a>
	                        
	                        {if $total_page > 0}
	                            {$str}
	                        {/if}
	                                    
	                       
	                            <a  {if $cur_page < $total_page} class = 'a' data-id ={$next_page}{/if} class='next' ><!-- 下页 -->{$langs.nexta}</a>
	                            <a  class = 'a' data-id ={$total_page} ><!-- 尾页 -->{$langs.last}</a>
	                            <input  type="text" id='blur'>
	                        </td>
	                    </tr>
                     </table>




			</div>

		</div>
	</body>
</html>

 
<script src="{$t_url}/util/js/jquery.pagination.js"></script>

<script>
	

$('#blur').on("blur",function(){
		var p=parseInt($(this).val());
		if(p<=1)
		{
			p=1;
		}else if (p>={$total_page})
		{
			p={$total_page};
		}else if(isNaN(p)){
	            p=1;
	          }
		//alert(id);
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		$.get("productlist?p="+p+'&cat='+{$cat}+'&c=1',function(data) {

			//alert(location.search);
			$('.iframeData').html(data);
		});	

	})




$('.zz').on("click",function(){
		var id=$(this).attr('data-z');
		//alert(id);
		$.get("products?id="+id+'&cat='+{$cat},function(data) {

			//alert(location.search);
			$('.iframeData').html(data);
		});	

	})
	//点击数字时的跳转

	$('.a').on("click",function(){
		//alert({$cat});
		var p = $(this).attr('data-id');
			$.get("productlist?p="+p+'&cat='+{$cat}+'&c=1',function(data) {
				$('.iframeData').html(data);
			});	

		})



	



</script>
 
