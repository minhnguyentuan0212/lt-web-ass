<?php
  @session_start();
  if (isset($_SESSION['guest']))
  {
    require_once('models/user.php');
    $data = User::get($_SESSION['guest']);
  }
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/views_main/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Nike. Just Do It</title>
    <style>
      body{
        font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
      }
      
    </style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Favicon -->
    <link href="https://www.logolynx.com/images/logolynx/94/94174906fca1b19e84305fa6f5160ddb.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="./public/js/layouts/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="./public/js/layouts/animate/animate.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="./public/css/layouts/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="./public/css/layouts/style.css" rel="stylesheet">
</head>
<!-- navigator bar section -->
<div class="container-fluid d-flex justify-content-end">
  <?php
    if (!isset($_SESSION["guest"])) {
      echo '
        <a href="index.php?page=main&controller=contact&action=index" class="nav-item nav-link text-dark" >Contact Us</a>
        <a href="index.php?page=main&controller=register&action=index" class="nav-item nav-link text-dark" >Join Us</a>
        <a href="index.php?page=main&controller=login&action=index" class="nav-item nav-link text-dark">Sign In</a>
      ';
    } else {
      echo '
        <a class="nav-item nav-link text-dark"><b>Welcome '.$data->lname.'</b></a>
        <div class="dropdown d-flex align-items-center" style="z-index: 999;">
          <div class="d-flex align-items-center far fa-user fa-lg" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="user"></div>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="user">
            <a class="dropdown-item" href="index.php?page=main&controller=edit&action=index">Profile</a>
            <a class="dropdown-item" href="#">Orders</a>
            <a class="dropdown-item" href="#">Favourites</a>
            <a class="dropdown-item" href="#">Inbox</a>
            <a class="dropdown-item" href="#">Experiences</a>
            <a class="dropdown-item" href="#">Account Settings</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="index.php?page=main&controller=login&action=logout">Log Out</a>
          </div>
        </div>
      ';
    }
  ?>
</div>
<nav class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container-fluid">
        <a href="index.php" class="navbar-brand"><img src="public/assets/Logo_NIKE.svg.png" alt="logo"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsebtn" aria-controls="collapsebtn" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="collapsebtn"> <!-- Removed unnecessary classes -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="index.php?page=main&controller=shoes&action=index" class="nav-link">Shoes</a>
                </li>
                <li class="nav-item">
                    <a href="index.php?page=main&controller=clothing&action=index" class="nav-link">Clothing</a>
                </li>
                <li class="nav-item">
                    <a href="index.php?page=main&controller=accessory&action=index" class="nav-link">Accessories</a>
                </li>
                <li class="nav-item">
                    <a href="index.php?page=main&controller=blog&action=index" class="nav-link">News</a>
                </li>
            </ul>
        </div>

        <div class="d-none d-md-block align-middle" id="searchbar">
            <form class="form-inline align-middle m-0" method="post" action ="index.php?page=main&controller=searchresult&action=index" >
                <input class="form-control mr-md-2" type="search" placeholder="Search" aria-label="Search" name='search_term'>
                <button class="border-0 bg-light"><i class=" fa-sharp fa fa-search fa-lg" type=submit title="Search"></i></button>
            </form>
        </div>

        <div class="d-none d-md-block options">
          <i class="fa-sharp fa-regular fa-heart fa-lg" title="Favorites"></i>
          <i class="fa-sharp fa-solid fa-bag-shopping fa-lg" title= "Bag items"></i>
          <i class="fa-sharp fa-regular fa-user fa-lg" title = "User"></i>
        </div>
    </div>
</nav>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./public/js/layouts/wow/wow.min.js"></script>
    <script src="./public/js/layouts/easing/easing.min.js"></script>
    <script src="./public/js/layouts/waypoints/waypoints.min.js"></script>
    <script src="./public/js/layouts/counterup/counterup.min.js"></script>
    <script src="./public/js/layouts/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="./public/js/layouts/main.js"></script>