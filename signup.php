<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form </title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login\fonts\material-icon\css\material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="login\css\style.css">
</head>
<body>
    <!-- Sign in  Form -->
<section class="sign-in">
    <div class="container">
        <div class="signin-content">
            <div class="signin-image">
                <figure><img src="login\images\Login page for dbms.JPG" alt="sign up image"></figure>
                <a href="index.php" class="signup-image-link">Already have an account?</a>
            </div>

            <div class="signin-form">
                <h2 class="form-title">Sign up</h2>
                <form method="POST" class="register-form" id="login-form">
                <div class="form-group">
                        <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                        <input type="text" name="your_name" id="your_name" placeholder="Your Name"/>
                    </div>
                    <div class="form-group">
                        <label for="your_name"><i class="zmdi zmdi-account-box-phone"></i></label>
                        <input type="number" name="your_phone" id="your_phone" placeholder="Your Phone"/>
                    </div>
                    <div class="form-group">
                        <label for="your_name"><i class="zmdi zmdi-account-box-mail"></i></label>
                        <input type="email" name="your_email" id="your_email" placeholder="Your Email"/>
                    </div>
                    <div class="form-group">
                        <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                        <input type="password" name="your_pass" id="your_pass" placeholder="Password"/>
                    </div>
                    <div class="form-group">
                        <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                        <input type="password" name="your_repass" id="your_repass" placeholder="Re-enter password"/>
                    </div>
                    <div class="form-group">
                        <label for="your_name"><i class="zmdi zmdi-card-giftcard"></i></label>
                        <input type="address" name="your_address" id="your_address" placeholder="Your Address"/>
                    </div>
                    <div class="form-group form-button">
                        <input type="submit" name="register" id="register" class="form-submit" value="Register"/>
                    </div>
                </form>
                <?php
                    require 'connection\connection.php';
                    if(isset($_POST['register'])){
                        $name= $_POST['your_name'];
                        $phno = $_POST['your_phone'];
                        $email= $_POST['your_email'];
                        $pass= $_POST['your_pass'];
                        $repass= $_POST['your_repass'];
                        $add= $_POST['your_address'];
                        $randomNum = substr(str_shuffle("0123456789"), 0, 5);
                        if((($phno == '') OR (strlen($phno)==0) ) OR (((strlen($pass)==0) ))){
                            echo"<script type= 'text/javascript'> alert('Please enter valid phone number or password');
                            window.location= 'signup.php';
                            </script>";
                            die();
                        }
                        $query = $conn->query("select * from costumer where cus_ph = '$phno'");
                        $numberOfRows = $query->num_rows;
                        if($numberOfRows == 0){
                            $conn->query("insert into costumer(cus_id,cus_ph,cus_name,cus_add,password,email) values('$randomNum','$phno','$name','$add','$pass','$email')");
                            ?>
                            <script>
			                        window.location='index.php';
	                        </script>
                            <?php
                        }else{
                           ?>
                           <script>alert('user already existing');
                                window.location = 'signup.php';
                            </script>
                           <?php
                        }
                            
                        

                    }
                ?>

                
               
            </div>
        </div>
    </div>
</section>
        <?php
	        require 'DatabaseConnection/dbcon.php';
         ?>

</div>

<!-- JS -->
<script src="login\vendor\jquery\jquery.min.js"></script>
<script src="login\js\main.js"></script>

</body>
</html>