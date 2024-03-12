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
                const ct_correctOption = responseQna.correctOption;

                // Call a function or do something with ct_questions here
                handleQuestions(ct_questions, ct_optionA, ct_optionB, ct_optionC, ct_optionD, ct_correctOption);
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

    let reviewTally = localStorage.getItem("reviewTally");
    if (reviewTally != null && reviewTally != "") {
        
        reviewTally = reviewTally.split(",");
        for (let i in reviewTally) {
            if (reviewTally[i] != "" && reviewTally[i] != null) {
                let buttonIndex = parseInt(i); // Convert index to a number
                // console.log(buttonIndex);
                document.getElementById("btn" + (buttonIndex + 1)).style.backgroundColor = "#B4D4FF";
            }
        }
    }

    countReviewQuestions();
}