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
                <div class="line"></div>
                <p class="productPage-available">Dostępne wersje:</p>
                <div class="row">
                    <div class="col-4">
                        <h4 class="productPage--version--name">Optima</h4>
                        <p class="productPage--verison--price">Cena brutto: <span class="price-purple">1990zł</span></p>
                        <ul class="productPage-list">
                            <li>Grubość 36mm</li>
                            <li>Grubość 36mm</li>
                            <li>Grubość 36mm</li>
                        </ul>
                    </div>
                    <div class="col-4">
                        <h4 class="productPage--version--name">Optima</h4>
                        <p class="productPage--verison--price">Cena brutto: <span class="price-purple">1990zł</span></p>
                        <ul class="productPage-list">
                            <li>Grubość 36mm</li>
                            <li>Grubość 36mm</li>
                            <li>Grubość 36mm</li>
                        </ul>
                    </div>
                    <div class="col-4">
                        <h4 class="productPage--version--name">Optima</h4>
                        <p class="productPage--verison--price">Cena brutto: <span class="price-purple">1990zł</span></p>
                        <ul class="productPage-list">
                            <li>Grubość 36mm</li>
                            <li>Grubość 36mm</li>
                            <li>Grubość 36mm</li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <?php require 'partials/footer.php' ?>

</body>
</html>