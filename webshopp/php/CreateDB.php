<?php

class CreateDb
{
    public $servername;
    public $username;
    public $password;
    public $dbname;
    public $tablename;
    public $con;


    public function __construct(
        $dbname = "webshop",
        $tablename = "beer",
        $servername = "localhost",
        $username = "root",
        $password = ""
    )
    {
        $this->dbname = $dbname;
        $this->tablename = $tablename;
        $this->servername = $servername;
        $this->username = $username;
        $this->password = $password;

        $this->con = mysqli_connect($servername, $username, $password);

        if (!$this->con){
            die("Connection failed : " . mysqli_connect_error());
        }

        //adatbázis létrehozása
        $sql = "CREATE DATABASE IF NOT EXISTS $dbname";


        if(mysqli_query($this->con, $sql)){

            $this->con = mysqli_connect($servername, $username, $password, $dbname);

            //új tábla létrehozása
            $sql = "CREATE TABLE IF NOT EXISTS $tablename
                            (
                                productid INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                productname VARCHAR (50) NOT NULL,
                                productdesc VARCHAR (20) NOT NULL,
                                productprice double,
                                productimage VARCHAR (50)
                            );";

            if (!mysqli_query($this->con, $sql)){
                echo "Error creating table : " . mysqli_error($this->con);
            }

        }else{
            return false;
        }
    }

    //adatok bekérése az adatbázisból
    public function getData(){
        $sql = "SELECT * FROM $this->tablename";

        $result = mysqli_query($this->con, $sql);

        if(mysqli_num_rows($result) > 0){
            return $result;
        }
    }
}