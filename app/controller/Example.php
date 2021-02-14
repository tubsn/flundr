<?php

namespace app\controller;
use flundr\mvc\Controller;

class Example extends Controller {

	public function __construct() {
		$this->view('DefaultLayout');
		$this->models('ExampleModel');
	}

	public function index() {
		$this->view->render('example');
	}

}
