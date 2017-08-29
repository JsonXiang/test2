<?php if(!defined('ROOT')) die('Access denied.');

class c_newProductInfo extends SWeb
{
	  public function index()
	  {
		//如果有产品ID则显示产品, 其它情况显示分类
		$this->assign('product.css','css');
		@require(ROOT.'config/config.php');
		$pdo = new pdo("mysql:host=localhost;dbname={$dbname}","{$dbusername}","{$dbpassword}");$sql = "select * from hailun_product where pro_id = {$_GET['pro_id']}";
		$stmt = $pdo->prepare($sql);
		$stmt->execute();
		$product = $stmt->fetch(PDO::FETCH_ASSOC);
		$this->assign('product',$product);
		$this->display('newProductInfo.tpl');
		
	}
}