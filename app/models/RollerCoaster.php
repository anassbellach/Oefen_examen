<?php

class RollerCoaster {
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function getRollerCoasters() {
        $this->db->query("SELECT * FROM `rollercoaster`");
        
        $this->db->execute();
        $result = $this->db->resultSet();
        
        return $result;
    }
}
