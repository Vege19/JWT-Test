<?php


class DatabaseService
{

    private $db_host = "localhost";
    private $db_name = "shop";
    private $db_user = "root";
    private $db_password = "";
    private $connection;

    public function getConnection()
    {
        $this->connection = null;

        try {
            $this->connection = new PDO(
                "mysql:host=" . $this->db_host
                . ";dbname=" . $this->db_name
                , $this->db_user,
                $this->db_password);

        } catch (PDOException $e) {
            echo "Connection failed: " . $e->getMessage();

        }

        return $this->connection;

    }

}