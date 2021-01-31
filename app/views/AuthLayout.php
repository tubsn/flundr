<?php

namespace app\views;
use \flundr\mvc\views\htmlView;

class AuthLayout extends htmlView {

	public $title = 'Authentication';
	public $description = 'User-Area';
	public $css = ['/styles/css/defaults.css', '/styles/css/main.css'];
	public $fonts = 'https://fonts.googleapis.com/css?family=Fira+Sans:400,400i,600|Fira+Sans+Condensed:400,600';
	public $js = '/styles/js/main.js';
	public $framework = 'https://cdn.jsdelivr.net/npm/vue/dist/vue.js';
	public $meta = [
		'author' => 'flundr',
		'robots' => 'noindex, nofollow',
		'favicon' => '/styles/img/flundr/flundr-logo.svg',
	];

	public $templates = [
		'tinyhead' => 'layout/html-doc-header',
		'header' => null,
		'main' => null,
		'footer' => null,
		'tinyfoot' => 'layout/html-doc-footer',
	];

}
