<?php
 if(isset($_GET['product_id'])){
    $stmt = $pdo->prepare('SELECT * FROM termekek WHERE productid = ?');
    $stmt->execute([$_GET['product_id']]);

    $product = $stmt->fetch(PDO::FETCH_ASSOC);
    if(!$product){
        exit('Nincs ilyen termék!');
    }
 }else{
    exit('Nincs ilyen termék!');
 }

$pdo = NULL;

?>

<?=template_header('Termékek');?>
<div class=col-md-3 col-sm-6 my-3 my-md-0 pb-5\>
        <div class=scene scene--card\>
            <form action=$path method=post>
                <div class=card shadow cardFlip\>
                    <div class=card__face card__face--front\>
                        <div>
                            <img src=$productimg alt=Image1 class=img-fluid card-img-top imgs\>
                        </div>
                        <div class=card-body>
                            <h5 class=card-title>$productname</h5>
                            <p class=card-text>
                                $productsd
                            </p>
                            <h5>
                                <span class=price>$productprice Ft</span>
                            </h5>

                            <button type=submit class=btn btn-danger my-3\ name=add>Kosárba <i class=fas fa-shopping-cart\></i></button>
                            <input type='hidden' name='product_id' value='$productid'>
                        </div>
                    </div>
                    <div class=card__face card__face--back\>$productdesc</div>
                </div>
            </form>
        </div>
    </div>
<?=template_footer('');?>