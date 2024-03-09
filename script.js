// NAVBAR
// result button
document.getElementById("resultBtn").addEventListener("click", function() {
    window.location.href = "student/view/resultPage.html";
});
document.getElementById("mockTestBtn").addEventListener("click", function() {
    alert("Feature Launching Soon!! Stay tuned..");
});

// Get the login button and the popup
const loginBtn = document.getElementById('loginBtn');
const newDetailsPopup = document.getElementById('newDetailsPopup');
const overlay = document.getElementById('overlay');

// Function to open the new details popup
loginBtn.addEventListener('click', function () {
    newDetailsPopup.style.display = 'block';
    overlay.style.display = 'block';
});

// Function to close the new details popup
const closeNewDetailsBtn = document.getElementById('close');
closeNewDetailsBtn.addEventListener('click', function () {
    newDetailsPopup.style.display = 'none';
    overlay.style.display = 'none';
});

let studLogin = document.getElementById("studLoginDiv");
let staffLogin = document.getElementById("staffLoginDiv");
let adminLogin = document.getElementById("adminLoginDiv");

document.getElementById("studPopup").addEventListener("click", function () {
    studLogin.hidden = false;
    staffLogin.hidden = true;
    adminLogin.hidden = true;

    newDetailsPopup.style.display = 'none';
    overlay.style.display = 'none';

    document.getElementById("staffLoginForm").reset();
    document.getElementById("staffLoginForm").reset();
});

document.getElementById("staffPopup").addEventListener("click", function () {
    studLogin.hidden = true;
    staffLogin.hidden = false;
    adminLogin.hidden = true;

    newDetailsPopup.style.display = 'none';
    overlay.style.display = 'none';

    document.getElementById("studentLoginForm").reset();
    document.getElementById("adminLoginForm").reset();
});

document.getElementById("adminPopup").addEventListener("click", function () {
    studLogin.hidden = true;
    staffLogin.hidden = true;
    adminLogin.hidden = false;

    newDetailsPopup.style.display = 'none';
    overlay.style.display = 'none';

    document.getElementById("studentLoginForm").reset();
    document.getElementById("staffLoginForm").reset();
});

localStorage.clear()