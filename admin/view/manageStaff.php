<?php
    session_start();

    // Check if user is logged in
    if (!isset($_SESSION["adminSession"])) {
        // Redirect to login page
        header("location: ../../index.php");
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VESP-OEP Manage Staff</title>

    <link rel="shortcut icon" type="image/x-icon" href="../../asset/images/VES-logo.png" />

    <!-- For Dropdown Menu -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="../style/adminDashNav.css">
    <link rel="stylesheet" href="../../shared/style/studentListStyle.css">
    <link rel="stylesheet" href="../style/staffDetails.css">
    <link rel="stylesheet" href="../style/btnStyle.css">
    <link rel="stylesheet" href="../../shared/style/devFooter.css">

</head>
<body>
    <header>
        <nav class="navBarDiv">
            <img src="../../asset/images/VESP Logo.png" alt="VES Polytechnic" id="vespLogo">
            <p id="manageStaffInfo">Manage Staff</p>
            <div id="manageStaffNavBtns">
                <button type="button" class="btn btn-light" onclick="window.location.href = 'adminDashboard.php'">Home</button>

                <div class="dropdown">
                    <button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        View Students List
                    </button>
                    <div class="dropdown-menu" aria-labelledby="">
                        <a class="dropdown-item" href="javascript: openStudentList('fy')">First Year</a>
                        <a class="dropdown-item" href="javascript: openStudentList('sy')">Second Year</a>
                        <a class="dropdown-item" href="javascript: openStudentList('ty')">Third Year</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <section id="staffTableSection">
            <!-- HTML code for table -->
            <!-- HTML code for table -->
            <table id="staffTable">
                <thead>
                    <tr>
                        <th>SR. NO.</th>
                        <th>STAFF NAME</th>
                        <th>STAFF DEPARTMENT</th>
                        <th>STAFF EMAIL ID</th>
                        <th>STAFF DOB</th>
                        <th>EDIT / SAVE</th>
                        <th>RESET DETAILS</th>
                        <th>REMOVE STAFF</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        // PHP code to fetch staff details and populate table rows
                        require_once "../../shared/server/connection.php";
                        $query = "SELECT * FROM staff_details";
                        $result = mysqli_query($con, $query);
                    
                        if ($result) {
                            if (mysqli_num_rows($result) > 0) {
                                $count = 0;
                                while ($row = mysqli_fetch_assoc($result)) {
                                    $count++;
                    ?>
                    <tr>
                        <td><?php echo $count ?></td>
                        <td>
                            <p><?php echo strtoupper($row["staff_name"]) ?></p>
                            <input type="text" class="staffRecords" id="staffNameRecord_<?php echo strtoupper($row["staff_email"]) ?>" disabled hidden value="<?php echo strtoupper($row["staff_name"]) ?>">
                        </td>
                        <td>
                            <p><?php echo strtoupper($row["staff_dept"]) ?></p>
                            <input type="text" class="staffRecords" id="staffDeptRecord_<?php echo strtoupper($row["staff_email"]) ?>" hidden value="<?php echo strtoupper($row["staff_dept"]) ?>">
                        </td>
                        <td>
                            <p><?php echo strtoupper($row["staff_email"]) ?></p>
                            <!-- You can add an input field for email if needed -->
                        </td>
                        <td>
                            <p><?php echo strtoupper($row["staff_dob"]) ?></p>
                            <input type="text" class="staffRecords" id="staffDobRecord_<?php echo strtoupper($row["staff_email"]) ?>" hidden value="<?php echo strtoupper($row["staff_dob"]) ?>">
                        </td>
                        <td id="editCell_<?php echo strtoupper($row["staff_email"]) ?>">
                            <button class="button-17 editBtn" data-row="<?php echo strtoupper($row["staff_email"]) ?>"><i class="fa-regular fa-pen-to-square"></i></button>
                            <button class="button-17 saveBtn" data-row="<?php echo strtoupper($row["staff_email"]) ?>" style="display: none;"><i class="fa-solid fa-check"></i></button>
                        </td>
                        <td><button class="button-17 resetBtn" style="background-color: #ffc107; color:black;" data-row="<?php echo strtoupper($row["staff_email"]) ?>">Reset</button></td>
                        <td><button class="button-17 removeBtn" style="background-color: #EF4040; color:whitesmoke;" data-row="<?php echo strtoupper($row["staff_email"]) ?>">Remove</button></td>
                    </tr>
                    <?php 
                                }
                            } else {
                                echo "<tr><td colspan='8'>No records found in the table.</td></tr>";
                            }
                        } else {
                            echo "<tr><td colspan='8'>Error: " . mysqli_error($con) . "</td></tr>";
                        }
                        mysqli_close($con);
                    ?>
                </tbody>
            </table>
        </section>
    </main>

    <footer>
        <div>
            <p id="devInfo" style="margin: 0;">Developed by <a href="#" class="transition">Yash Balotiya</a> & <a href="#" class="transition">Shreya Shukla</a>.</p>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.4/xlsx.full.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="../../shared/controller/displayStudentList.js"></script>
    <script src="../controller/staffDetails.js"></script>
</body>
</html>