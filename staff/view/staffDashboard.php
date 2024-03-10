<?php
    session_start();

    // Check if user is logged in
    if (!isset($_SESSION["staffSession"])) {
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
    <title>VESP-OEP - Staff Dashboard</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../asset/images/VES-logo.png" />

    <!-- For Heart Symbol -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- For Dropdown Menu -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="../style/staffDashNav.css">
    <link rel="stylesheet" href="../style/staffDashboard.css">
    <link rel="stylesheet" href="../style/btnStyle.css">
    <link rel="stylesheet" href="../../shared/style/changeTestCode.css">
    <link rel="stylesheet" href="../style/scheduleTestStyle.css">
    <link rel="stylesheet" href="../../shared/style/excelFormat.css">
    <link rel="stylesheet" href="../style/uploadStudList.css">
    <link rel="stylesheet" href="../../shared/style/changePassword.css">
    <link rel="stylesheet" href="../../shared/style/devFooter.css">
</head>

<body>
    <header>
        <?php include("staffDashNav.html"); ?>
    </header>

    <main id="mainPage">
        <section id="welcomeDiv">
            <div id="profile">
                <p>Welcome,</p>
                <h2><?php echo ucwords($_SESSION["staffSession"]); ?></h2>
            </div>

            <div id="testCodeDiv">
                <p>Current Test Code</p>
                <!-- <h2>XXXX</h2> -->
                <?php
                    $con = mysqli_connect("localhost", "root", "", "vesp_oep") or die("Connection Failed!");
                    $query = "SELECT * FROM exam_test_code;";
                    $result = mysqli_query($con, $query) or die("Query Unsuccessful!");

                    if (mysqli_num_rows($result) > 0) {

                        while ($row = mysqli_fetch_assoc($result)) {
                ?>
                <h2 id="testCode"><?php echo $row["test_code"]; ?></h2>
            </div>

            <?php
                    }
                } else {
                    echo "<h2 id='tetstCode'>XXXX</h2>";
                }

                mysqli_close($con);
            ?>
        </section>

        <section id="threeDivs">
            <div id="quickAction">
                <p>Quick Actions</p>
                <button class="button-17" onclick="displayTestCode()">Change Test Code</button>
                <button class="button-17" onclick="alert('Feature Launching Soon!! Stay tuned..');">Schedule Mock Test</button>
                <button class="button-17" onclick="excelFormat()">Format for Excel Uploading</button>
                <button class="button-17">Consolidated Marksheet</button>
                <button class="button-17"  onclick="changePassword()">Change Password</button>
                <button class="button-17" id="signoutBtn" onclick="logout()">Sign out</button>
            </div>

            <div id="actionDiv">
                <div id="noActionDiv">
                    <!-- <img src="../../asset/images/Select Action.svg" alt="" id="noActionImg"> -->
                    <img src="../../asset/images/No Action Selected.svg" alt="" id="noActionImg">
                    <p>No Action Selected!</p>
                </div>
                <?php include("scheduleTest.html"); ?>
                <?php include("../../shared/view/changeCode.html"); ?>
                <?php include("../../shared/view/excelFormat.html"); ?>
                <?php include("../../shared/view/changePassword.html"); ?>
                <?php include("uploadStudList.html"); ?>
            </div>

            <div id="activeSession">
                <p>Active Sessions</p>
            </div>
        </section>
    </main>

    <footer>
        <div>
            <p id="devInfo" style="margin: 0;">Developed by <a href="#" class="transition">Yash Balotiya</a> & <a href="#" class="transition">Shreya Shukla</a>.</p>
        </div>
    </footer>

    <script src="../controller/staffDashboard.js"></script>
    <script src="../controller/uploadExcelScript.js"></script>
    <script src="../../shared/controller/setPass_Test.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>