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

// function showQna(qno) {

// }


let questions, optionA, optionB, optionC, optionD, correctOption;
    let subject = window.localStorage.getItem("selectedSubject");

    window.onload = function() {
        var xhr = new XMLHttpRequest();
        const formData = new FormData();
        formData.append("subject", subject);
        formData.append("task", "fetchExam");

        xhr.onreadystatechange = function() {
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                // Parse JSON response
                const response = JSON.parse(this.responseText);
                if (response.status === "success") {
                    questions = response.questions;
                    optionA = response.optionA;
                    optionB = response.optionB;
                    optionC = response.optionC;
                    optionD = response.optionD;
                    correctOption = response.correctOption;
                    console.log(questions);
                } else {
                    alert(response.message);
                }
                // console.log(this.responseText);
            }
        };
        xhr.open("POST", "../server/validateExam.php", true);
        xhr.send(formData);
    }