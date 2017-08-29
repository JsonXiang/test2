<?php if(!defined('ROOT')) die('Access denied.');

class c_qiyenewsList extends SWeb
{
	  public function index()
	  {
		//如果有产品ID则显示产品, 其它情况显示分类
			@require(ROOT.'config/config.php');
			$pdo = new pdo("mysql:host=localhost;dbname={$dbname}","{$dbusername}","{$dbpassword}");
			$stmt = $pdo->prepare("select pro_id from hailun_article where cat_id = 2");
			$stmt->execute();
			$total = $stmt->rowcount();
			$cur_page = isset($_GET['p'])?$_GET['p']:1;
		  	$prev_page = $cur_page-1;
		  	$next_page = $cur_page+1;
		  	$page_size = 3;
		  	$total_page = ceil($total/$page_size);
		  	$offset  =  ($cur_page-1)*$page_size ;

			if(IS_CHINESE)
			{
				$stmt = $pdo->prepare("select pro_id,title,created,path,filename from hailun_article where cat_id = 2 order by pro_id desc limit {$offset},{$page_size}");
			}else
			{
				$stmt = $pdo->prepare("select pro_id,title_en AS title,created,path,filename from hailun_article where cat_id = 2 order by pro_id desc limit {$offset},{$page_size}");
			}
			$stmt->execute();
			$articles = $stmt->fetchAll(PDO::FETCH_ASSOC);

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


			$this->assign('str',$str);
		  	$this->assign('total_page',$total_page);
	  		$this->assign('cur_page',$cur_page);
	  		$this->assign('prev_page',$prev_page);
	  		$this->assign('next_page',$next_page);
			//$this->assign('products',$products);

			$this->assign('articles',$articles);

			$this->display('qiyenewsList.tpl');
		
	}
}