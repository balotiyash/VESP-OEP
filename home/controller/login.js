const studentEnrollmentNumber = document.getElementById("enrollNo");
const studentName = document.getElementById("studNameTxt");
const confirmStudentName = document.getElementById("confirmNameTxt");

const staffUsernameInput = document.getElementById("staffUnameTxt");
const staffPasswordInput = document.getElementById("staffPassword");

const adminUsernameInput = document.getElementById("adminUnameTxt");
const adminPasswordInput = document.getElementById("adminPassword");


function hideShowPassword(role) {
    if (role == "staff") {
        var passwordInput = document.getElementById('staffPassword');
        var icon = document.getElementById('togglePassword');
        
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            icon.classList.remove('fa-eye');
            icon.classList.add('fa-eye-slash');
        } else {
            passwordInput.type = 'password';
            icon.classList.remove('fa-eye-slash');
            icon.classList.add('fa-eye');
        }
    } else if (role == "admin") {
        var passwordInput = document.getElementById('adminPassword');
        var icon = document.getElementById('togglePasswordAdmin');
        
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            icon.classList.remove('fa-eye');
            icon.classList.add('fa-eye-slash');
        } else {
            passwordInput.type = 'password';
            icon.classList.remove('fa-eye-slash');
            icon.classList.add('fa-eye');
        }
    }
}

function fetchStudentName() {
    let enrollNo = studentEnrollmentNumber.value;
    if (enrollNo.trim() != '') {
        let formData = new FormData();
        formData.append("task", "fetchStudentName");
        formData.append("enrollmentNo", enrollNo);

        const xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {

                const response = this.responseText;
                studentName.value = response.toUpperCase();

                if (response != "No entry found." && response != "Duplicate entries found." && response != "Query failed." && response != "Enrollment number not provided") {
                    studentEnrollmentNumber.disabled = true;
                    confirmStudentName.disabled = false;
                    document.getElementById("fetchBtnLogin").style.display = "none";
                    document.getElementById("studBtnLogin").style.display = "block";

                }
            }
        };
        xhr.open("POST", "home/server/loginServer.php", true);
        xhr.send(formData);
        return false;
    }
}

function verifyStudent() {
    if (studentName.value == confirmStudentName.value) {
        window.location.href = "student/view/studDashboard.php";
    } else {
        alert("Student Name does not match.");
    }
}

function verifyStaff() {
    let staffUsername = null;
    let staffpassword = null;

    staffUsername = staffUsernameInput.value.toLowerCase();
    staffpassword = staffPasswordInput.value;

    if (staffUsername.trim() != '' && staffpassword.trim() != '') {
        const unameRegex = /^[a-zA-Z]+\.[a-zA-Z]+(@ves.ac.in)$/;

        if (unameRegex.test(staffUsername.trim())) {
            let formData = new FormData();
            formData.append("task", "verifyStaff");
            formData.append("uname", staffUsername.trim());
            formData.append("pass", staffpassword);
            
            document.getElementById("staffBtnLogin").textContent = "Please wait.";
    
            const xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {

                    const response = this.responseText;
    
                    if (response == "Verified Staff") {
                        window.location.href = "staff/view/staffDashboard.php";
                    } else if (response == "Reset Password") {
                        window.location.href = "shared/view/resetInitialPassword.php";
                    } else if (response == "Invalid") {
                        alert("Invalid Credentials Entered.");
                    } else if (response == "Not Found") {
                        alert("Staff detail not found!");
                    } else {
                        document.getElementById("staffBtnLogin").textContent = "Sign in";
                        // alert("User not found. Please contact to your admin.");
                        alert(this.responseText);
                    }
                }
            };
            xhr.open("POST", "home/server/loginServer.php", true);
            xhr.send(formData);
        } else {
            alert("Email ID is not a valid VES ID.");
        }
        return false;
    }
}

function verifyAdmin() {
    let adminUsername = null;
    let adminPassword = null;

    adminUsername = adminUsernameInput.value.toLowerCase();
    adminPassword = adminPasswordInput.value;

    if (adminUsername.trim() != '' && adminPassword.trim() != '') {
        const unameRegex = /^[a-zA-Z]+\.[a-zA-Z]+(@ves.ac.in)$/;

        if (unameRegex.test(adminUsername.trim())) {
            let formData = new FormData();
            formData.append("task", "verifyAdmin");
            formData.append("uname", adminUsername.trim());
            formData.append("pass", adminPassword);
            
            document.getElementById("adminBtnLogin").textContent = "Please wait.";
    
            const xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {

                    const response = this.responseText;
    
                    if (response == "Verified Admin") {
                        window.location.href = "admin/view/adminDashboard.php";
                    } else if (response == "Reset Password") {
                        window.location.href = "shared/view/resetInitialPassword.php";
                    } else if (response == "Invalid") {
                        alert("Invalid Credentials Entered.");
                    } else if (response == "Not Found") {
                        alert("Admin detail not found!");
                    } else {
                        document.getElementById("adminBtnLogin").textContent = "Sign in";
                        alert(this.responseText);
                    }
                }
            };
            xhr.open("POST", "home/server/loginServer.php", true);
            xhr.send(formData);
        } else {
            alert("Email ID is not a valid VES ID.");
        }
        return false;
    }
}

function resetLoginForm() {
    studentEnrollmentNumber.disabled = false;
    confirmStudentName.disabled = true;
    document.getElementById("fetchBtnLogin").style.display = "block";
    document.getElementById("studBtnLogin").style.display = "none";
    document.getElementById("studentLoginForm").reset();
}