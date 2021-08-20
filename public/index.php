<!DOCTYPE html>
<html lang="en">
<?php
    $categoryId = null;
    $titleDisplayed="";
    require 'partials/head.php' ?>
<body>
    <?php $page = "home"; ?>
    <?php require 'db_conn.php' ?>
    <?php require 'partials/header.php' ?>
    <?php require 'partials/hero.php' ?>
    <div class="divider my-5 underline">Nasza oferta</div>
    <?php require 'partials/landing-offer.php'?>
    


    <?php require 'partials/footer.php' ?>

</body>
</html>