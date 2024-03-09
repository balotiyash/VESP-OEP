// To verify that the student do not attempt to open a new tab or window
// let pageChangeAttempt = 0;
// document.addEventListener("visibilitychange", function() {
//     // document.title = document.visibilityState;
//     // console.log(document.visibilityState);
//     if (document.visibilityState == "hidden") {
//         pageChangeAttempt++;
//         alert("1st and last warning");
//     }

//     if (pageChangeAttempt >= 2) {
//         alert("Exam Terminated");
//         document.location.href = "home.html";
//     }
// });

// To disable right click and f12
// Disable right-click
// document.addEventListener('contextmenu', function (e) {
//     e.preventDefault();
// });

// Disable F12 key
document.addEventListener('keydown', function (e) {
    if (e.key === 'F12') {
        e.preventDefault();
    }
});

document.getElementById("studentName").innerHTML = localStorage.getItem("studName");

// MCQ exam page
let flag2 = parseInt(localStorage.getItem("flag2")) || 0;

// window.onload = function () {
//     localStorage.setItem("flag2", flag2 + 1);

//     // if (flag2 > 0) {
//     //     // Redirect to home page
//     //     document.location.href = "../../index.html";
//     // }

//     if (!localStorage.getItem("studName")) {
//         document.location.href = "../../index.html";
//     }
// };