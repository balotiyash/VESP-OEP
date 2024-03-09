<?php
    session_start();

    // Check if user is logged in
    if (!isset($_SESSION["studentSession"])) {
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
    <title>Student Dashboard</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../asset/images/VES-logo.png" />
    <link rel="stylesheet" href="../style/dashboard.css">
    <link rel="stylesheet" href="../style/subjectDetails.css">
    <link rel="stylesheet" href="../../home/style/buttonStyle.css">
    <link rel="stylesheet" href="../style/dashLeft.css">
</head>

<body>
    <!-- Navigation Bar -->
    <header>
        <div id="navBarDiv">
            <img src="../../asset/images/VESP Logo.png" alt="VESP Logo" id="vespLogo">
            <div id="userDiv">
                <p id="welcome">Welcome<p id="studentName"><?php echo $_SESSION["studentSession"]; ?></p></p>
            </div>
            <button class="button-17" role="button" id="studLogoutBtn" onclick="logout()">Logout</button>
        </div>
    </header>

    <main>
        <!-- Complete Main Page (Left + Right) -->
        <section id="homePage">

            <!-- Left Panel -->
            <div id="navPanel">
                <div id="commonDiv" class="allSem">
                    <p>Common Subjects</p>
                    <input type="button" class="subjectBtn" value="Management" id="mgtBtn" onclick="openSubjectDetails('mgt')">
                    <input type="button" class="subjectBtn" value="Environmental Studies" id="estBtn" onclick="openSubjectDetails('est')">
                </div>
                <div id="first" class="allSem">
                    <p>First Semester</p>
                    <input type="button" class="subjectBtn" value="Basic Science" id="bscBtn" onclick="openSubjectDetails('bsc')">
                </div>
                <div id="second" class="allSem">
                    <p>Second Semester</p>
                    <input type="button" class="subjectBtn" value="Applied Science" id="ascBtn" onclick="openSubjectDetails('asc')">
                    <input type="button" class="subjectBtn" value="Basic Electrical & Electronics Engineering" id="beeBtn" onclick="openSubjectDetails('bee')">
                </div>
                <div id="third" class="allSem">
                    <p>Third Semester</p>
                    <input type="button" class="subjectBtn" value="Mechanical Engineering Materials" id="memBtn" onclick="openSubjectDetails('mem')">
                </div>
                <div id="fifth" class="allSem">
                    <p>Fifth Semester</p>
                    <input type="button" class="subjectBtn" value="Advanced Java Programming" id="ajpBtn" onclick="openSubjectDetails('ajp')">
                </div>
                <div id="sixth" class="allSem">
                    <p>Sixth Semester</p>
                    <input type="button" class="subjectBtn" value="Emerging Trends in Electronics" id="eteBtn" onclick="openSubjectDetails('ete')">
                    <input type="button" class="subjectBtn" value="Emerging Trends in Civil Engineering" id="etcBtn" onclick="openSubjectDetails('etc')">
                    <input type="button" class="subjectBtn" value="Emerging Trends in Computer and IT" id="etiBtn" onclick="openSubjectDetails('eti')">
                    <input type="button" class="subjectBtn" value="Emerging Trends in Electrical Engineering" id="eteeBtn" onclick="openSubjectDetails('etee')">
                    <input type="button" class="subjectBtn" value="Emerging Trends in Mechanical Engineering" id="etmBtn" onclick="openSubjectDetails('etm')">
                </div>
            </div>

            <!-- Right Panel -->
            <div id="mainPage">
                <p id="noExam">No Exam Selected!!</p>

                <!-- Subject Info -->
                <div id="examDetails">
                    <p id="subName"></p>
                    <div id="subInfo">
                        <p id="subCode"></p>
                        <p id="subProgram"></p>
                    </div>
                    <div class="divider"></div>
                    <div id="info">
                        <p>Total Questions: <span id="qno"></span></p>
                        <p>Total Time: 30 Mins.</p>
                    </div>
                    <div class="divider"></div>
                    <div id="rules">
                        <p id="ruleTag">Rules</p>
                        <ul>
                            <li>Any attempt to open new window or tab will lead to end your exam.</li>
                            <li>Don't press the keyboard unnecessarily, it will automatically End your Exam.</li>
                            <li>Use of Mobile phones, Smart watches, E-Series Calculator is strictly prohibited.</li>
                            <li>The timer will start from the moment a student clicks on the Start button.</li>
                            <li>Attempt all questions and save and submit.</li>
                            <li>Once you have attempted all the questions click on submit button and End exam.</li>
                            <li>Remember to Logout of the portal after you have submitted the paper.</li>
                            <li>The Examinee is solely responsible if he/ she presses the End Exam button.</li>
                        </ul>
                    </div>
                    <div id="startDiv">
                        <!-- <input type="button" value="Exam Not Scheduled Yet" id="startExam"> -->
                        <!-- <input type="button" value="Start Exam" id="startExam" onclick="document.location.href = 'exam.html';"> -->
                        <!-- <input type="button" value="Start Exam" id="startExam"> -->
                        <input type="button" value="Start Exam" class="button-17" id="startExam">
                    </div>
                </div>

            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <footer>
            <div id="warning">
                <marquee behavior="" direction="">Note: Every action is been recorded, so be careful while performing any action.</marquee>
            </div>
        </footer>
    </footer>

    <!-- JavaScript -->
    <script src="../controller/studDashboard.js"></script>
    <script src="../controller/subjectInfo.js"></script>
</body>

</html>