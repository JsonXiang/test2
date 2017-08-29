<?php if(!defined('ROOT')) die('Access denied.');

class c_hangneinewsListInfo extends SWeb
{
	    public function index()
	  {
		$id = $_GET['pro_id'];
		@require(ROOT.'config/config.php');
		$pdo = new pdo("mysql:host=localhost;dbname={$dbname}","{$dbusername}","{$dbpassword}");

		if(IS_CHINESE)
			{
				$sql =  "select title,content,created from hailun_article where pro_id = {$id}";
			}else
			{
				$sql =  "select title_en AS title,content_en AS content,created from hailun_article where pro_id = {$id}";
			}
	
		$stmt = $pdo->prepare($sql);
		$stmt->execute();
		$article = $stmt->fetch(PDO::FETCH_ASSOC);
		
		$this->assign('article',$article);
		$this->display('hangneinewsListInfo.tpl');
		
	}
}