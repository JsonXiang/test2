<?php if(!defined('ROOT')) die('Access denied.');

class c_ToJoin extends SWeb
{
	  public function index()
	  {
	
	  	@require(ROOT.'config/config.php');
		$pdo = new pdo("mysql:host=localhost;dbname={$dbname}","{$dbusername}","{$dbpassword}");
		if(IS_CHINESE){
			$stmt = $pdo->prepare("select cat_id,name from hailun_pcat where p_id =0");
			}else
			{
			$stmt = $pdo->prepare("select cat_id,name_en AS name from hailun_pcat where p_id =0");	
			}		$stmt->execute();
		$cats = $stmt->fetchAll(PDO::FETCH_ASSOC);
		$this->assign('cats',$cats);
	  	//如果有产品ID则显示产品, 其它情况显示分类
		$this->assign('z_active5','z-active');
		$this->assign('title', $this->langs['ToJoin'] . ' - ' . $this->title); //首页标题
			$this->display('ToJoin.tpl');
		
	}
}