<?php
    require_once "../../shared/server/connection.php";
    // Initialize variables
    $rollNo = $ctDate = $studName = $acedemicYear = $examDate = null;
    $qno = $question = $answer = $marks = array();

    if (isset($_POST["enrollment"]) && isset($_POST["subject"]) && isset($_POST["classTest"])) {
        // Sanitize input
        $enrollment = $_POST["enrollment"];
        $subject = $_POST["subject"];
        $subject = strtolower(substr($subject, 0, 3));
        $classTest = $_POST["classTest"];

        // Fetch data from the database
        $query1 = "SELECT * FROM student_exam_response WHERE subject = '$subject' AND enrollment_no = '$enrollment' AND class_test = '$classTest'";
        $result1 = mysqli_query($con, $query1);

        if ($result1) {
            if (mysqli_num_rows($result1) > 0) {
                while ($row = mysqli_fetch_assoc($result1)) {
                    $ctDate = $row["class_test_date"];
                    $rollNo = $row["roll_no"];
                    $studName = $row["student_name"];
                    $examDate = $row["class_test_date"];

                    $qno[] = $row["question_no"];
                    $question[] = $row["question"];
                    $answer[] = $row["selected_answer"];
                    $marks[] = $row["secured_marks"];
                }
            }
            
            // Calculate academic year
            date_default_timezone_set('Asia/Kolkata');
            $currentYear = date("Y");
            $currentMonth = date("n");
            $inputYear = substr($examDate, 0, 4);
            $inputYear = intval($inputYear);

            if ($inputYear < $currentYear || ($inputYear == $currentYear && $currentMonth >= 6)) {
                // Previous year - current year
                $acedemicYear = ($inputYear - 1) . " - " . $currentYear;
            } else {
                // Current year - next year
                $acedemicYear = $currentYear . " - " . ($currentYear + 1);
            }
        }

        require('../../asset/fpdf186/fpdf.php');

        $pdf = new FPDF();
        $pdf->AddPage();
        $pdf->SetFont('Arial','B',16);
        // Logo
        $pdf->Image('../../asset/images/VESP-HEADER.png',10,10,190);
        // Move to the right
        $pdf->Cell(80);
        // Line break
        $pdf->Ln(50);

        $header = array(1, 2, 3, 4, 5);
        $data = array(
            array(10,20,30,40,50)
        );

        $pdf->Cell(38,10,$subject,1,0,'C');
        $pdf->Cell(38,10,$inputYear,1,0,'C');

        // Header
        // foreach($header as $col)
        //     $pdf->Cell(38,10,$col,1,0,'C');
        // $pdf->Ln();
        // $pdf->Ln();
        // // Data
        // foreach($data as $row) {
        //     foreach($row as $col)
        //         $pdf->Cell(38,10,$col,0,0,'C');
        //     $pdf->Ln();
        // }

        $pdf->Output();

    }
?>