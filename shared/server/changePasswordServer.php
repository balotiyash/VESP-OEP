<?php
    $existPass = $_POST["existingPassword"];
    $cnfPass = $_POST["confirmPassword"];
    session_start();
    // $staffEmail = $_SESSION["staffEmail"];
    $staffEmail = null;
    $staffPass = null;

    if (isset($_SESSION["staffEmail"])) {
        $staffEmail = $_SESSION["staffEmail"];
    } else if (isset($_SESSION["adminEmail"])) {
        $staffEmail = $_SESSION["adminEmail"];
    }

    if (isset($staffEmail)) {
        if (isset($existPass) && isset($cnfPass)) {
            require_once "connection.php";

            // Hash the password
            $hashedPassword = password_hash($cnfPass, PASSWORD_DEFAULT);
    
            $query = "SELECT * FROM staff_details WHERE staff_email = ?";
            $stmt = mysqli_prepare($con, $query);
            mysqli_stmt_bind_param($stmt, "s", $staffEmail);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
            $num_rows = mysqli_num_rows($result);
    
            if ($num_rows == 1) {
                if ($row = mysqli_fetch_assoc($result)) {
                    // Access columns using associative array keys
                    $staffPass = $row['staff_password'];
                    // Access other columns similarly
                } else {
                    // No rows returned
                    echo "No rows found.";
                    return;
                }

                if (password_verify($existPass, $staffPass)) {
                    $resetQuery = "UPDATE staff_details SET staff_password = ? WHERE staff_email = ?";
                    $stmt = mysqli_prepare($con, $resetQuery);
                    mysqli_stmt_bind_param($stmt, "ss", $hashedPassword, $staffEmail); // Changed $staffName to $staffEmail
                    mysqli_stmt_execute($stmt);
    
                    // Check if the update was successful
                    if (mysqli_affected_rows($con) > 0) {
                        // Password reset successful
                        echo "done";
                    } else {
                        // No rows affected, possibly due to unchanged values
                        echo "wrong";
                    }
                } else {
                    echo "invalid";
                }

            } else {
                // Either no rows or more than one row returned for the given email
                echo "Invalid Information.";
            }
    
            mysqli_stmt_close($stmt);
            mysqli_close($con);
        } else {
            // Handle missing POST data
            echo "Missing required data.";
        }  
    }
?>
