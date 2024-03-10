<?php
class ValidateLogin {
    private $con;

    function __construct() {
        require_once "../../shared/server/connection.php";
        $this->con = $con;
    }

    function fetchStudentName() {
        if (isset($_POST['enrollmentNo'])) {
            $enrollmentNo = $this->con->real_escape_string($_POST['enrollmentNo']);

            $query = "SELECT COUNT(*) AS count, student_name, roll_no FROM student_details WHERE enrollment_no = ?";
            $stmt = $this->con->prepare($query);
            $stmt->bind_param("s", $enrollmentNo);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $count = $row['count'];
                $studentName = $row['student_name'];
                $studentRoll = $row["roll_no"];

                if ($count == 1) {
                    session_start();
                    $_SESSION["studentSession"] = strtolower($studentName);
                    $_SESSION["studentRoll"] = strtolower($studentRoll);
                    $_SESSION["studentEnroll"] = $enrollmentNo;

                    echo $_SESSION["studentSession"];
                } elseif ($count > 1) {
                    echo "Duplicate entries found.";
                } else {
                    echo "No entry found.";
                }
            } else {
                echo "No entry found.";
            }

            mysqli_stmt_close($stmt);
        } else {
            echo "Enrollment number not provided";
        }
    }

    function validateStaff() {
        if (isset($_POST["uname"]) && isset($_POST["pass"])) {
            $username = $_POST["uname"];
            $password = $_POST["pass"];
    
            $query = "SELECT staff_name, staff_password, staff_dept FROM staff_details WHERE staff_email = ?";
            $stmt = mysqli_prepare($this->con, $query);
            mysqli_stmt_bind_param($stmt, "s", $username);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_bind_result($stmt, $staffName, $storedPassword, $staffDept);
            mysqli_stmt_fetch($stmt);
            mysqli_stmt_close($stmt);

            if ($storedPassword != "Reset@me") {

                if ($staffDept != "admin") {
                    
                    if (password_verify($password, $storedPassword)) {
                        session_start();
                        $_SESSION["staffSession"] = $staffName;
                        $_SESSION["staffEmail"] = $username;
                        echo  "Verified Staff";
                    } else {
                        echo "Invalid";
                    }
                } else {
                    echo "Not Found";
                }
            } else {
                session_start();
                $_SESSION["initialReset"] = $username;
                echo "Reset Password";
            }
        } else {
            echo "Invalid request";
        }
    }

    function validateAdmin() {
        if (isset($_POST["uname"]) && isset($_POST["pass"])) {
            $username = $_POST["uname"];
            $password = $_POST["pass"];
    
            $query = "SELECT staff_name, staff_password, staff_dept FROM staff_details WHERE staff_email = ?";
            $stmt = mysqli_prepare($this->con, $query);
            mysqli_stmt_bind_param($stmt, "s", $username);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_bind_result($stmt, $staffName, $storedPassword, $staffDept);
            mysqli_stmt_fetch($stmt);
            mysqli_stmt_close($stmt);

            if ($storedPassword != "Reset@me") {

                if ($staffDept == "admin") {
                    
                    if (password_verify($password, $storedPassword)) {
                        session_start();
                        $_SESSION["adminSession"] = $staffName;
                        $_SESSION["adminEmail"] = $username;
                        echo  "Verified Admin";
                    } else {
                        echo "Invalid";
                    }
                } else {
                    echo "Admin detail not found!";
                }
            } else {
                session_start();
                $_SESSION["initialReset"] = $username;
                echo "Reset Password";
            }
        } else {
            echo "Invalid request";
        }
    }
    
    function __destruct() {
        // Close connection
        $this->con->close();
    }
}

$task = isset($_POST["task"]) ? $_POST["task"] : '';

if (!empty($task)) {
    $obj = new ValidateLogin();

    if ($task == "fetchStudentName") {
        $obj->fetchStudentName();
    } elseif ($task == "verifyStaff") {
        $obj->validateStaff();
    } elseif ($task == "verifyAdmin") {
        $obj->validateAdmin();
    } 
}
?>
