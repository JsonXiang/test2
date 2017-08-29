<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['t_url']; ?>css/page.css">
</head>
<body>
<div class="iframeData">
    <ul class="z" style="margin-top: 54px;">
 
        <?php foreach($this->_tpl_vars['articles'] as $this->_tpl_vars['v']){; ?>
        <li  data-id = <?php echo $this->_tpl_vars['v']['pro_id']; ?>><a>
            <img src="<?php PrintImageURL($this->_tpl_vars['v']['path'], $this->_tpl_vars['v']['filename'], 2); ?>" />
            <div><p class="z newsTitle ellipsis"><?php echo $this->_tpl_vars['v']['title']; ?></p>
                <p class="z newsTime"><?php echo DisplayDate($this->_tpl_vars['v']['created']); ?></p></div>
        </a></li>
        <?php }; ?>
    </ul>
    <div class="page-box">
          <table id="table">
                    <tr>
                        <td>
                        <span><!-- 总共 --><?php echo $this->_tpl_vars['langs']['total']; ?><?php echo $this->_tpl_vars['total_page']; ?><?php echo $this->_tpl_vars['langs']['ye']; ?><span>
                        <?php if($this->_tpl_vars['total_page'] > 0){; ?>
                            <span><?php echo $this->_tpl_vars['langs']['now']; ?><?php echo $this->_tpl_vars['cur_page']; ?><?php echo $this->_tpl_vars['langs']['ye']; ?></span>
                        <?php }; ?>
                        
                            <a  class = 'a' data-id =1 ><?php echo $this->_tpl_vars['langs']['first']; ?></a>
                            <a <?php if($this->_tpl_vars['cur_page']>1){; ?> class = 'a' data-id =<?php echo $this->_tpl_vars['prev_page']; ?> <?php }; ?> class='prev'><?php echo $this->_tpl_vars['langs']['preva']; ?></a>
                        
                        <?php if($this->_tpl_vars['total_page'] > 0){; ?>
                            <?php echo $this->_tpl_vars['str']; ?>
                        <?php }; ?>
                                    
                       
                            <a  <?php if($this->_tpl_vars['cur_page'] < $this->_tpl_vars['total_page']){; ?>class = 'a' data-id =<?php echo $this->_tpl_vars['next_page']; ?><?php }; ?> class='next' ><?php echo $this->_tpl_vars['langs']['nexta']; ?></a>
                            <a id="a8" class = 'a' data-id =<?php echo $this->_tpl_vars['total_page']; ?> ><?php echo $this->_tpl_vars['langs']['last']; ?></a>
                              <input  type="text" class='blur2'>
                        
                        </td>
                    </tr>
                </table>
               

    </div>
</div>
<script src="<?php echo $this->_tpl_vars['t_url']; ?>util/js/jquery.min.js"></script>
<script src="<?php echo $this->_tpl_vars['t_url']; ?>util/js/jquery.pagination.js"></script>

<script>
$('.blur2').on("blur",function(){
        var p=parseInt($(this).val());
        if(p<1)
        {
            p=1;
        }else if (p>=<?php echo $this->_tpl_vars['total_page']; ?>)
        {
            p=<?php echo $this->_tpl_vars['total_page']; ?>;
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