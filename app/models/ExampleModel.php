<?php

namespace app\models;
use \flundr\database\SQLdb;
use \flundr\mvc\Model;

class ExampleModel extends Model
{

	public function __construct() {

		$this->db = new SQLdb(DB_SETTINGS);
		$this->db->table = 'ModelTableName';

	}

}
