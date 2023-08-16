<?php

//main connection file for both admin & front end
$servername = "localhost"; //server
$username = "root"; //username
$password = ""; //password
$dbname = "gift_shop";  //database

// Create connection
$db = mysqli_connect($servername, $username, $password, $dbname); // connecting 
// Check connection
if (!$db) {       //checking connection to DB	
    die("Connection failed: " . mysqli_connect_error());
}

error_reporting(0);  
session_start(); 

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <link rel="icon" type="../image/png" href="../logo.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>Gift</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/animsition.min.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="../css/style.css" rel="stylesheet">
    <style>
        .input_field {
            width: 99%;
            height: 50px;
            border: none;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .input_field:focus {
            border: none !important;
        }
        
input::placeholder {
    
   padding-left:10px
}
    </style>

    <script src="script.js"></script>
</head>

<body class="home">

    <header id="header" class="header-scroll top-header headrom" style="position:fixed;background-color:#1c1922;">
        <nav class="navbar navbar-dark" style="background-image: url(../images/img/menu_bg.jpg);">
            <!-- style="background-color:#191820" -->
            <!-- style="background-image: url(images/img/menu_bg.jpg);" -->
            <div class="container">
                <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse"
                    data-target="#mainNavbarCollapse">&#9776;</button>
                <a class="navbar-brand" href="index.php">
                    <div style="font-family: 'DM Serif Display', serif;"><img src="../logo.png" height="20px"
                            width="20px"> G I F T</div>
                </a>
                <div class="collapse navbar-toggleable-md  float-lg-right" id="mainNavbarCollapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item"> <a class="nav-link active" href="../index.php">Home <span
                                    class="sr-only">(current)</span></a> </li>
                        <li class="nav-item"> <a class="nav-link active" href="../categories.php">Gifts <span
                                    class="sr-only"></span></a> </li>


                        <?php
                    if(empty($_SESSION["user_id"])) // if user is not login
                        {
                            echo '<li class="nav-item"><a href="../login.php" class="nav-link active">Login</a> </li>
                          <li class="nav-item"><a href="../registration.php" class="nav-link active">Register</a> </li>';
                        }
                    else
                        {

                                
                                echo  '<li class="nav-item"><a href="../your_orders.php" class="nav-link active">My Orders</a> </li>';
                                echo  '<li class="nav-item"><a href="../feedback.html" class="nav-link active">Feedback</a> </li>';
                                echo  '<li class="nav-item"><a href="../logout.php" class="nav-link active">Logout</a> </li>';
                        }

                    ?>

                    </ul>

                </div>
            </div>
        </nav>

    </header>

    <div id="mainform"
        style="background-color: whitesmock;align-items: center;justify-content: center;display: flex;height: 100%;padding-top:120px;padding-bottom:50px">
        <div class="innerdiv"
            style="background-color: rgb(15, 25, 68);width: 500px;height: auto;padding: 20px;border-radius:8px">
            <h2 style="color:white;padding-bottom:20px">Feed back</h2>
            <form id="myForm" method='post' name="myForm">
                <input id='username1' name='name' onblur="validate('username', this.value)" type='text'
                    placeholder="Username" class="input_field">
                <div id='username'></div>
                <input id='email1' name='email' onblur="validate('email', this.value)" type='text' class="input_field"
                    placeholder="Email">
                <div id='email'></div>
                <select name="feedback" class="input_field" style="padding-left:10px;color:gray">
                    <option value="" selected>    Select option </option>
                    <option value="Amazing">Amazing</option>
                    <option value="NotGood">NotGood</option>
                    <option value="Poor">Poor</option>
                    <option value="Satisfy">Satisfy</option>
                </select>
                <div>
                    <textarea class="input_field" placeholder="Message" name="message" style="padding-top:10px;padding-left:10px;color:grey"></textarea></div>
                    <div style="padding-bottom:30px">
                        <input onclick="checkForm()" type='submit' value='Submit' name="submit"
                            style="width: 100%;height: 40px;background-color: red;color:white;border: none;border-radius: 8PX;font-size:10px;"></div>



            </form>
            <?php
               if(isset($_POST['submit']))  
               {
                   $name = $_POST['name'];  
                   $email = $_POST['email'];
                   $feedback=$_POST['feedback'];
                   $message=$_POST['message'];

                   $sql = "INSERT INTO feedback(name,email,feedback,message) VALUE('$name','$email','$feedback','$message')";
                   $qq=mysqli_query($db, $sql); 
                   if(!$qq)
                   {
                    echo "data not inserted";
                   }

               }
            ?>
            <?php  
        if(isset($_POST['submit'])){  
        if(!empty($_POST['feedback'])) {  
            $selected = $_POST['feedback'];  
          
        } else {  
            echo '<script type ="text/JavaScript">';  
            echo 'alert(" Please select feedback ")';  
            echo '</script>';  
        }  
        }  
    ?>
        </div>

    </div>
    <footer class="footer">
            <div class="container">
                
          
                <div class="bottom-footer">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 payment-options color-gray">
                            <h5>Payment Options</h5>
                            <ul>
                                <li>
                                    <a href="../payment.php"> <img src="../images/paypal.png" alt="Paypal"> </a>
                                </li>
                                <li>
                                    <a href="../payment.php"> <img src="../images/mastercard.png" alt="Mastercard"> </a>
                                </li>
                                <li>
                                    <a href="../payment.php"> <img src="../images/maestro.png" alt="Maestro"> </a>
                                </li>
                                <li>
                                    <a href="../payment.php"> <img src="../images/stripe.png" alt="Stripe"> </a>
                                </li>
                                <li>
                                    <a href="../payment.php"> <img src="../images/bitcoin.png" alt="Bitcoin"> </a>
                                </li>
                            </ul>
                            <h5>Case On Delivery</h5>
                        </div>
                        <div class="col-xs-12 col-sm-4 address color-gray">
                                    <h5>Address</h5>
                                    <p>L.J University</p>
                                    <h5>Phone: 9173889990</a></h5> </div>
                                <div class="col-xs-12 col-sm-5 additional-info color-gray">
                                    <h5>Addition informations</h5>
                                   <p>Join thousands of other Gift shop who benefit from having partnered with us.</p>
								   <p>
                                     © 2022 Gift. All Rights Reserved | Design by <a href="https://api.whatsapp.com/send/?phone=919173889990&text&type=phone_number&app_absent=0" target="_blank">Chirag Parmar </a>, <a href="https://api.whatsapp.com/send/?phone=919377759285&text&type=phone_number&app_absent=0" target="_blank">Faeez Memon </a>, <a href="https://api.whatsapp.com/send/?phone=919512596001&text&type=phone_number&app_absent=0" target="_blank">Harsh Panchal</a>
                                  </p>
                                </div>
                    </div>
                </div>
          
            </div>
					
			
        </footer>

        <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
    
</body>

</html>