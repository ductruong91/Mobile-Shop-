<?php
    define('SECURITY', TRUE);
    session_start();
    include_once('config/connect.php');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Home</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/home.css">
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="jquery.bpopup.min.js"></script>

    <link rel="stylesheet" href="css/success.css">
    <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="css/category.css">
    <link rel="stylesheet" href="css/cart.css">
    <link rel="stylesheet" href="css/search.css">
    
</head>

<body>
    <div id="header">
        <div class="container">
            <div class="row">
                <?php
                include_once('modules/logo/logo.php');
                include_once('modules/search/search_box.php');
                include_once('modules/cart/cart_notify.php');
            ?>
            </div>
        </div>
        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler navbar-light" type="button" data-toggle="collapse" data-target="#menu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <span class="navbar-toggler-icon">AAAAAAAAA</span>
    </div>

    <div id="body">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                <?php
                    include_once('modules/category/menu.php');
                ?>
                </div>
            </div>
            <div class="row">
                <div id="main" class="col-lg-8 col-md-12 col-sm-12">

                <?php
                ob_start();
                if(isset($_GET['page_layout'])){
                    switch($_GET['page_layout']){
                        case 'category':
                            require_once('modules/category/category.php');
                            break;
                        case 'cart':
                            require_once('modules/cart/cart.php');
                            break;
                        case 'products':
                            require_once('modules/products/product.php');
                            break;
                        case 'search':
                            require_once('modules/search/search.php');
                            break;
                    }
                }else{
                    include_once('modules/products/featured.php');
                    include_once('modules/products/latest.php');
                }
                ob_flush();
                ?>
                </div>
                <div id="sidebar" class="col-lg-4 col-md-12 col-sm-12">
                <?php
                    include_once('modules/aside/aside.php');
                ?>
                </div>
            </div>
        </div>
    </div>
    <!-- top button -->
   
<!-- pop up advertisement div -->
    <div id="<?php if(!isset($_SESSION['deactive'])){echo 'popup_this';} else {echo 'deactive';}?>">
        <span id="close_x" onclick="close_popup()" class="<?php if(!isset($_SESSION['deactive'])){echo 'button b-close';} else {echo 'deactive';}?>">
            <span>X</span>
        </span>
        <img id="banner-popup" src="images/slide-3.png" alt="">
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
    function close_popup(){
        document.getElementById('popup_this').style.display= "none";
    } 
</script>
<?php 
    $_SESSION['deactive'] = 1;
?>
</html>
