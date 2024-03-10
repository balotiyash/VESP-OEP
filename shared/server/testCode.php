<?php
    class TestCode {
        private $con;

        function __construct() {
            $this->con = new mysqli("localhost", "root", "", "vesp_oep");
        
            if ($this->con->connect_error) {
                die("Connection failed: " . $this->con->connect_error);
            }
        }

        function setTestCode() {
            if (isset($_POST["newTestCode"])) {
                $newTestCode = $_POST["newTestCode"];
                $query = "UPDATE exam_test_code SET test_code = ?";
                $stmt = mysqli_prepare($this->con, $query) or die("Query Error!!");
                mysqli_stmt_bind_param($stmt, "s", $newTestCode);
                $result = mysqli_stmt_execute($stmt);

                if ($result) {
                    echo "Test code changed successfully!";
                } else {
                    echo "Error: " . mysqli_error($this->con);
                }

                mysqli_stmt_close($stmt);
            }
        }

        function fetchTestCode() {
            $query = "SELECT * FROM exam_test_code";
            $result = $this->con->query($query);
    
            if ($result && $result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo $row['test_code'];
                }
            } else {
                echo "No test codes found.";
            }
        }

        function verifyTestCode() {
            $query = "SELECT * FROM exam_test_code";
            $result = $this->con->query($query);
    
            if ($result && $result->num_rows == 1) {
                $examTC = $result->fetch_assoc()["test_code"];
                $studentTC = $_POST["studentTC"];

                if ($examTC == $studentTC) {
                    echo "examPage";
                } else {
                    echo "invalidTC";
                }
            } else {
                echo "No test codes found.";
            }
        }

        function __destruct() {
            $this->con->close();
        }
    }
    
    if (isset($_POST["task"]))  {
        $obj = new TestCode();
        $task = $_POST["task"];

        if ($task == "change") {
            $obj->setTestCode();
        } elseif ($task == "fetch") {
            $obj->fetchTestCode();
        } else if ($task == "verifyTC") {
            $obj->verifyTestCode();
        }
    }
?>
