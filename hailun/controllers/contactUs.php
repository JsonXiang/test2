<?php if(!defined('ROOT')) die('Access denied.');

class c_contactUs extends SWeb
{
	  public function index()
	  {
		//如果有产品ID则显示产品, 其它情况显示分类
			$this->assign('css', $this->langs['contactUScss']) ; //首页标题
			@require(ROOT.'config/config.php');
			$pdo = new pdo("mysql:host=localhost;dbname={$dbname}","{$dbusername}","{$dbpassword}");
			//找出关于我们的下面五个连接下的内容
			

			//$pdo = new pdo('mysql:host=localhost;dbname=hailun','root','root');
			if(IS_CHINESE)
			{
				$stmt = $pdo->prepare("select cat_id,name from hailun_pcat where p_id =0");
			}else
			{
				$stmt = $pdo->prepare("select cat_id,name_en AS name from hailun_pcat where p_id =0");	
			}			
			$stmt->execute();
			$cats = $stmt->fetchAll(PDO::FETCH_ASSOC);
			$this->assign('cats',$cats);
			$stmt = $pdo->prepare("select content from hailun_news where  n_id = 6");
			$stmt->execute();
			$result = $stmt->fetch(PDO::FETCH_ASSOC);
			$this->assign('result',$result);
			$this->assign('z_active6','z-active');
		
			$this->display('contactUs.tpl');
		
	}
}