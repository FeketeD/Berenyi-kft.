<?php

session_start();

require_once ("php/CreateDb.php");
require_once ("php/component.php");

$db = new CreateDb("webshop", "termekek");

if (isset($_POST['remove'])){
  if ($_GET['action'] == 'remove'){
      foreach ($_SESSION['cart'] as $key => $value){
          if($value["product_id"] == $_GET['id']){
              unset($_SESSION['cart'][$key]);
              echo "<script>window.location = 'cart.php'</script>";
          }
      }
  }
}


?>

<!doctype html>
<html lang="hu">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kosár</title>
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
<body class="bg-light">

    <!--Ad-->
    <!--<script src="https://apps.elfsight.com/p/platform.js" defer></script>
    <div class="elfsight-app-6e31b4a6-1a06-43a1-b561-05618b008c80"></div>-->

    <!--Music-->
    <!--<script src="https://apps.elfsight.com/p/platform.js" defer></script>
    <div class="elfsight-app-1835b1a7-740a-4927-951d-b7e31ec86f33"></div>-->

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
                                <li><a class="dropdown-item vis" href="#">Rum</a></li>
                                <li><a class="dropdown-item vis" href="liquor.php">Likőr, Krémlikőr</a></li>
                                <li><a class="dropdown-item vis" href="#">Pálinka</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link vis" href="#">Egyéb</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link vis" href="#">Alkoholmentes italok</a>
                        </li>
                    </ul>
                </div>
                <a class="navbar-cart vis active" href="cart.php">Kosár</a>
            </div>
        </nav>
    </header>
    <div class="container-fluid">
        <div class="row px-5">
            <div class="col-md-7">
                <div class="shopping-cart">
                    <h6>Kosár</h6>
                    <hr>

                    <?php

                    $total = 0;
                        if (isset($_SESSION['cart'])){
                            $product_id = array_column($_SESSION['cart'], 'product_id');

                            $result = $db->getDataCart();
                            while ($row = mysqli_fetch_assoc($result)){
                                foreach ($product_id as $id){
                                    if ($row['productid'] == $id){
                                        cartElement($row['productimg'], $row['productname'], $row['productdesc'],$row['productprice'], $row['productid']);
                                        $total = $total + ((int)$row['productprice']);
                                    }
                                }
                            }
                        }else{
                            echo "<h5>Üres a kosár!</h5>";
                        }

                    ?>

                </div>
            </div>

            <div class="col-md-4 offset-md-1 border rounded mt-5 bg-white h-25">

                <div class="pt-3">
                    <div class="row price-details">
                        <div class="col-md-6">
                            <?php
                                if (isset($_SESSION['cart'])){
                                    $count  = count($_SESSION['cart'])-1;
                                    echo "<h6>Fizetendő ($count db Termék)</h6>";
                                }else{
                                    echo "<h6>Fizetendő (0 db pizza)</h6>";
                                }
                            ?>
                            <h6>Szállítási Díj</h6>
                            <hr>
                            <h6>Összesen Fizetendő:</h6>
                        </div>
                        <div class="col-md-6">
                            <h6><?php echo $total; ?> Ft</h6>
                            <h6 class="" id = "delivery-fee"><?php
                                if($total == 0) {
                                    echo '<font color = "green">Ingyenes</font>';
                                }else {
                                    echo '<font color = "red">300 Ft</font>';
                                }?>
                            </h6>
                            <hr>
                            <h6><?php
                                if ($total != 0){
                                    echo $total + 300;
                                }else{
                                    echo 0;
                                }
                                ?> Ft</h6>

                        </div>
                    </div>

                    <div>
                        <button class="btn btn-block bg-light mt-2 mb-2" onclick="ablakNyit()">Megrendelés</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="overlay" id="myOverlay">
        <div class="form-nyit" id="myForm">
            <div class="py-1 px-1">
                &nbsp
                <form action="/action_cart.php" class = "form-container">
                    <div class="orderForm py-3 mt-5">
                        <div class="w-100 ra">
                            <i class="fas fa-times close px-3" onclick="ablakBezar()"></i>
                        </div>
                        <h1>Megrendelési adatok</h1>
                        <label for="nev"><b>Teljes név:</b></label>
                        <br>
                        <input class="mb-3" type="text" placeholder="Teljes Név" name="teljesnev" style="width: 40%" required>
                        <br>
                        <label for="telepules"><b>Település:</b></label>
                        <br>
                        <input class="mb-3"type="text" placeholder="Település" name="telep" style="width: 40%" required>
                        <br>
                        <label for="iranyitoszam"><b>Iráyítószám:</b></label>
                        <br>
                        <input class="mb-3" type="text" placeholder="Irányítószám" name="irszam" style="width: 20%" required>
                        <br>
                        <label for="koznev"><b>Közterület neve:</b></label>
                        <br>
                        <input class="mb-3" type="text" placeholder="Közterület neve" name="kozter" style="width: 40%" required>
                        <br>
                        <label for="koznev"><b>Házszám, Emelet/ajtó:</b></label>
                        <br>
                        <input class="mb-3" type="int" placeholder="pl.: 6, 4/2" name="" style="width: 40%" required>
                        <br>
                        <label for="telefonszam"><b>Telefonszám:</b></label>
                        <br>
                        <input class="mb-3" type="text" placeholder="pl.: +36204206969" name="telefon" style="width: 40%" required>
                        <br>
                        <label for="email"><b>E-mail cím:</b></label>
                        <br>
                        <input class="mb-3" type="text" placeholder="pl.: alkoholista@allat.hu" name="mail" style="width: 40%" required>
                        <br>
                        <label for="fizetes"><b>Fizetési mód:</b></label>
                        <br>
                        <select class="w-25 mb-3" name="pay" required>
                            <option>Készpénz</option>
                            <option>Bankkártya</option>
                            <option>SZÉP kártya</option>
                        </select>
                        <br>
                        <label for="megjegyzes"><b>Megjegyzés:</b></label>
                        <br>
                        <textarea rows="3" maxlength="200" style="width: 60%; resize: none; padding-left: 5px; padding-right: 5px"></textarea>
                        <br>
                        <button class="btn btn-success btn-order" onclick="orderFinish()">Rendelés leadás</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
