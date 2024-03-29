<?php
require_once('controllers/main/base_controller.php');
require_once('models/product.php');

class AccessoryController extends BaseController
{
	function __construct()
	{
		$this->folder = 'accessory';
	}

	public function index()
	{
		$accessory = Product::getAlltypes('accessory');
		$data = array('accessory' => $accessory);
		$this->render('index', $data);
	}
}
