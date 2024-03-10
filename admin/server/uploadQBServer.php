<?php
require '../../asset/vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\IOFactory;

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES["formFile"])) {
    $allowed_ext = ["xls", "csv", "xlsx"];
    $fileName = $_FILES["formFile"]["name"];
    $checking = explode(".", $fileName);
    $file_ext = strtolower(end($checking));

    if (in_array($file_ext, $allowed_ext)) {
        $targetPath = $_FILES["formFile"]["tmp_name"];
        $spreadsheet = IOFactory::load($targetPath);
        $sheetData = $spreadsheet->getActiveSheet()->toArray();

        $headerCount = 0;
        $subject = $_POST["subject"];

        require_once "../../shared/server/connection.php"; // Adjust this path according to your project structure

        $query1 = "TRUNCATE TABLE " . "ct_qb_" . $subject;
        $result1 = mysqli_query($con, $query1);

        if ($result1) {
            $query2 = "INSERT INTO " . "ct_qb_" . $subject . " VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            $stmt = mysqli_prepare($con, $query2);

            if ($stmt) {
                foreach ($sheetData as $row) {
                    $headerCount++;
                    if ($headerCount == 1) {
                        continue;
                    }

                    $srNo = isset($row[0]) ? $row[0] : '';
                    $coMap = isset($row[1]) ? $row[1] : '';
                    $coMap = strtolower($coMap);
                    $question = isset($row[2]) ? $row[2] : '';
                    $optionA = isset($row[3]) ? $row[3] : '';
                    $optionB = isset($row[4]) ? $row[4] : '';
                    $optionC = isset($row[5]) ? $row[5] : '';
                    $optionD = isset($row[6]) ? $row[6] : '';
                    $correctAnswer = isset($row[7]) ? $row[7] : '';
                    $correctAnswer = strtolower($correctAnswer);

                    mysqli_stmt_bind_param($stmt, "ssssssss", $srNo, $coMap, $question, $optionA, $optionB, $optionC, $optionD, $correctAnswer);
                    $result2 = mysqli_stmt_execute($stmt);

                    if (!$result2) {
                        echo json_encode(array("success" => false, "message" => "Error inserting data."));
                        break;
                    }
                }

                mysqli_stmt_close($stmt);
                mysqli_close($con);

                echo json_encode(array("success" => true, "message" => "Data inserted successfully."));
            } else {
                echo json_encode(array("success" => false, "message" => "Failed to prepare statement."));
            }
        } else {
            echo json_encode(array("success" => false, "message" => "Failed to truncate table."));
        }
    } else {
        echo json_encode(array("success" => false, "message" => "Invalid file format."));
    }
} else {
    echo json_encode(array("success" => false, "message" => "Error: File not uploaded or invalid request."));
}
?>
