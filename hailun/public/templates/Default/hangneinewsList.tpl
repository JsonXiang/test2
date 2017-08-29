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
                <p class="z newsTime">{echo DisplayDate($v.created)}</p></div>
        </a></li>
        {/foreach}
    </ul>
    <div class="page-box">
          <table id="table">
                    <tr>
                        <td>
                        <span><!-- 总共 -->{$langs.total}{$total_page}{$langs.ye}<span>
                        {if $total_page > 0}
                            <span>{$langs.now}{$cur_page}{$langs.ye}</span>
                        {/if}
                        
                            <a  class = 'a' data-id =1 >{$langs.first}</a>
                            <a {if $cur_page>1} class = 'a' data-id ={$prev_page} {/if} class='prev'>{$langs.preva}</a>
                        
                        {if $total_page > 0}
                            {$str}
                        {/if}
                                    
                       
                            <a  {if $cur_page < $total_page}class = 'a' data-id ={$next_page}{/if} class='next' >{$langs.nexta}</a>
                            <a id="a8" class = 'a' data-id ={$total_page} >{$langs.last}</a>
                              <input  type="text" class='blur2'>
                        
                        </td>
                    </tr>
                </table>
               

    </div>
</div>
<script src="{$t_url}util/js/jquery.min.js"></script>
<script src="{$t_url}util/js/jquery.pagination.js"></script>

<script>
$('.blur2').on("blur",function(){
        var p=parseInt($(this).val());
        if(p<1)
        {
            p=1;
        }else if (p>={$total_page})
        {
            p={$total_page};
        }else if(isNaN(p)){
            p=1;
        }
        //alert(p);
      $.get("hangneinewsList?p="+p,function(data) {

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
            $.get("hangneinewsList?p="+p,function(data) {
                $('.iframeData').html(data);
            }); 

        })



 


</script>
</body>
</html>