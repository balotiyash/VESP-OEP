// To disable right click and f12
// Disable right-click
// document.addEventListener('contextmenu', function (e) {
//     e.preventDefault();
// });

// Disable F12 key
// document.addEventListener('keydown', function (e) {
//     if (e.key === 'F12') {
//         e.preventDefault();
//     }
// });

// Logout Button
function openHomePage() {
    let logout = confirm("Confirm Logout");

    if (logout) {
        window.history.pushState(null, '', window.location.href);
        document.location.href = "../../index.html";
    }
}

document.getElementById("logoutBtn").addEventListener("click", openHomePage);



// window.onload = function () {
//     document.getElementById("studentName") = studName;
// }

// window.onbeforeunload = function() { return "Your work will be lost."; };

// window.onload = function() {
//     window.history.forward();
//     document.onkeydown = function(e) {
//         if (event.keyCode == 116) {
//             window.history.forward();
//         }
//     }
// }

// document.getElementById("studentName").innerHTML = localStorage.getItem("studName");

// window.onload = function () {
//     localStorage.removeItem('examTimer'); // Clear the stored timer values
//     // Check if "studName" exists in localStorage
//     if (!localStorage.getItem("studName")) {
//         // Redirect to a different page
//         window.location.href = "../../index.html";
//     }
// }

// let flag1 = parseInt(localStorage.getItem("flag1")) || 0;

// window.onload = function() {
//     localStorage.setItem("flag1", flag1 + 1);

//     if (flag1 > 0) {
//         // Redirect to home page
//         document.location.href = "../../index.html";
//     }
// };

// document.addEventListener("DOMContentLoaded", function() {
//     // Check if fullscreen mode is supported
//     if (document.documentElement.requestFullscreen) {
//         // Add an event listener for a user gesture, such as a click event
//         document.addEventListener("click", function() {
//             // Request fullscreen mode on the document element
//             document.documentElement.requestFullscreen();
//         });
//     }
// });


window.onload = function() {
    // Check if fullscreen mode is supported
    if (document.documentElement.requestFullscreen) {
        // Request fullscreen mode on the document element
        document.documentElement.requestFullscreen();
    }
};


function logout() {
    let confirmLogout = confirm("Are you sure, you want to logout?");
    if (confirmLogout) {
        window.location.href = '../../index.php';
    }
}