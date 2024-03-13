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
                const responseQna = response.ctQna;
                const ct_questions = responseQna.questions;
                const ct_optionA = responseQna.optionA;
                const ct_optionB = responseQna.optionB;
                const ct_optionC = responseQna.optionC;
                const ct_optionD = responseQna.optionD;

                // Call a function or do something with ct_questions here
                handleQuestions(ct_questions, ct_optionA, ct_optionB, ct_optionC, ct_optionD);
            } else {
                alert(response.message);
            }
        }
    };
    xhr.open("POST", "../server/validateExam.php", true);
    xhr.send(formData);

    startTimer();

    let attemptedTally = localStorage.getItem("attemptedTally");
    if (attemptedTally != null) {
        document.getElementById("attemptedval").innerHTML = attemptedTally;
        document.getElementById("pendingval").innerHTML = (20 - attemptedTally);
    }

    // makeButtonGreen();
    
    // reviews = localStorage.getItem("reviewTally");

    // makeButtonGreen();
    let reviewTally = localStorage.getItem("reviewTally");
    if (reviewTally != null && reviewTally != "") {
        reviewTally = reviewTally.split(",");
        for (let i in reviewTally) {
            if (reviewTally[parseInt(i)] != "" && reviewTally[parseInt(i)] != null) {
                let buttonIndex = parseInt(i); // Convert index to a number
                // console.log(buttonIndex);
                document.getElementById("btn" + (buttonIndex + 1)).style.backgroundColor = "#B4D4FF";
            }
        }
    }
    
    makeButtonGreen();
    makeButtonBlue();
    deleteReviewCount();
    countReviewQuestions();
}

// Retrieve selectedAnswer from localStorage
let selectedAnswer = localStorage.getItem("studentAnswer");
let studentAnswer = [];
let reviews = localStorage.getItem("reviewTally");

// Check if selectedAnswer exists and is not an empty array
if (selectedAnswer !== "") {
    // Split the string into an array
    // console.log(selectedAnswer);
    studentAnswer = selectedAnswer.split(",");
    // console.log(studentAnswer);
} else {
    // If selectedAnswer doesn't exist or is an empty array, initialize studentAnswer as an empty array
    studentAnswer = [];
    // console.log(studentAnswer);
}

function endExam() {
    let confirmEnd = confirm("Are you sure to END exam?");

    if (confirmEnd) {
        console.log(studentAnswer)
        for (let i = 0; i < 20; i++) {
            if (studentAnswer[i] == null || studentAnswer[i] == "" || studentAnswer[i] == "null") {
                studentAnswer[i] = 'X';
            }
        }

        let sub = localStorage.getItem("selectedSubject");

        const formData = new FormData();
        formData.append("task", "studResponse");
        formData.append("subject", sub);
        formData.append("studentAnswer", JSON.stringify(studentAnswer));

        const xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                // alert(this.responseText)
                if (this.responseText == "saved") {
                    // window.location.href = "../view/studDashboard.php";
                    window.close();
                }
            }
        };
        xhr.open("POST", "../server/studentResponse.php", true);
        xhr.send(formData);
    }
}