<?php if(!defined('ROOT')) die('Access denied.');

class c_productList extends SWeb
{
	  public function index()
	  {
	  	@require(ROOT.'config/config.php');
		$pdo = new pdo("mysql:host=localhost;dbname={$dbname}","{$dbusername}","{$dbpassword}");
	  	//$bool = isset($_GET['c'])?$_GET['c']:0;
	  	$cat = isset($_GET['cat'])?$_GET['cat']:'';
	  	$stmt = $pdo->prepare("select p_id from hailun_pcat where p_id = {$cat} ");
	  	$stmt->execute();
	  	$bool = $stmt->fetch();



		//如果有产品ID则显示产品, 其它情况显示分类
	  	

	  	
	  	if(!$cat)
	  		{
	  			$stmt = $pdo->prepare("select pro_id from hailun_product");
	  		}else
	  		{

	  			if($bool){//如果有子分类

					$stmt = $pdo->prepare("select pro_id from hailun_product where cat_id in (select cat_id from hailun_pcat where p_id = {$cat} ) and is_show = 1");
				}else
				{
					$stmt = $pdo->prepare("select pro_id from hailun_product where cat_id = {$cat} and is_show = 1");
				}

	  		}
			$stmt->execute();
			//$num = $stmt->fetchAll(PDO::FETCH_ASSOC);
			/*foreach($num as $k=>$v)
			{
				$total = $k;
			}*/
			$total = $stmt->rowcount();
	  		//echo $total;
		  	$cur_page = isset($_GET['p'])?$_GET['p']:1;
		  	$prev_page = $cur_page-1;
		  	$next_page = $cur_page+1;
		  	$page_size = 1;
		  	$total_page = ceil($total/$page_size);
		  	$offset  =  ($cur_page-1)*$page_size ;
		 
	  		
	  		if(!$cat)
	  		{
	  			if(IS_CHINESE)
				{
			  		$sql  = "select  title,path,filename,pro_id from hailun_product where is_show = 1 order by pro_id desc limit {$offset} , {$page_size}";
			  	}else
			  	{
			  		$sql  = "select  title_en AS title,path,filename,pro_id from hailun_product where is_show = 1 order by pro_id desc limit {$offset} , {$page_size}";
			  	}
	  		}else
	  		{
	  			if(IS_CHINESE)
				{
					//select cat_id from hailun_pcat where p_id = {$cat_id}
	  				//$sql  = "select  title,path,filename,pro_id from hailun_product where cat_id = {$cat} and is_show = 1 order by pro_id desc  limit {$offset} , {$page_size} ";
	  				if($bool){
	  					//有子分类
	  					$sql  = "select  title,path,filename,pro_id from hailun_product where cat_id  in (select cat_id from hailun_pcat where p_id = {$cat} )  and is_show = 1 order by pro_id desc  limit {$offset} , {$page_size} ";
	  				}else
	  				{
	  					$sql  = "select  title,path,filename,pro_id from hailun_product where cat_id = {$cat} and is_show = 1 order by pro_id desc  limit {$offset} , {$page_size} ";
	  				}
	  			}else
	  			{
	  				if($bool)
	  				{
	  					$sql  = "select title_en AS  title,path,filename,pro_id from hailun_product where cat_id  in (select cat_id from hailun_pcat where p_id = {$cat} )  and is_show = 1 order by pro_id desc  limit {$offset} , {$page_size} ";
	  				}else
	  				{
	  					$sql  = "select title_en AS  title,path,filename,pro_id from hailun_product where cat_id = {$cat} and is_show = 1 order by pro_id desc  limit {$offset} , {$page_size} ";
	  				}
	  				
	  			}
	  		}

	  			$stmt = $pdo->prepare($sql);
		  		$stmt->execute();
		  		$products = $stmt->fetchAll(PDO::FETCH_ASSOC);
		  

		  	





		  	$num =3;
		  	$str ='';
		  	for($i=$num;$i>=1;$i--)
		  	{
		  		$tmp = $cur_page -$i;
		  		if($tmp>=1)
		  		{
		  			$str .="<a class = 'a' data-id = ".$tmp.">".$tmp."</a>";
		  		}
		  	}
		  	$str .= "<span>".$cur_page."</span>";
		  	for($i=1;$i<=$num;$i++)
		  	{
		  		$tmp = $cur_page + $i;
		  		if($tmp<=$total_page)
		  		{
		  			$str .="<a class = 'a' data-id = ".$tmp.">".$tmp."</a>";
		  		}
		  	}


		  	$this->assign('c',$bool);
		  	$this->assign('cat',$cat);
			$this->assign('str',$str);
		  	$this->assign('total_page',$total_page);
	  		$this->assign('cur_page',$cur_page);
	  		$this->assign('prev_page',$prev_page);
	  		$this->assign('next_page',$next_page);
			$this->assign('products',$products);		
			$this->display('productList.tpl');		
	}

}