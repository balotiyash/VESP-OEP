<?php
    session_start();

    // Check if user is logged in
    if (!isset($_SESSION["staffSession"]) && !isset($_SESSION["adminSession"])) {
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
    <title>VESP-OEP Students List</title>

    <link rel="shortcut icon" type="image/x-icon" href="../../asset/images/VES-logo.png" />
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="../style/studentListStyle.css">
    <link rel="stylesheet" href="../../home/style/buttonStyle.css">
    <link rel="stylesheet" href="../../shared/style/devFooter.css">
</head>
<body onload="displayYear()">
    <header>
        <nav class="navBarDiv">
            <img src="../../asset/images/VESP Logo.png" alt="VES Polytechnic" id="vespLogo">
            <p id="studClassDesc">Students List</p>
    
            <div id="navBtns">
                <button type="button" id="homeBtn" class="btn btn-light" onclick="openHomePage()">Home</button>
                <div class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button" id="studListBtn" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Students List
                    </button>
                    <div class="dropdown-menu" aria-labelledby="" id="yearDropDown">
                        <a class="dropdown-item" href="javascript: openStudentList('fy')">First Year</a>
                        <a class="dropdown-item" href="javascript: openStudentList('sy')">Second Year</a>
                        <a class="dropdown-item" href="javascript: openStudentList('ty')">Third Year</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <main id="mainPage">
        <section>
            <div class="userInfoDiv" id="collectInfo">
                <label for="branchBtns" id="yearLabel"></label>
                <div id="branchBtns">
                    <button class="button-17" id="aoBtn" onclick="fetchStudentList('ao')">AO</button>
                    <button class="button-17" id="ceBtn" onclick="fetchStudentList('ce')">CE</button>
                    <button class="button-17" id="coBtn" onclick="fetchStudentList('co')">CO</button>
                    <button class="button-17" id="eeBtn" onclick="fetchStudentList('ee')">EE</button>
                    <button class="button-17" id="ejBtn" onclick="fetchStudentList('ej')">EJ</button>
                    <button class="button-17" id="meBtn" onclick="fetchStudentList('me')">ME</button>
                </div>

                <div id="verticalDivider"></div>
                
                <div>
                    <label for="studentEnrollment">Enrollment No.:</label>
                    <input type="number" id="studentEnrollment" placeholder="Enter Enrollment Number">
                </div>

                <button class="button-17" id="viewResultBtn" onclick="fetchStudentEnroll()">Search Student</button>
            </div>
        </section>

        
        <section>
            <div id="resultPage">
                <div id="noResultFound">
                    <img src="../../asset/images/No Action Selected.svg" alt="jhhj" id="noDataImg">
                    <p>Please select student <span>Year</span> & <span>Branch</span> or simply search student with <span>Enrollment No.</span></p>
                </div>
            </div>
        </section>

        <section id="tableSection">
            <table id="studentTable">
                <thead>
                </thead>
                <tbody>
                </tbody>
            </table>
        </section>
    </main>

    <footer>
        <div>
            <p id="devInfo" style="margin: 0;">Developed by <a href="#" class="transition">Yash Balotiya</a> & <a href="#" class="transition">Shreya Shukla</a>.</p>
        </div>
    </footer>

    <script src="../controller/displayStudentList.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>