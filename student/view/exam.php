<?php
    session_start();
    $_SESSION["studentExam"] = true;

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
    <title>VES Polytechnic - Exams</title>
    <link rel="shortcut icon" type="image/x-icon" href="../../asset/images/VES-logo.png" />

    <link rel="stylesheet" href="../style/exam.css">
    <link rel="stylesheet" href="../style/examPart1.css">
    <link rel="stylesheet" href="../style/examPart3.css">
    <link rel="stylesheet" href="../../home/style/buttonStyle.css">
</head>
<body >
    <!-- if opened in mobile devices -->
    <header>
        <div id="orientationMessage">
            <p>Please rotate your device to landscape mode for a better viewing experience.</p>
        </div>
    </header>

    <main>
        <section id="mainContainer">
            <!-- Student Profile: LiveCam, Name, RollNo -->
            <div id="partOne">
                <div id="profileDiv">
                    <h3 id="head1">Student Profile</h3>
                    <!-- <div id="profileImage"></div> -->
                    <img src="../../asset/images/VES-logo.png" alt="VES" id="vesLogo">
                    <p id="studName"><mark id="studentName"><?php echo strtoupper($_SESSION["studentSession"]) ?></mark></p>
                    <p id="studId"><?php echo strtoupper($_SESSION["studentRoll"]) ?></p>
                </div>
                <!-- <hr><hr> -->

                <!-- Questions Tally must change dynamically -->
                <div id="tallyDiv">
                    <h3 id="head2">Question's Tally</h3>
                    <div id="tally">
                        <div id="attempted">Attempted: <span id="attemptedval">0</span></div>
                        <div id="pending">Pending: <span id="pendingval">20</span></div>
                        <div id="review">Review: <span id="reviewval">0</span></div>
                        <div id="total">Total: 20</div>
                    </div>
                </div>
                <div id="endBtnDiv">
                    <!-- <input type="button" value="End Exam" id="endBtn"> -->
                    <button class="button-17" role="button" id="endExamBtn" onclick="endExam()">End Exam</button>
                </div>
            </div>

            <!-- Main QA Page -->
            <div id="partTwo">
                <!-- Dynamically Fetching Questions and Answers -->
                <div id="question">
                    <p id="questionTxt"></p>
                </div>

                <form id="ans">
                    <input type="radio" name="answer" id="optA">
                    <label for="optA" id="rad1"></label>
                    <br>
                    <input type="radio" name="answer" id="optB">
                    <label for="optB" id="rad2"></label>
                    <br>
                    <input type="radio" name="answer" id="optC">
                    <label for="optC" id="rad3"></label>
                    <br>
                    <input type="radio" name="answer" id="optD">
                    <label for="optD" id="rad4"></label>
                    <br><br>
                    <input type="checkbox" id="reviewCbk" onclick="reviewCheckBox()">
                    <label for="reviewCbk">Mark to Review this Question Later</label>
                </form>
                
            </div>

            <!-- 30min Timer -->
            <div id="partThree">
                <div id="timer">
                    <p id="timeRem">Time Remaining</p>
                    <!-- <p id="time">30:00</p> -->
                    <p id="time">--:--</p>
                    <!-- <hr><hr> -->
                </div>

                <hr>
                <?php include("twentyBtns.html") ?>
                <!-- <br> -->
                <hr>

                <!-- Navigation Buttons -->
                <p id="saveNote">Save your answers without fail.</p>
                <div id="navBtns">
                    <input type="button" value="Save & Next" class="navBtn" id="next" onclick="saveAndNext()">
                    <input type="button" value="Save" class="navBtn" id="save" onclick="saveAnswer()">
                    <input type="button" value="Previous" class="navBtn" id="back" onclick="previous()">
                </div>
            </div>
        </section>
    </main>

    <!-- Footer Message -->
    <footer>
        <div id="warning">
            <marquee behavior="" direction="">Note: Every action is been recorded, so be careful while performing any action.</marquee>
        </div>
    </footer>

    <!-- javaScript -->
    <script src="../controller/fetchQnaPhp.js"></script>
    <script src="../controller/examFunc.js"></script>
    <script src="../controller/button20.js"></script>
    <script src="../controller/examTimer.js"></script>
    <script src="../controller/examControlButton.js"></script>
</body>
</html>