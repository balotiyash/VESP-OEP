<?php

function fetchViaDept() {

    if (isset($_POST["tableName"])) {
        $tableName = $_POST["tableName"];
        require_once "../../shared/server/connection.php";
        $query = "SELECT * FROM $tableName";
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

function fetchViaEnroll() {

    if (isset($_POST["enroll"])) {
        $enroll = $_POST["enroll"];
        require_once "../../shared/server/connection.php";
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

$task = $_POST["task"];

if (isset($task)) {
    if ($task == "table") {
        fetchViaDept();
    } else if ($task == "enroll") {
        fetchViaEnroll();
    }
}
?>
