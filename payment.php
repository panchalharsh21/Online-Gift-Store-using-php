<!DOCTYPE html>
<html lang="en">
<?php
    include("connection/connect.php");  
    error_reporting(0);  
    session_start(); 
    
    ?>

<head>

    <meta charset="utf-8">
    <link rel="icon" type="image/png" href="logo.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Payment</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="css/style.css" rel="stylesheet">
</head>
</head>

<body>
    <header id="header" class="header-scroll top-header headrom">
        <nav class="navbar navbar-dark" style="background-image: url(images/img/menu_bg.jpg);background-color:#1c1922;">
            <div class="container">
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse"
                    data-target="#mainNavbarCollapse">&#9776;</button>
                <a class="navbar-brand" href="index.php">
                    <div style="font-family: 'DM Serif Display', serif;"><img src="logo.png" height="20px" width="20px">
                        G I F T</div>
                </a>
                <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"> <a class="nav-link active" href="index.php">Home <span
                                    class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link active" href="categories.php">Gifts <span
                                    class="sr-only"></span></a> </li>


                        <?php
                    if(empty($_SESSION["user_id"])) // if user is not login
                        {
                            echo '<li class="nav-item"><a href="login.php" class="nav-link active">Login</a> </li>
                          <li class="nav-item"><a href="registration.php" class="nav-link active">Register</a> </li>';
                        }
                    else
                        {

                                
                                echo  '<li class="nav-item"><a href="your_orders.php" class="nav-link active">My Orders</a> </li>';
									echo  '<li class="nav-item"><a href="feedback\feedback.php" class="nav-link active">Feedback</a> </li>';

                                echo  '<li class="nav-item"><a href="logout.php" class="nav-link active">Logout</a> </li>';
                        }

                    ?>

                    </ul>

                </div>
            </div>
        </nav>

    </header>
    <div style="align-items: center;justify-content: center;display: flex;">
        <img src="images/payment/2.jpg" height="300px" width="300px" style="margin-top:150px;">
    </div>
</body>

</html>