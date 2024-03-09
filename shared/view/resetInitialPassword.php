<?php
    session_start();

    // Check if user is logged in
    if (!isset($_SESSION["initialReset"])) {
        // Redirect to login page
        header("location: ../../index.php");
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Staff/Admin Password</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../asset/images/VES-logo.png" />

    <link rel="stylesheet" href="../style/resetPasswordStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div id="resetParentDiv">
    
        <div class="infoDiv">
            <h1 class="vespText">VES Polytechnic's</h1>
            <p class="oepText">Online Examination Portal</p>
            <img src="../../asset/images/VES-logo.png" alt="VES Logo" class="vesLogo">
            <p class="loginTxt">Staff/Admin Password Reset</p>
        </div>
    
        <!-- <div class="resetChildDiv"> -->
            <!-- Student Login Form -->
            <!-- action="../../home/server/loginServer.php" method="post" -->
            <form onsubmit="return resetInitialPassword()" class="form" id="resetPassForm">
                <div id="inputForm">
                    <div id="part1">
                        <div class="form-element">
                            <label for="emailTxt">Email - ID</label>
                            <input type="text" name="emailTxt" id="emailTxt" placeholder="Enter Email ID" autocomplete="off" required>
                        </div>
                        <div class="form-element">
                            <label for="newPassTxt">New Password</label>
                            <div class="passHideShow">
                                <input type="password" placeholder="Enter New Password" id="newPassTxt" autocomplete="off" required>
                                <i class="fa-solid fa-eye togglePassword" id="eyePass1" onclick="hideShowPassword('newPassTxt')"></i>
                            </div>
                        </div>
                        <div class="form-element">
                            <label for="confirmPassTxt">Confirm Password</label>
                            <div class="passHideShow">
                                <input type="password" id="confirmPassTxt" placeholder="Re-enter New Password" autocomplete="off" required>
                                <i class="fa-solid fa-eye togglePassword" id="eyePass2" onclick="hideShowPassword('confirmPassTxt')"></i>
                            </div>
                        </div>
                    </div>
                    
    
                    <div id="part2">
                        <div class="form-element">
                            <label for="dobInput">Date of Birth</label>
                            <input type="date" name="" id="dobInput" required>
                        </div>
                        <div class="form-element">
                            <label for="securityQuestion">Select Security Question</label>
                            <select name="" id="securityQuestion" required>
                                <option value="" selected disabled>Select Question</option>
                                <option value="In what city were you born?">In what city were you born?</option>
                                <option value="What is your favorite color?">What is your favorite color?</option>
                                <option value="What is your favorite movie?">What is your favorite movie?</option>
                                <option value="Who was your childhood best friend?">Who was your childhood best friend?</option>
                                <option value="What is your favorite food?">What is your favorite food?</option>
                                <option value="Who is your favorite teacher?">Who is your favorite teacher?</option>
                            </select>
                        </div>
                        <div class="form-element">
                            <label for="securityAnswer">Answer</label>
                            <input type="text" name="" id="securityAnswer" placeholder="Enter Your Answer"autocomplete="off" required>
                        </div>
                    </div>
                </div>
                <div class="form-element" id="reviewDiv">
                    <input type="checkbox" name="" id="review" required>
                    <label for="review">I have reviewed my details.</label>
                </div>
                <div class="form-element" id="saveDetailsDiv">
                    <button type="submit" class="button-17" role="button" id="saveDetails">Submit</button>
                </div>
            </form>
        <!-- </div> -->
    </div>
    
    <script src="../controller/resetInitialPasssword.js"></script>
</body>
</html>