<?php
    session_start();
    $subjectCode = substr($_POST["subject"], 0,  3);
    $subjectCode = strtolower($subjectCode);

    if (isset($_POST["task"])) {
        $task = $_POST["task"];

        if ($task == "testSchedule") {
            verifyTestTime($subjectCode);
        }
    }

    function verifyTestTime($subjectCode) {
        date_default_timezone_set('Asia/Kolkata');
        $today = date('Y-m-d');
        $current_time = date('H:i:s');
    
        require_once "../../shared/server/connection.php";
    
        $query1 = "SELECT * FROM class_test_details WHERE subject = '" . $subjectCode . "'";
        $result1 = mysqli_query($con, $query1);
    
        if (mysqli_num_rows($result1) > 0) {
            $row = mysqli_fetch_assoc($result1); // Fetch the row once
    
            // $examSubject = $row["subject"];
            $examDate = $row["exam_date"];
            $examStartTime = $row["start_time"];
            $examEndTime = $row["end_time"];
    
            if ($today == $examDate) {
                if ($current_time >= $examStartTime && $current_time <= $examEndTime) {
                    verifyExistingStudent($con, $subjectCode);
                } else if ($current_time > $examEndTime) {
                    echo "Exam Ended!";
                } else if ($current_time < $examStartTime) {
                    echo "Exam Not Started!";    
                }
            } else if ($today > $examDate) {
                echo "Exam Expired!";
            } else if ($today < $examDate) {
                echo "Exam Not Started!";
            } else {
                echo "Exam Not Scheduled Yet!";
            }
        } else {
            echo "Exam not found.";
        }
    }    

    function verifyExistingStudent($con, $subjectCode) {
        if (isset($_SESSION["studentEnroll"])) {
            $enrollmentNo = $_SESSION["studentEnroll"];
            $query1 = "SELECT class_test, selected_answer FROM student_exam_response WHERE enrollment_no = ?";
            $stmt = mysqli_prepare($con, $query1); // Corrected variable name
            mysqli_stmt_bind_param($stmt, "s", $enrollmentNo);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
    
            if (mysqli_stmt_num_rows($stmt) == 0) {
                fetchNewQuestions($con, $subjectCode);
                // echo "startExam";
            } else {
                mysqli_stmt_bind_result($stmt, $classTest, $selectedAnswer); // Bind result variables
                while (mysqli_stmt_fetch($stmt)) {
                    $completedExam = true;
                    if ($classTest == "ct2" || $classTest == "ct1") {
                        if ($selectedAnswer == "") {
                            $completedExam = false;
                            // fetchExistingQuestions();
                            echo "fetchExistingQuestions";
                            break;
                        }
                    }
                }
    
                if ($completedExam) {
                    echo "You have already attempted the exam.";
                } else {
                    echo "startExam";
                }
            }
        } 
    }    

    function fetchNewQuestions($con, $subjectCode) {
        // require_once "../../shared/server/connection.php";

        $query1 = "SELECT sr_no, co_map FROM ct_qb_" . $subjectCode;
        $result1 = mysqli_query($con, $query1);

        $co1 = $co2 = $co3 = $co4 = $co5 = $co6 = [];
        // $i = 0;

        if (mysqli_num_rows($result1) > 0) {
            while ($row = mysqli_fetch_assoc($result1)) {
                switch (strtolower($row["co_map"])) {
                    case "co1":
                        $co1[] = $row["sr_no"];
                        break;
                    
                    case "co2":
                        $co2[] = $row["sr_no"];
                        break;
                    
                    case "co3":
                        $co3[] = $row["sr_no"];
                        break;
                    
                    case "co4":
                        $co4[] = $row["sr_no"];
                        break;
                    
                    case "co5":
                        $co5[] = $row["sr_no"];
                        break;
                    
                    case "co6":
                        $co6[] = $row["sr_no"];
                        break; 
                }
            }
        }

        $query2 = "SELECT * FROM class_test_details WHERE subject = '$subjectCode'";
        $result2 = mysqli_query($con, $query2);

        $co1Count = $co2Count = $co3Count = $co4Count = $co5Count = $co6Count = null;

        if (mysqli_num_rows($result2) == 1) {
            while ($row = mysqli_fetch_assoc($result2)) {
                $co1Count = $row["co1"];
                $co2Count = $row["co2"];
                $co3Count = $row["co3"];
                $co4Count = $row["co4"];
                $co5Count = $row["co5"];
                $co6Count = $row["co6"];
            }
        }

        $questionNo = [];

        if (!empty($co1) && count($co1) > 0) {
            shuffle($co1);
            $co1 = array_slice($co1, 0, intval($co1Count));
            $questionNo = array_merge($questionNo, $co1);
        }

        if (!empty($co2) && count($co2) > 0) {
            shuffle($co2);
            $co2 = array_slice($co2, 0, intval($co2Count));
            $questionNo = array_merge($questionNo, $co2);
        }

        if (!empty($co3) && count($co3) > 0) {
            shuffle($co3);
            $co3 = array_slice($co3, 0, intval($co3Count));
            $questionNo = array_merge($questionNo, $co3);
        }

        if (!empty($co4) && count($co4) > 0) {
            shuffle($co4);
            $co4 = array_slice($co4, 0, intval($co4Count));
            $questionNo = array_merge($questionNo, $co4);
        }

        if (!empty($co5) && count($co5) > 0) {
            shuffle($co5);
            $co5 = array_slice($co5, 0, intval($co5Count));
            $questionNo = array_merge($questionNo, $co5);
        }

        if (!empty($co6) && count($co6) > 0) {
            shuffle($co6);
            $co6 = array_slice($co6, 0, intval($co6Count));
            $questionNo = array_merge($questionNo, $co6);
        }

        $twentyQuestions = $twentyOptA = $twentyOptB = $twentyOptC = $twentyOptD = $twentyCorrectAns = [];
        
        if (count($questionNo) == 20 or count($questionNo) == 30) {
            foreach ($questionNo as $qno) {
                $query3 = "SELECT * FROM ct_qb_" . $subjectCode . " WHERE sr_no = '$qno'";
                $result3 = mysqli_query($con, $query3);

                // Check if the query returned any rows
                if (mysqli_num_rows($result3) > 0) {
                    while ($row = mysqli_fetch_assoc($result3)) {
                        // Populate the arrays with data from the database
                        $twentyQuestions[] = $row["question"];
                        $twentyOptA[] = $row["option_a"];
                        $twentyOptB[] = $row["option_b"];
                        $twentyOptC[] = $row["option_c"];
                        $twentyOptD[] = $row["option_d"];
                        $twentyCorrectAns[] = $row["correct_answer"];
                    }
                } else {
                    // Handle the case where no rows are returned
                    echo "No questions found.";
                }
            }
            // echo count($questionNo);
        } else {
            // echo count($questionNo);
            echo "COs not mapped properly! Ask Admin to re-check the QB or change the mapped COs.";
            return;
        }

        $enrollmentNo = $_SESSION["studentEnroll"];
        $rollNo = strtoupper($_SESSION["studentRoll"]);
        $studentName = ucwords($_SESSION["studentSession"]);
        $classTest = $classTestDate = null;
        // $subject = $_POST["subjectCode"];

        $query4 = "SELECT class_test, exam_date FROM class_test_details WHERE subject = '$subjectCode'";
        $result4 = mysqli_query($con, $query4);
        if (mysqli_num_rows($result4) == 1) {
            while ($row = mysqli_fetch_assoc($result4)) {
                $classTest = $row["class_test"];
                $classTestDate = $row["exam_date"];
            }
        }

        $query5 = "INSERT INTO student_exam_response (sr_no, question_no, enrollment_no, roll_no, student_name, class_test, class_test_date, subject, question, option_a, option_b, option_c, option_d, correct_answer) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        for ($i = 1; $i <= count($questionNo); $i++) {
            $questionNumber = $questionNo[$i - 1];
            $question = $twentyQuestions[$i - 1];
            $optA = $twentyOptA[$i - 1];
            $optB = $twentyOptB[$i - 1];
            $optC = $twentyOptC[$i - 1];
            $optD = $twentyOptD[$i - 1];
            $correctAns = $twentyCorrectAns[$i - 1];
        
            $stmt = mysqli_prepare($con, $query5);
            mysqli_stmt_bind_param($stmt, "ssssssssssssss", $i, $questionNumber, $enrollmentNo, $rollNo, $studentName, $classTest, $classTestDate, $subjectCode, $question, $optA, $optB, $optC, $optD, $correctAns);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);   
        }
        echo "startExam";
    }

    function fetchExistingQuestions() {

    }
?>