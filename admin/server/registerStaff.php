<?php
require_once "../../shared/server/connection.php"; // Include your database connection file

if (isset($_POST["staffName"]) && isset($_POST["staffDept"]) && isset($_POST["staffEmail"])) {
    // Retrieve POST data
    $staffName = $_POST["staffName"];
    $staffDept = $_POST["staffDept"];
    $staffEmail = $_POST["staffEmail"];

    // Check if email already exists in the database
    $query = "SELECT * FROM staff_details WHERE staff_email  = ?";
    $stmt = mysqli_prepare($con, $query);
    mysqli_stmt_bind_param($stmt, "s", $staffEmail);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_store_result($stmt);

    if (mysqli_stmt_num_rows($stmt) > 0) {
        // Email already exists, echo a message
        echo "User already exists in the database.";
    } else {
        // Email does not exist, insert the data into the database
        $insertQuery = "INSERT INTO staff_details (staff_name, 	staff_dept, staff_email ) VALUES (?, ?, ?)";
        $insertStmt = mysqli_prepare($con, $insertQuery);
        mysqli_stmt_bind_param($insertStmt, "sss", $staffName, $staffDept, $staffEmail);
        mysqli_stmt_execute($insertStmt);

        if (mysqli_stmt_affected_rows($insertStmt) > 0) {
            echo "Staff registered successfully.";
        } else {
            echo "Error inserting data.";
        }

        mysqli_stmt_close($insertStmt);
    }

    mysqli_stmt_close($stmt);
}

mysqli_close($con);
?>
