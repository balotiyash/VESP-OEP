<?php

function fetchViaDept() {

    if (isset($_POST["tableName"])) {
        $tableName = $_POST["tableName"];
        require_once "connection.php";
        $query = "SELECT * FROM $tableName";
        $result = mysqli_query($con, $query);
    
        // if ($result) {
        //     if (mysqli_num_rows($result) > 0) {
        //         echo "<table>";
        //         echo "<thead>
        //                 <tr>
        //                     <th>ENROLLMENT NO.</th>
        //                     <th>ROLL NO.</th>
        //                     <th>STUDENT NAME</th>
        //                     <th>STATUS</th>
        //                     <th>IP ADDRESS</th>
        //                     <th>RESET EXAM</th>
        //                 </tr>
        //             </thead>";
        //         echo "<tbody>";
        //         while ($row = mysqli_fetch_assoc($result)) {
        //             echo "<tr>";
        //             echo "<td>" . htmlspecialchars($row["enrollment_no"]) . "</td>";
        //             echo "<td>" . strtoupper(htmlspecialchars($row["roll_no"])) . "</td>";
        //             echo "<td>" . strtoupper(htmlspecialchars($row["student_name"])) . "</td>";
        //             echo "<td></td>"; // You can add status here
        //             echo "<td></td>"; // Display client's IP address
        //             echo "<td><button class='button-17'>Reset Exam</button></td>";
        //             echo "</tr>";
        //         }
        //         echo "</tbody>";
        //         echo "</table>";
        //     } else {
        //         echo "<p>No records found in the table.</p>";
        //     }
        // } else {
        //     echo "<p>Error: " . mysqli_error($con) . "</p>";
        // }

        if ($result) {
            if (mysqli_num_rows($result) > 0) {
                echo "<table>";
                echo "<thead>
                        <tr>
                            <th>ENROLLMENT NO.</th>
                            <th>ROLL NO.</th>
                            <th>STUDENT NAME</th>
                            <th>RESET EXAM</th>
                        </tr>
                    </thead>";
                echo "<tbody>";

                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>" . htmlspecialchars($row["enrollment_no"]) . "</td>";
                    echo "<td>" . strtoupper(htmlspecialchars($row["roll_no"])) . "</td>";
                    echo "<td>" . strtoupper(htmlspecialchars($row["student_name"])) . "</td>";
                    echo "<td><button class='button-17 resetBtn' id='s_" . $row["enrollment_no"] . "' onclick=\"resetStudentExam('" . $row["enrollment_no"] ."')\">Reset Exam</button></td>";
                    echo "</tr>";
                }
                echo "</tbody>";
                echo "</table>";
            } else {
                echo "<p>No records found in the table.</p>";
            }
        } else {
            echo "<p>Error: " . mysqli_error($con) . "</p>";
        }
        mysqli_close($con);
    }
}

function fetchViaEnroll() {

    if (isset($_POST["enroll"])) {
        $enroll = $_POST["enroll"];
        require_once "connection.php";
        $query = "SELECT * FROM student_details WHERE enrollment_no = $enroll";
        $result = mysqli_query($con, $query);
    
        if ($result) {
            if (mysqli_num_rows($result) > 0) {
                echo "<table>";
                echo "<thead>
                        <tr>
                            <th>ENROLLMENT NO.</th>
                            <th>ROLL NO.</th>
                            <th>STUDENT NAME</th>
                            <th>STATUS</th>
                            <th>IP ADDRESS</th>
                            <th>RESET EXAM</th>
                        </tr>
                    </thead>";
                echo "<tbody>";
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>" . htmlspecialchars($row["enrollment_no"]) . "</td>";
                    echo "<td>" . strtoupper(htmlspecialchars($row["roll_no"])) . "</td>";
                    echo "<td>" . strtoupper(htmlspecialchars($row["student_name"])) . "</td>";
                    echo "<td></td>"; // You can add status here
                    echo "<td></td>"; // Display client's IP address
                    echo "<td><button class='button-17'>Reset Exam</button></td>";
                    echo "</tr>";
                }
                echo "</tbody>";
                echo "</table>";
            } else {
                echo "<p>No records found in the table.</p>";
            }
        } else {
            echo "<p>Error: " . mysqli_error($con) . "</p>";
        }
        mysqli_close($con);
    }
}

function resetStudentExam($classTest, $con) {
    if (isset($_POST["enroll"])) {
        $enrollmentNo = $_POST["enroll"];

        $query = "DELETE FROM student_exam_response WHERE enrollment_no = ? AND class_test = ?";
        $stmt = mysqli_prepare($con, $query);
        mysqli_stmt_bind_param($stmt, "ss", $enrollmentNo, $classTest);
        
        // Execute the statement
        if (mysqli_stmt_execute($stmt)) {
            // Get the number of affected rows
            $num_rows = mysqli_stmt_affected_rows($stmt);
            if ($num_rows > 0) {
                echo "Student exam reset successfully for class test $classTest.";
                return true; // Indicate success
            } else {
                echo "Nothing to reset!";
                return true;
            }
        } else {
            echo "Error executing query: " . mysqli_error($con);
        }
    }
    return false; // Indicate failure
}



function resetStudentExamIfNeeded() {
    require_once "connection.php";
    if (!resetStudentExam("ct2", $con)) {
        resetStudentExam("ct1", $con);
    }
}

$task = $_POST["task"];

if (isset($task)) {
    if ($task == "table") {
        fetchViaDept();
    } else if ($task == "enroll") {
        fetchViaEnroll();
    } else if ($task == "resetStud") {
        resetStudentExamIfNeeded();
    }
}
?>
