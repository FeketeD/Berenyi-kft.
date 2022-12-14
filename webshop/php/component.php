<?php


function component($productname, $productsd, $productprice, $productimg, $productid, $productdesc)
{
    $path = basename($_SERVER['PHP_SELF']);
    $element = "
    
    <div class=\"col-md-3 col-sm-6 my-3 my-md-0 pb-5\">
        <form action=\"$path\" method=\"post\">
            <div class=\"card shadow\">
                <div>
                    <img src=\"$productimg\" class=\"img-fluid card-img-top imgs image\">
                    <div class='overlayProduct imgs w-100'>
                        <div class='textOver w-100 px-1'>
                            $productdesc
                        </div>
                    </div>
                </div>
                <div class=\"card-body\">
                    <h5 class=\"card-title\">$productname</h5>
                    <p class=\"card-text\">
                        $productsd
                    </p>
                    <h5>
                        <span class=\"price\">$productprice Ft</span>
                    </h5>

                    <button type=\"submit\" class=\"btn btn-danger my-3\" name=\"add\">Kosárba <i class=\"fas fa-shopping-cart\"></i></button>
                    <input type='hidden' name='product_id' value='$productid'>
                </div>
            </div>
        </form>
    </div>
    ";
    echo $element;
}

function cartElement($productimg, $productname, $productsd ,$productprice, $productid){
    echo '<script type=\"text/javascript\" src=\"js/script.js\" async></script>';
    $element = "

    <form action=\"cart.php?action=remove&id=$productid\" method=\"post\" class=\"cart-items\">
        
            
                    <div class=\"border container float-left my-2\" style=\"width: 100%\">
                        <div class=\"row bg-white\">
                            <div class=\"col-md-3 pl-0 pt-0 \" style=\"background-image: url('$productimg'); background-size: contain; background-repeat: no-repeat; \">
                                
                            </div>
                            <div class=\"col-md-6 mt-2 mb-2\">
                                <h5 class=\"pt-2\">$productname</h5>
                                <h6 class=\"pt-2\">$productsd</h6>
                                <h5 class=\"pt-2\">$productprice Ft</h5>
                            </div>
                            <div class=\"col-md-3 mt-4\">
                                <div>
                                    <button type=\"button\" class=\"btn bg-light border rounded-circle mx-1\" name='decqty' id='minus'><i class=\"fas fa-minus\"></i></button>
                                    <input type=\"text\" class=\"form-control orderQuantity d-inline\" name='item' value='1' disabled>
                                    <button type=\"button\" class=\"btn bg-light border rounded-circle\" name='incqty' id=\"plus\"><i class=\"fas fa-plus\"></i></button>
                                    <br><button type=\"submit\" class=\"btn btn-danger mt-2 mx-4\" name=\"remove\">Eltávolítás</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

    ";
    echo  $element;
}