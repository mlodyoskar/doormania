<nav class="navbar navbar-expand-lg navbar-dark mb-4">
  <div class="container-lg">
    <a class="navbar-brand " href="/">
        <img class="navbar-logo" src="../public/img/logo.png" alt="">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link<?php echo ($page == 'home'  ? " active" : "")?>" <?php echo ($page == "home" ? "aria-current='page'" : "")?> href="/">Strona główna</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle<?php echo ($page == "oferta" ? " active" : "")?>"
          <?php echo ($page == "oferta" ? "aria-current='page'" : "")?>
          href="" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Oferta
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item <?php echo ($categoryId == '1'  ? " active" : "")?>" href="../public/oferta.php?categoryId=1">Drzwi wejściowe wewnętrzne</a></li>
            <li><a class="dropdown-item <?php echo ($categoryId == '2'  ? " active" : "")?>" href="../public/oferta.php?categoryId=2">Drzwi ramowe wewnętrzne</a></li>
            <li><a class="dropdown-item <?php echo ($categoryId == '3'  ? " active" : "")?>" href="../public/oferta.php?categoryId=3">Drzwi drewniane zewnętrzne</a></li>
            <li><a class="dropdown-item <?php echo ($categoryId == '0'  ? " active" : "")?>" href="../public/oferta.php">Wszystkie produkty</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link<?php echo ($page == "o-nas" ? " active" : "")?>" <?php echo ($page == "o-nas" ? "aria-current='page'" : "")?> href="../public/o-nas.php">O nas</a>
        </li>
        <li class="nav-item">
          <a class="nav-link<?php echo ($page == "kontakt" ? " active" : "")?>" <?php echo ($page == "kontakt" ? "aria-current='page'" : "")?> href="../public/kontakt.php"  >Kontakt</a>
        </li>
      </ul>
    </div>
  </div>
</nav>