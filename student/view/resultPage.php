<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../../asset/images/VES-logo.png">
    <title>VESP-OEP Results</title>

    <link rel="stylesheet" href="../../home/style/buttonStyle.css">
    <link rel="stylesheet" href="../../home/style/navBarStyle.css">
    <link rel="stylesheet" href="../style/resultPageStyle.css">
    <link rel="stylesheet" href="../style/resultA4.css">
    <link rel="stylesheet" href="../../shared/style/devFooter.css">
</head>
<body>
    <!-- Nav Bar -->
    <header>
        <nav id="navBar">
            <img src="../../asset/images/VESP Logo.png" alt="VESP Logo" id="vespNavLogo">

            <div id="navBtnsDiv">
                <button class="button-17" role="button" id="homeBtn" onclick="window.location.href = '../../index.php';">Home</button>
                <!-- <button class="button-17" role="button" id="mockTestBtn" onclick="alert('Feature Launching Soon!! Stay tuned..');">ESE Mock Test</button>
                <button class="button-17" role="button" id="resultSignBtn">Sign in</button> -->
            </div>
        </nav>
    </header>

    <main id="mainPage">
        <section>
            <form action="resultA4.php" method="post" class="userInfoDiv" id="collectInfo" onsubmit="return fetchResult()">
                <div>
                    <label for="enrollTxt">Enrollment No.:</label>
                    <input type="number" name="enrollment" id="enrollTxt" placeholder="Enter Enrollment Number" required>
                </div>

                <div>
                    <label for="selectSubject">Subject:</label>
                    <select id="selectSubject" required name="subject">
                        <option value="" disabled selected>Select Subject</option>
                        <option value="mgt">MGT/MAN - Management</option>
                        <option value="est">EST - Environmental Studies</option>
                        <option value="bsc">BSC - Basic Science</option>
                        <option value="asc">ASC - Applied Science</option>
                        <option value="bee">BEE - Basic Electrical & Electronics Engineering</option>
                        <option value="mem">MEM - Mechanical Engineering Materials</option>
                        <option value="ajp">AJP - Advanced Java Programming</option>
                        <option value="ete">ETE - Emerging Trends in Electronics</option>
                        <option value="etee">ETE - Emerging Trends in Electrical Engineering</option>
                        <option value="etc">ETC - Emerging Trends in Civil Engineering</option>
                        <option value="eti">ETI - Emerging Trends in Computer & IT</option>
                        <option value="etm">ETM - Emerging Trends in Mechanical Engineering</option>
                    </select>
                </div>

                <div>
                    <label for="">Select CT :</label>
                    <input type="radio" name="classTest" id="ct1Radio" required>
                    <label for="ct1Radio" class="radioLabel">CT1</label>
                    <input type="radio" name="classTest" id="ct2Radio" required>
                    <label for="ct2Radio" class="radioLabel">CT2</label>
                </div>

                <button type="submit" class="button-17" id="viewResultBtn">View CT Result</button>
            </form>
        </section>

        <!-- <embed src="../../asset/IJRPR22653.pdf" width="1024px" height="500px" /> -->
        
        <section id="noResultSection">
            <div id="resultPage">
                <div id="noResultFound">
                    <img src="../../asset/images/No Action Selected.svg" alt="jhhj" id="noDataImg">
                    <p>Please enter details and click <span>'View CT Result'</span> button</p>
                </div>

                <!-- <div></div> -->
            </div>
        </section>

        <section id="resultSection" hidden>
            <!-- <?php include("resultA4.php") ?> -->
            <div id="resultA4">
                <div id="imageDiv">
                    <img src="../../asset/images/VESP-HEADER.png" id="vespHeader" alt="VESP-HEADER LOGO">
                </div>
                
                <div class="studInfo">
                    <p><?php echo $acedemicYear ?></p>
                    <p>Date: <span><?php echo $studName ?></span></p>
                </div>

                <div class="studInfo">
                    <p>Class Test 2</p>
                    <p>Subject Code: <span>EST</span></p>
                    <p>Total Marks: 20</p>
                </div>
                
                <div class="divider"></div>

                <div>
                    <table>
                        <thead>
                            <tr>
                                <th>Sr. No.</th>
                                <th>Q. No.</th>
                                <th>Question</th>
                                <th>Answer</th>
                                <th>Marks</th>
                                <th>CO Map</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <!-- <marquee behavior="" direction="">Note: Every action is been recorded, so be careful while performing any action.</marquee> -->
        <p id="devInfo" style="margin: 0;">Made with <i class="fa-solid fa-heart icon-transition"></i> by <a href="#" class="transition">Yash Balotiya</a> & <a href="#" class="transition">Shreya Shukla</a>.</p>
    </footer>
    
    <script src="../controller/resultPage.js"></script>
</body>
</html>