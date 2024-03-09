const changeTestCodeDiv = document.getElementById("changeTCDiv");
const changePasswordDiv = document.getElementById("changePassDiv");
const excelFormatDiv = document.getElementById("formatDiv");
const mapCODiv = document.getElementById("mapParentDiv");
const registerStaffDiv = document.getElementById("regStaffParentDiv");
const scheduleTestDiv = document.getElementById("scheduleTestDiv");
const noActionDiv = document.getElementById("noActionDiv");
const uploadQB = document.getElementById("uploadDiv");

function resetActionDiv() {
    changeTestCodeDiv.style.display = "none";
    changePasswordDiv.style.display = "none";
    excelFormatDiv.style.display = "none";
    mapCODiv.style.display = "none";
    registerStaffDiv.style.display = "none";
    scheduleTestDiv.style.display = "none";
    noActionDiv.style.display = "none";
    uploadQB.style.display = "none";
}

function openScheduleTest() {
    resetActionDiv();
    scheduleTestDiv.style.display = "block";

    // Get today's date in YYYY-MM-DD format
    const today = new Date().toISOString().split('T')[0];
            
    // Set the minimum date for the date input field
    document.getElementById("selDate").setAttribute("min", today);
}

function openMapCO() {
    resetActionDiv();
    mapCODiv.style.display = "block";
}

function openTestCode() {
    resetActionDiv();
    changeTestCodeDiv.style.display = "block";
}

function openRegisterStaff() {
    resetActionDiv();
    registerStaffDiv.style.display = "block";
}

function openExcelFormat() {
    resetActionDiv();
    excelFormatDiv.style.display = "flex";
}

function openChangePassword() {
    resetActionDiv();
    changePasswordDiv.style.display = "block";
}

function logout() {
    let confirmLogout = confirm("Are you sure, you want to logout?");
    if (confirmLogout) {
        window.location.href = '../../index.php';
    }
}

localStorage.setItem("dash", "../../admin/view/adminDashboard.php");

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

