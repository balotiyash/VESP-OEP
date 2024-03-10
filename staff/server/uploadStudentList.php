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
            $branch = $_POST["branch"];
            $year = $_POST["year"];

            $con = mysqli_connect("localhost", "root", "", "vesp_oep") or die("Connection Failed.");
            $query1 = "TRUNCATE TABLE ".$year."_".$branch."_students;";
            $result1 = mysqli_query($con, $query1) or die ("Query1 Failed.");
            $result2 = null;

            if ($result1) {
                $query2 = "INSERT INTO ".$year."_".$branch."_students "."VALUES (?, ?, ?);"; // corrected query
                $stmt = mysqli_prepare($con, $query2) or die("Query Error!!"); // use $query2
            
                // Process the data
                foreach ($sheetData as $row) {
                    $headerCount++;
                    $enroll = isset($row[0]) ? $row[0] : '';
                    $roll = isset($row[1]) ? $row[1] : '';
                    $name = isset($row[2]) ? $row[2] : '';
            
                    if ($headerCount == 1) {
                        continue;
                    } else {
                        // Bind parameters
                        $uppercaseName = strtolower($name);
                        $uppercaseRoll = strtolower($roll);
                        $numericEnrollment = (int) $enroll;
                        mysqli_stmt_bind_param($stmt, "sss", $numericEnrollment, $uppercaseRoll , $uppercaseName); // bind three parameters
                        // Execute statement
                        $result2 = mysqli_stmt_execute($stmt);
            
                        if (!$result2) {
                            echo "Student data insertion failed.";
                            break; // exit loop if insertion fails
                        }
                    }
                }
            
                if ($result2) {
                    echo "Student data inserted successfully.";
                }
            
                mysqli_stmt_close($stmt);
                mysqli_close($con);
            } else {
                echo "Removing data from table ty_co failed.";
            }
            
        } else {
            echo "Invalid file format. Please upload a file with one of the following extensions: " . implode(", ", $allowed_ext);
        }
    } else {
        echo "Error: File not uploaded or invalid request.";
    }

?>
