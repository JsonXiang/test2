<?php if(!defined('ROOT')) die('Access denied.');

class c_productListInfo extends SWeb
{
	  public function index()
	  {
		//如果有产品ID则显示产品, 其它情况显示分类
		$pro_id = $_GET['pro_id'];
		@require(ROOT.'config/config.php');
		$pdo = new pdo("mysql:host=localhost;dbname={$dbname}","{$dbusername}","{$dbpassword}");
		if(IS_CHINESE){
			$stmt = $pdo->prepare("select title,cat_id,content,path,filename from hailun_product where pro_id ={$pro_id}");
			}else
			{
			$stmt = $pdo->prepare("select title_en AS title,cat_id,content_en AS content ,path,filename from hailun_product where pro_id ={$pro_id}");
			}
		
		$stmt->execute();
		$result = $stmt->fetch(PDO::FETCH_ASSOC);
		$this->assign("product",$result);
		//$this->assign("id",$pro_id);
		
		$this->display('productListInfo.tpl');
		
	}
}