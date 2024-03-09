<?php
class ResetPassword {
    private $con;
    public $resetQuery;

    function __construct() {
        // Establish database connection
        $this->con = new mysqli("localhost", "root", "", "vesp_oep");

        // Check connection
        if ($this->con->connect_error) {
            die("Connection failed: " . $this->con->connect_error);
        }
    }

    function resetInitialPassword() {
        $uname = $_POST["uname"];
        $newPass = $_POST["newPass"];
        $dob = $_POST["dob"];
        $securityQuestion = $_POST["securityQuestion"];
        $securityAnswer = $_POST["securityAnswer"];
    
        if (
            isset($uname) &&
            isset($newPass) &&
            isset($dob) &&
            isset($securityQuestion) &&
            isset($securityAnswer)
        ) {
            // Hash the password
            $hashedPassword = password_hash($newPass, PASSWORD_DEFAULT);
    
            // Hash the security answer (adjust the algorithm and options as needed)
            $hashedSecurityAnswer = password_hash($securityAnswer, PASSWORD_DEFAULT);
    
            $query = "SELECT * FROM staff_details WHERE staff_email = ?";
            $stmt = mysqli_prepare($this->con, $query);
            mysqli_stmt_bind_param($stmt, "s", $uname);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
    
            $num_rows = mysqli_num_rows($result);
    
            if ($num_rows == 1) {
                // $resetQuery = "UPDATE staff_details SET staff_password = ?, staff_dob = ?, security_question = ?, security_answer = ? WHERE staff_email = ?";
                $stmt = mysqli_prepare($this->con, $this->resetQuery);
                mysqli_stmt_bind_param($stmt, "sssss", $hashedPassword, $dob, $securityQuestion, $hashedSecurityAnswer, $uname);
                mysqli_stmt_execute($stmt);
    
                // Check if the update was successful
                if (mysqli_affected_rows($this->con) > 0) {
                    // Password reset successful
                    echo "Password reset successful.";
                } else {
                    // No rows affected, possibly due to unchanged values
                    echo "Password reset failed.";
                }
            } else {
                // Either no rows or more than one row returned for the given email
                echo "Invalid email.";
            }
    
            mysqli_stmt_close($stmt);
        } else {
            // Handle missing POST data
            echo "Missing required data.";
        }
    }
    
    function resetPassword() {
        $uname = $_POST["uname"];
        $newPass = $_POST["newPass"];
        $dob = $_POST["dob"];
        $securityQuestion = $_POST["securityQuestion"];
        $securityAnswer = $_POST["securityAnswer"];
    
        if (
            isset($uname) &&
            isset($newPass) &&
            isset($dob) &&
            isset($securityQuestion) &&
            isset($securityAnswer)
        ) {
            // Hash the password
            $hashedPassword = password_hash($newPass, PASSWORD_DEFAULT);
    
            $query = "SELECT * FROM staff_details WHERE staff_email = ?";
            $stmt = mysqli_prepare($this->con, $query);
            mysqli_stmt_bind_param($stmt, "s", $uname);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
    
            $num_rows = mysqli_num_rows($result);
    
            if ($num_rows == 1) {
                $staff_dob = $security_question = $security_answer = null;

                // Fetch each row as an associative array
                while($row = mysqli_fetch_assoc($result)) {
                    // Access each field using array keys
                    $staff_dob = $row['staff_dob'];
                    $security_question = $row['security_question'];
                    $security_answer = $row['security_answer'];
                }

                if ($dob == $staff_dob) {
                    if ($securityQuestion == $security_question) {
                        if (password_verify($securityAnswer, $security_answer)) {
                            // $resetQuery = "UPDATE staff_details SET staff_password = ?, staff_dob = ?, security_question = ?, security_answer = ? WHERE staff_email = ?";
                            $stmt = mysqli_prepare($this->con, $this->resetQuery);
                            mysqli_stmt_bind_param($stmt, "ss", $hashedPassword, $uname);
                            mysqli_stmt_execute($stmt);
                
                            // Check if the update was successful
                            if (mysqli_affected_rows($this->con) > 0) {
                                // Password reset successful
                                echo "Password reset successful.";
                            } else {
                                // No rows affected, possibly due to unchanged values
                                echo "Password reset failed.";
                            }   
                        } else {
                            echo "Invalid Security Answer Entered.";
                        }
                    } else {
                        echo "Invalid Security Question Selected.";
                    }
                } else {
                    echo "Invalid Date of Birth Selected.";
                }
            } else {
                // Either no rows or more than one row returned for the given email
                echo "Invalid email.";
            }
    
            mysqli_stmt_close($stmt);
        } else {
            // Handle missing POST data
            echo "Missing required data.";
        }
    }

    function __destruct() {
        // Close connection
        $this->con->close();
    }
}

$task = isset($_POST["task"]) ? $_POST["task"] : '';

if (!empty($task)) {
    $obj = new ResetPassword();

    if ($task == "resetInitial") {
        $obj->resetQuery = "UPDATE staff_details SET staff_password = ?, staff_dob = ?, security_question = ?, security_answer = ? WHERE staff_email = ?";
        $obj->resetInitialPassword();
    } elseif ($task == "resetPassword") {
        $obj->resetQuery = "UPDATE staff_details SET staff_password = ? WHERE staff_email = ?";
        $obj->resetPassword();
    }
}
?>
