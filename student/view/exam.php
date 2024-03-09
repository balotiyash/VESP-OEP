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
                    <p id="studName"><mark id="studentName"></mark></p>
                    <p id="studName">YASH LAXMAN BALOTIYA</p>
                    <p id="studId">CO5IA - 61</p>
                </div>
                <!-- <hr><hr> -->

                <!-- Questions Tally must change dynamically -->
                <div id="tallyDiv">
                    <h3 id="head2">Question's Tally</h3>
                    <div id="tally">
                        <div id="attempted">Attempted: <span>0</span></div>
                        <div id="pending">Pending: <span>20</span></div>
                        <div id="review">Review: <span>0</span></div>
                        <div id="total">Total: 20</div>
                    </div>
                </div>
                <div id="endBtnDiv">
                    <!-- <input type="button" value="End Exam" id="endBtn"> -->
                    <button class="button-17" role="button" id="endExamBtn">End Exam</button>
                </div>
            </div>

            <!-- Main QA Page -->
            <div id="partTwo">
                <!-- Dynamically Fetching Questions and Answers -->
                <div id="question">
                    <p>1. How many ports of TCP/IP are reserved for specific protocols?</p>
                    <!-- <p>1. Choose the Correct Output
                        importjava.awt.event.*;
                        import java.awt.*;
                        importjava.applet.*;
                        public class checkbackg extends Applet implements ItemListener {
                            Checkbox m1,m2,m3;public void init() {
                                m1=new Checkbox("A");m2=new Checkbox("B");
                                m3=new Checkbox("C");add(m1);add(m2);add(m3);
                                m1.addItemListener(this);m2.addItemListener(this);
                            }
                            public void itemStateChanged(ItemEventie) {
                                if(ie.getSource()==m1)
                                setBackground(Color.red);
                                if(ie.getSource()==m2)
                                setBackground(Color.green);
                            }
                        }
                        /*< applet code=checkbackg.class height=150 width=150>< /applet>*/
                    </p> -->
                    <!-- <pre>1. Which of these exception is thrown by URL class's constructors?</pre> -->
                    <!-- <pre id="saval"></pre> -->
                </div>

                <div id="ans">
                    <input type="radio" name="answer" id="a">
                    <label for="a" id="rad1"></label>
                    <br>
                    <input type="radio" name="answer" id="b">
                    <label for="b" id="rad2"></label>
                    <br>
                    <input type="radio" name="answer" id="c">
                    <label for="c" id="rad3"></label>
                    <br>
                    <input type="radio" name="answer" id="d">
                    <label for="d" id="rad4"></label>
                    <br><br>
                    <input type="checkbox" id="reviewCbk">
                    <label for="reviewCbk">Mark to Review this Question Later</label>
                </div>
                
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
                    <input type="button" value="Save & Next" class="navBtn" id="next">
                    <input type="button" value="Save" class="navBtn" id="save">
                    <input type="button" value="Previous" class="navBtn" id="back">
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
    <script type="module" src="../controller/examTimer.js"></script>
    <script type="module" src="../controller/examFunc.js"></script>
</body>
</html>