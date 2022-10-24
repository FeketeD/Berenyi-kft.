<?php

function component($productname, $productdesc, $productprice, $productimg, $productid)
{
    $element = "
    
    <div class=\"col-md-3 col-sm-6 my-3 my-md-0 pb-5\">
        <form action=\"index.php\" method=\"post\">
            <div class=\"card shadow\">
                <div>
                    <img src=\"$productimg\" alt=\"Image1\" class=\"img-fluid card-img-top imgs\">
                </div>
                <div class=\"card-body\">
                    <h5 class=\"card-title\">$productname</h5>
                    <p class=\"card-text\">
                        $productdesc
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