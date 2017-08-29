<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="{$t_url}css/page.css">
</head>
<body>
<div class="iframeData">
    <ul class="z" style="margin-top: 54px;">
   
 
  {foreach $articles as $v}
        <li  data-id = {$v.pro_id}><a>
            <img src="{PrintImageURL($v.path, $v.filename, 2)}" />
            <div><p class="z newsTitle ellipsis">{$v.title}</p>
                <p class="z newsTime">{$v.created}</p></div>
        </a></li>
        {/foreach}


    </ul>
   
    <div class="page-box">
        
    <table id='table'>
                    <tr>
                        <td>
                        <span>{$langs.total}{$total_page}<!-- 页 -->{$langs.ye}<span>
                        {if $total_page > 0}
                            <span><!-- 当前第 -->{$langs.now}{$cur_page}{$langs.ye}</span>
                        {/if}
                        
                            <a id="a1"  ><!-- 首页 -->{$langs.first}</a>
                            <a {if $cur_page>1}id="a2"  {/if} class='prev'><!-- 上一页 -->{$langs.preva}</a>
                        
                        {if $total_page > 0}
                            {$str}
                        {/if}
                                    
                       
                            <a  {if $cur_page < $total_page}id="a3"{/if} class='next' ><!-- 下页 -->{$langs.nexta}</a>
                            <a id="a4"  ><!-- 尾页 -->{$langs.last}</a>
                            <input  type="text" class='blur3'>

                        </td>
                    </tr>
                </table>


    </div>
</div>
<script src="{$t_url}util/js/jquery.min.js"></script>
<script src="{$t_url}util/js/jquery.pagination.js"></script>

<script>

$('.blur3').on("blur",function(){
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
       // alert(p);
      $.get("qiyenewsList?p="+p,function(data) {

            //alert(location.search);
            $('.iframeData').html(data);
        }); 

    })



	
    $('.iframeData ul li').on("click",function(){
    	var id = $(this).attr('data-id');
	//alert(id);
        $.get("qiyenewsListInfo?pro_id="+id,function(data) {
            $('.iframeData').html(data);
        });
    })




    $('.a').on("click",function(){
        var p = $(this).attr('data-id');
            $.get("qiyenewsList?p="+p,function(data) {
                $('.iframeData').html(data);
            }); 

        })



    $('#a1').on("click",function(){
            $.get("qiyenewsList?p=1",function(data) {
                $('.iframeData').html(data);
            }); 

        })

    $('#a2').on("click",function(){
            $.get("qiyenewsList?p={$prev_page}",function(data) {
                $('.iframeData').html(data);
            }); 

        })  
    $('#a3').on("click",function(){
            $.get("qiyenewsList?p={$next_page}",function(data) {
                $('.iframeData').html(data);
            }); 

        })  

    $('#a4').on("click",function(){
            $.get("qiyenewsList?p={$total_page}",function(data) {
                $('.iframeData').html(data);
            }); 

        })



</script>
</body>
</html>