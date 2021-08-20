<!DOCTYPE html>
<html lang="en">
<?php 
    $categoryId = null;
    $titleDisplayed="Kontakt";
    require 'partials/head.php' ?>
<body>
    <?php $page = "kontakt"; ?>
    <?php require 'db_conn.php' ?>
    <?php require 'partials/header.php' ?>
    <h2 class="about-header">Kontakt</h2>
    <div class="container about my-5">
        <section class="row gy-4">
            <div class="col-lg-6">
                <div class="row gy-5 gx-0 k-footer-info">
                    <div class="col-12">
                        <span class="iconify-inline" data-icon="bx:bx-phone-call" data-width="48" data-height="48"></span>
                        <h3 class="footer-header ">Telefon</h3>
                        <ul class="footer-list_contact">
                            <li>tel: <a class="k-footer-link" href="tel:665-179-123">+48 665-179-123</a></li>
                            <li>e-mail: <a class="k-footer-link" href="mailto:doormania@hotmail.com">doormania@hotmail.com</a></li>
                        </ul>
                    </div>
                    <div class="col-12">
                        <span class="iconify-inline" data-icon="bytesize:location" data-width="48" data-height="48"></span>
                        <h3 class="footer-header location">Siedziba firmy</h3>
                        <ul class="footer-list_contact">
                            <li>ul. Czeremchowa 27</li>
                            <li>62-200 Gniezno</li>
                        </ul>
                    </div>
                    <div class="col-12">
                        <span class="iconify-inline" data-icon="ic:outline-watch-later" data-width="48" data-height="48"></span>
                        <h3 class="footer-header hours">Godziny pracy</h3>
                        <ul class="footer-list_contact">
                            <li>poniedziałek-piątek: 7:00 - 15:00</li>
                            <li>sobota: 7:00 - 15:00</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <iframe class="map shadow" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d9715.188029816152!2d17.588394!3d52.500914!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x28a1977760dae0d0!2sDoormania!5e0!3m2!1spl!2spl!4v1628768230633!5m2!1spl!2spl" allowfullscreen="" loading="lazy"></iframe>
            </div>
            
        </section>
    </div>

    <?php require 'partials/footer.php' ?>

</body>
</html>