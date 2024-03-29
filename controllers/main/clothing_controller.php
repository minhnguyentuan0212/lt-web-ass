<?php
require_once('controllers/main/base_controller.php');
require_once('models/product.php');

class ClothingController extends BaseController
{
	function __construct()
	{
		$this->folder = 'clothing';
	}

	public function index()
	{
		$clothing = Product::getAlltypes('clothing');
		$data = array('clothing' => $clothing);
		$this->render('index', $data);
	}
}
