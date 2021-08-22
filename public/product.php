<!DOCTYPE html>
<html lang="en">
<?php $page = "oferta";?>
<?php 
    $titleDisplayed="Produkty";
    require 'db_conn.php';
    require 'partials/head.php';
    $productId = 0;
    if (isset($_GET['productId'])){
         $productId= $_GET['productId'];
    }
 ?>
<body>
    <?php require 'partials/header.php';
    $sql = "SELECT * FROM produkt where id = $productId";
    
    $result = mysqli_query($conn, $sql);
    $data = mysqli_fetch_array($result);
    $productName = $data[2];
    $shortDesc = $data[3];
    $imgSrc = $data[6];
    $longDesc = $data[4];
    $price = $data[5]
    ?>
    <div class="container py-md-5">
        <div class="row productPage-container">
            <div class="col-md-6">
                <img class="productPage-img" src="../public/img/<?php echo $imgSrc ?>" alt="">
            </div>
            <div class="col-md-6">
                <h2 class="productPage-name"><?php echo $productName; ?></h2>
                <p class="productPage-shortDesc"><?php echo $shortDesc; ?></p>
                <p class="productPage-longDesc"><?php echo $longDesc; ?></p>
                <div class="productPage-priceBox">
                    <p class="productPage-price">
                    Cena brutto od: <br>
                    <span class="price-purple"><?php echo $price; ?> PLN</span> 
                </p>
                <p class="productPage-contact">
                    Po więcej szczegółów: <br>
                    <span ><a class="contact-purple" href="tel:513-179-123">+48 513 179 123</a></span> 
                </p>                            
                </div>                    
            </div>
        </div>
    </div>

    <?php require 'partials/footer.php' ?>

</body>
</html>