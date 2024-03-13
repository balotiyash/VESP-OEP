<?php
    session_start();
    $subjectCode = substr($_POST["subject"], 0,  3);
    $subjectCode = strtolower($subjectCode);
    $enroll = $_SESSION["studentEnroll"];

    function studentResponse($subCode, $enrollment) {
        $correctAnswer = $studentAnswer = $marks = array();
        $classTest = $questionNo = null;

        require_once "../../shared/server/connection.php";

        $query1 = "SELECT subject, class_test FROM class_test_details WHERE subject = '$subCode'";
        $result1 = mysqli_query($con, $query1);
    
        if (mysqli_num_rows($result1) == 1) {
            while ($row = mysqli_fetch_assoc($result1)) {
                $classTest = $row['class_test'];
            }
        }

        $query2 = "SELECT * FROM student_exam_response WHERE class_test = '$classTest' AND subject = '$subCode' AND enrollment_no = $enrollment";
        $result2 = mysqli_query($con, $query2);

        if (mysqli_num_rows($result2) > 0)  {
            while ($row = mysqli_fetch_assoc($result2)) {
                $questionNo[] = $row["question_no"];
                $correctAnswer[] = $row["correct_answer"];
            }
        }

        if (isset($_POST["studentAnswer"])) {
            $studentAnswer = json_decode($_POST["studentAnswer"]);
            // print_r($studentAnswer);
            
            if (count($studentAnswer) == 20) {
                for ($i = 0; $i < 20; $i++) {
                    if (strtolower($correctAnswer[$i]) == strtolower($studentAnswer[$i])) {
                        $marks[$i] = 1;
                    } else {
                        $marks[$i] = 0;
                    }
                }
            }
        }

        // Prepare the statement
        $query3 = "UPDATE student_exam_response SET selected_answer = ?, secured_marks = ? WHERE class_test = '$classTest' AND subject = '$subCode' AND enrollment_no = '$enrollment' AND question_no = ?";
        $stmt = mysqli_prepare($con, $query3);

        if ($stmt === false) {
            // Handle the error appropriately, such as logging or returning an error message
            exit("Error in preparing statement: " . mysqli_error($con));
        }

        for ($i = 0; $i < 20; $i++) {

            // Set parameters and execute
            $selected_ans = $studentAnswer[$i];
            $secured_mark = $marks[$i];
            $qno = $questionNo[$i];

            // Bind parameters
            mysqli_stmt_bind_param($stmt, "sss", $selected_ans, $secured_mark, $qno);

            mysqli_stmt_execute($stmt);

            // Check for errors
            if (mysqli_stmt_errno($stmt)) {
                // Handle the error appropriately, such as logging or returning an error message
                exit("Error in executing statement: " . mysqli_stmt_error($stmt));
            }
        }

        // Close the statement
        mysqli_stmt_close($stmt);
        mysqli_close($con);

        echo "saved";

    }

    if (isset($_POST["task"])) {
        $task = $_POST["task"];

        if ($task == "studResponse") {
            studentResponse($subjectCode, $enroll);
        }
    }
?>