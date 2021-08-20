<!DOCTYPE html>
<html lang="en">
<?php 
    $page = "oferta";
     $name = "Wszystkie produkty";
     $categoryId = 0;
     $titleDisplayed="Produkty";
     if (isset($_GET['categoryId'])){
             $categoryId= $_GET['categoryId'];
     }
     if ($categoryId == 1) {
         $name = $titleDisplayed = "Drzwi wejściowe wewnętrzne";
     }
     else if ($categoryId == 2) {
         $name = $titleDisplayed = "Drzwi ramowe wewnętrzne";
     }
     else if ($categoryId == 3) {
         $name = $titleDisplayed = "Drzwi drewniane zewnętrzne";
     }
    

    
    require 'partials/head.php' ?>
<body>
    <?php
     
    ?>


    <?php require 'db_conn.php' ?>
    <?php require 'partials/header.php' ?>
    <h2 class="category-name"><?php echo $name; ?></h2>
    <div class="container category">
        <div class="category-container">
            <p class="category-header">Kategorie</p>
            <ul class="category-list">
                <li class="category-listItem <?php echo ($categoryId == 0  ? " active" : "")?>"><a href="../public/oferta.php">Wszystkie produkty</a></li>
                <li class="category-listItem <?php echo ($categoryId == 1  ? " active" : "")?>"><a href="../public/oferta.php?categoryId=1">Drzwi wejściowe wewnętrzne</a></li>
                <li class="category-listItem <?php echo ($categoryId == 2  ? " active" : "")?>"><a href="../public/oferta.php?categoryId=2">Drzwi ramowe wewnętrzne</a></li>
                <li class="category-listItem <?php echo ($categoryId == 3  ? " active" : "")?>"><a href="../public/oferta.php?categoryId=3">Drzwi drewniane zewnętrzne</a></li>
            </ul>
        </div>
        <div class="products-container row">
        <?php   
        $sql = ($categoryId == 0) ? "SELECT * from produkt" : "SELECT * from produkt where category_id = $categoryId";
        $result = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_array($result)){
           echo '<div class="col-12 col-lg-3 product-box">';
               echo     '<a href="../public/product.php?productId='.$row[0].'">';
               echo      '<img class="product-img" src="../public/img/'.$row[6].'" alt="">';
               echo     "</a>";
               echo     '<h2 class="product-header">'.$row[2].'</h2>';
               echo     '<a href="../public/product.php?productId='.$row[0].'" class="button product-button">Sprawdź</a>';
               echo  '</div>';
        }
        
        ?>    
        </div>
    </div>
    <?php require 'partials/footer.php' ?>

</body>
</html>