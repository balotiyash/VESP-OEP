const testCodeDiv = document.getElementById("changeTCDiv");
const passwordDiv =  document.getElementById("changePassDiv");
const excelFormatDiv = document.getElementById("formatDiv");
const scheduleTestDiv = document.getElementById("scheduleTestDiv");
const uploadStudentDiv = document.getElementById("uploadDiv");
const noActionDiv = document.getElementById("noActionDiv");

function resetActionDiv() {
    testCodeDiv.style.display = "none";
    passwordDiv.style.display = "none";
    excelFormatDiv.style.display = "none";
    scheduleTestDiv.style.display = "none";
    noActionDiv.style.display = "none";
    uploadStudentDiv.style.display = "none";
}

function logout() {
    let confirmLogout = confirm("Are you sure, you want to logout?");
    if (confirmLogout) {
        window.location.href = '../../index.php';
    }
}

function excelFormat() {
    resetActionDiv();
    excelFormatDiv.style.display = "flex";
}

function changePassword() {
    resetActionDiv();
    passwordDiv.style.display = "block";
}

function showHidePass(element) {
    let passwordInput = icon = null;

    if (element == "exist") {
        passwordInput = document.getElementById('currentPassTxt');
        icon = document.getElementById('existingPass');
        
    } else if (element == "new") {
        passwordInput = document.getElementById('newPassTxt');
        icon = document.getElementById('newPass');
        
    } else if (element == "cfm") {
        passwordInput = document.getElementById('confirmPassTxt');
        icon = document.getElementById('confirmPass');

    }

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

function openStudentList(year) {
    localStorage.setItem("studYear", year);
    window.location.href = "studentList.php";
}

localStorage.setItem("dash", "../../staff/view/staffDashboard.php");