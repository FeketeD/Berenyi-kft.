<?php

session_start();

require_once ('php/component.php');
require_once ('php/CreateDB.php');

$database = new CreateDb("webshop", "termekek");

if (isset($_POST['add'])){
    if(isset($_SESSION['cart'])){

        $item_array_id = array_column($_SESSION['cart'], "product_id");

        if(in_array($_POST['product_id'], $item_array_id)){
            echo "<script>window.location = 'beer.php'</script>";
        }else{

            $count = count($_SESSION['cart']);
            $item_array = array(
                'product_id' => $_POST['product_id']
            );

            $_SESSION['cart'][$count] = $item_array;
        }

    }else{

        $item_array = array(
            'product_id' => $_POST['product_id']
        );

        $_SESSION['cart'][0] = $item_array;
    }
}
?>

<!DOCTYPE html>
<html lang="hu">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Alkoholmentes italok</title>
        <link rel="shortcut icon" href="image/icon.ico" type="image/x-icon">
        <!--Css-->
        <link rel="stylesheet" href="css/style.css">
        <!--Script-->
        <script src="js/script.js" async></script>
        <!--Bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <!--Fonts-->
        <script src="https://kit.fontawesome.com/1ec2017ccf.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <!--Ad-->
        <!--<script src="https://apps.elfsight.com/p/platform.js" defer></script>
        <div class="elfsight-app-6e31b4a6-1a06-43a1-b561-05618b008c80"></div>-->

        <!--Music-->
        <script src="https://apps.elfsight.com/p/platform.js" defer></script>
        <div class="elfsight-app-1835b1a7-740a-4927-951d-b7e31ec86f33"></div>

        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
                <div class="container-fluid navig">
                    <span class="navbar-brand vis"><img src="image/icon.ico" style="margin-right: 10px" width="40" height="40">Berényi kft.</span>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="collapsibleNavbar">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link vis" href="index.html">Kezdőlap</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link vis" href="beer.php">Sör, Cider</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link vis" href="whisky.php">Whisky</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle vis" role="button" data-bs-toggle="dropdown">Alkoholos italok</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item vis" href="vodka.php">Vodka</a></li>
                                    <li><a class="dropdown-item vis" href="wine.php">Bor, Pezsgő</a></li>
                                    <li><a class="dropdown-item vis" href="rum.php">Rum</a></li>
                                    <li><a class="dropdown-item vis" href="liquor.php">Likőr, Krémlikőr</a></li>
                                    <li><a class="dropdown-item vis" href="palinka.php">Pálinka</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link vis active" href="#">Alkoholmentes italok</a>
                            </li>
                        </ul>
                    </div>
                    <a class="navbar-cart vis" href="cart.php">Kosár</a>
                </div>
            </nav>
        </header>
        <div class="container">
            <div class="row text-center py-5">
                <?php
                $result = $database->getData();
                while ($row = mysqli_fetch_assoc($result)){
                    component($row['productname'], $row['productsd'], $row['productprice'], $row['productimg'], $row['productid'], $row['productdesc']);
                }
                ?>
            </div>
        </div>
        <div class="container-fluid lablec">
            <div class="lablecBrand d-flex pt-4">
                <div class="mx-5 t-50">
                    <img src="image/logo.jpg" title="logo" width="40%">
                </div>
                <div class="mx-5 align-self-center">
                    <i class="fas fa-map-marked-alt" style="color: rgb(165, 165, 165);"></i> 3530, Miskolc, Soltész Nagy Kálmán u. 10
                </div>
                <div class="mx-5 align-self-center" style="text-align: left;">
                    <i class="fas fa-mobile-alt px-1" style="color: rgb(165, 165, 165);"></i> +36 20 794 515
                    <br>
                    <i class="far fa-envelope" style="color: rgb(165, 165, 165);"></i> berenyikft@gmail.com
                </div>
            </div>
            <hr class="lab">
            <div class="lablecText pb-3">
                © Berényi kft. 2022
            </div>
        </div>
    </body>
</html>