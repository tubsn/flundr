<?php

namespace app\controller;
use flundr\mvc\Controller;
use flundr\auth\LoginHandler;

class BasicAuth extends Controller {

	public function __construct() {

		$this->view('HTML');
		$this->Auth = new LoginHandler();

		if (!hash_equals($_POST['CSRFToken'], Session::get('CSRFToken'))) {
			throw new \Exception("Token Missmatch", 403); die;
		}

	}

	public function login() {

		try {
			$loggedIn = $this->Auth->login('mail@bla.de','passwort');
			$error = null;
		} catch (\Exception $e) {
			$loggedIn = false;
			$error = $e->getMessage();
		}

		$this->view->render('auth/login', ['loggedIn' => $loggedIn, 'error' => $error]);

	}

	public function logout() {

		$this->Auth->logout();
		$this->view->render('auth/logout');

	}

	public function profile() {
		$this->view->render('auth/profile', ['profile' => $this->Auth->profile()]);
	}



}