<!-- Session Management -->
<?php
    session_start();

    // Destroy session if it exists
    if (isset($_SESSION['studentSession']) || isset($_SESSION['staffSession']) || isset($_SESSION['adminSession']) || isset($_SESSION['initialReset'])) {
        session_unset();
        session_destroy();
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="asset/images/VES-logo.png">
    <title>VES Polytechnic - OEP</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Style Sheets -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="home/style/navBarStyle.css">
    <link rel="stylesheet" href="home/style/loginPopupStyle.css">
    <link rel="stylesheet" href="home/style/buttonStyle.css">
    <link rel="stylesheet" href="home/style/loginStyle.css">
    <link rel="stylesheet" href="shared/style/devFooter.css">
</head>

<body>
    <!-- Index Page Nav Bar -->
    <header>
        <nav id="navBar">
            <img src="asset/images/VESP Logo.png" alt="VESP Logo" id="vespNavLogo">

            <div id="navBtnsDiv">
                <button class="button-17" role="button" id="resultBtn">Check Result</button>
                <button class="button-17" role="button" id="mockTestBtn">ESE Mock Test</button>
                <button class="button-17" role="button" id="loginBtn">Sign in</button>
                <!-- <?php if (isset($_SESSION['staffSession']) || isset($_SESSION['adminSession'])): ?>
                    <button class="button-17" role="button" id="dashboardBtn" style="display: inline-block;">Dashboard</button>
                    <button class="button-17" role="button" id="loginBtn" style="display: none;">Sign in</button>
                <?php else: ?>
                    <button class="button-17" role="button" id="dashboardBtn" style="display: none;">Dashboard</button>
                    <button class="button-17" role="button" id="loginBtn" style="display: inline-block;">Sign in</button>
                <?php endif; ?> -->
            </div>
        </nav>
    </header>


    <!-- Main Section -->
    <main>
        <!-- Complete Home Page -->
        <section id="homePage">
            
            <!-- Home Page Image -->
            <div>
                <img src="asset/images/OnlineExam.svg" alt="Online Exam Image" id="onlineExamImg">
            </div>

            <!-- Home Page Login Form -->
            <?php include("home/view/roleLogin.html"); ?>
        </section>

        <!-- Home Page Login Button Popup -->
        <?php include("home/view/loginPopup.html"); ?>
    </main>

    <footer>
        <!-- <marquee behavior="" direction="">Note: Every action is been recorded, so be careful while performing any action.</marquee> -->
        <p id="devInfo" style="margin: 0;">Developed by <a href="https://balotiyash.github.io/Personal-Portfolio/" target="_blank" class="transition">Yash Balotiya</a> & <a href="#" class="transition">Shreya Shukla</a>.</p>
    </footer>

    <!-- Script -->
    <script src="script.js"></script>
    <script src="home/controller/login.js"></script>
</body>

</html>