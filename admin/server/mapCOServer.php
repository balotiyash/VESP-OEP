<?php
require_once "../../shared/server/connection.php";

$subject = $_POST["subject"];
$classTest = $_POST["classTest"];
$co1 = $_POST["co1"];
$co2 = $_POST["co2"];
$co3 = $_POST["co3"];
$co4 = $_POST["co4"];
$co5 = $_POST["co5"];
$co6 = $_POST["co6"];

if (isset($subject) && isset($classTest)) {

    // Check if the subject already exists in the database
    $query = "SELECT * FROM class_test_details WHERE subject = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, "s", $subject);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_store_result($stmt);

    if (mysqli_stmt_num_rows($stmt) > 0) {
        // Subject already exists, update the record
        $updateQuery = "UPDATE class_test_details SET class_test = ?, co1 = ?, co2 = ?, co3 = ?, co4 = ?, co5 = ?, co6 = ? WHERE subject = ?";
        $updateStmt = mysqli_prepare($con, $updateQuery);
        mysqli_stmt_bind_param($updateStmt, "ssssssss", $classTest, $co1, $co2, $co3, $co4, $co5, $co6, $subject);
        mysqli_stmt_execute($updateStmt);
        mysqli_stmt_close($updateStmt);

        echo "COs Mapped Successfully for $subject.";
    } else {
        // Subject does not exist, insert a new record
        $insertQuery = "INSERT INTO class_test_details  VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        $insertStmt = mysqli_prepare($con, $insertQuery);
        mysqli_stmt_bind_param($insertStmt, "ssssssss", $subject, $classTest, $co1, $co2, $co3, $co4, $co5, $co6);
        mysqli_stmt_execute($insertStmt);
        mysqli_stmt_close($insertStmt);

        echo "COs Mapped Successfully for " . strtoupper($subject) .".";
    }

    mysqli_stmt_close($stmt);
} else {
    echo "Data not received.";
}

mysqli_close($con);
?>
