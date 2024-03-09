<?php
require_once "../../shared/server/connection.php";

$subject = $_POST["subject"];
$examDate = $_POST["examDate"];
$startTime = $_POST["startTime"];
$endTime = $_POST["endTime"];

if (isset($subject) && isset($examDate) && isset($startTime) && isset($endTime)) {

    // Check if the subject already exists in the database
    $query = "SELECT * FROM class_test_schedule WHERE subject_name = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, "s", $subject);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_store_result($stmt);

    if (mysqli_stmt_num_rows($stmt) > 0) {
        // Subject already exists, update the record
        $updateQuery = "UPDATE class_test_schedule SET test_date = ?, test_start = ?, test_end = ? WHERE subject_name = ?";
        $updateStmt = mysqli_prepare($con, $updateQuery);
        mysqli_stmt_bind_param($updateStmt, "ssss", $examDate, $startTime, $endTime, $subject);
        mysqli_stmt_execute($updateStmt);
        mysqli_stmt_close($updateStmt);

        echo "Test for $subject updated successfully on $examDate";
    } else {
        // Subject does not exist, insert a new record
        $insertQuery = "INSERT INTO class_test_schedule  VALUES (?, ?, ?, ?)";
        $insertStmt = mysqli_prepare($con, $insertQuery);
        mysqli_stmt_bind_param($insertStmt, "ssss", $subject, $examDate, $startTime, $endTime);
        mysqli_stmt_execute($insertStmt);
        mysqli_stmt_close($insertStmt);

        echo "Test for $subject scheduled successfully on $examDate";
    }

    mysqli_stmt_close($stmt);
} else {
    echo "Data not received.";
}

mysqli_close($con);
?>
