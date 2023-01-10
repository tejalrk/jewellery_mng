<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign In Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login\fonts\material-icon\css\material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="login\css\style.css">
</head>
<body>

    <div class="main">

        <!-- Sign in form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign in</h2>
                        <form method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password"/>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Login"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="login\images\Login page for dbms_1.JPG" alt="sign up image"></figure>
                        <a href="signup.php" class="signup-image-link">Don't have an account?</a>
                    </div>
                </div>
            </div>
        </section>
        <?php
	        require 'connection\connection.php';
            if(isset($_POST['signin'])){
                $email= $_POST['email'];
                $pass= $_POST['pass'];
                $query = $conn->query("select * from costumer where email='$email' and password='$pass'");
                $numberofrows = $query->num_rows;
                if($numberofrows == 0){
                    ?>
                    <script>
                        alert("user doesn't exist \n please register.");
                        window.location = 'signup.php';
                    </script>
                    <?php
                }else{
                    ?> <script> window.location = 'jewellery_pages/index1.php' ;</script>
                    <?php
                }
            }
         ?>

        
    </div>

    <!-- JS -->
    <script src="login\vendor\jquery\jquery.min.js"></script>
    <script src="login\js\main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>