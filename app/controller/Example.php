<?php

namespace app\controller;
use flundr\mvc\Controller;

class Example extends Controller {

	public function __construct() {
		$this->view('ExampleLayout');
		$this->models('ExampleModel');
	}

	public function index() {
		// Template in app/templates/example.tpl
		$this->view->render('example');
	}

}