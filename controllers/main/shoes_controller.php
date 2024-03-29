<?php
require_once('controllers/main/base_controller.php');
require_once('models/product.php');

class ShoesController extends BaseController
{
	function __construct()
	{
		$this->folder = 'shoes';
	}

	public function index()
	{
		$shoes = Product::getAlltypes('shoes');
		$data = array('shoes' => $shoes);
		$this->render('index', $data);
	}
}
