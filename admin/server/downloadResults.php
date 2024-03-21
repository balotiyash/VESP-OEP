<?php
    if (isset($_POST["subjectCode"]) && isset($_POST["ctNo"]) && isset($_POST["examMonth"])) {
        $subjectCode = $_POST["subjectCode"];
        $ctNo = $_POST["ctNo"];
        $examMonth = $_POST["examMonth"];

        $rollNo = $ctDate = $studName = $acedemicYear = $examDate = null;
        $qno = $question = $answer = $marks = array();

        require_once "../../shared/server/connection.php";
        require_once('../../asset/fpdf186/fpdf.php');

        $query1 = "SELECT * FROM student_exam_response WHERE class_test = '$ctNo' AND class_test_date LIKE '$examMonth%' AND subject = '$subjectCode'";

        $result1 = mysqli_query($con, $query1);

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

            $pdf = new FPDF();


            $pdf->AddPage();

            for ($i = 0; $i < count($qno); $i++) {
                echo count($qno);
                
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
    
                $pdf->Cell(38,10,$subjectCode,1,0,'C');
                // $pdf->Cell(38,10,$inputYear,1,0,'C');
    
                // Output PDF content to a file or buffer
                $pdfContent = $pdf->Output('', 'S');
    
                // Send appropriate headers to force download
                header('Content-Type: application/pdf');
                header('Content-Disposition: attachment; filename="downloaded_results.pdf"');
                header('Content-Length: ' . strlen($pdfContent));
    
                // Output PDF content to the client
                echo $pdfContent;
                exit;
            }

        }

    } else {
        echo "Class Test Details Not Recieved";
    }
?>