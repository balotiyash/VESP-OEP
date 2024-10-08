let attempted = 0;

function saveAnswer() {
    var radios = document.getElementsByName("answer");
    var formValid = false;

    // Loop through radio buttons to check if at least one is selected
    for (var i = 0; i < radios.length; i++) {
        if (radios[i].checked) {
            formValid = true;
            break;
        }
    }

    // If no radio button is selected, display an alert and prevent form submission
    if (!formValid) {
        alert("Please select an option");
        return false;
    }

    if (radioBtn1.checked){
        studentAnswer[currentButton] = 'a';
    }

    if (radioBtn2.checked){
        studentAnswer[currentButton] = 'b';
    }

    if (radioBtn3.checked){
        studentAnswer[currentButton] = 'c';
    }

    if (radioBtn4.checked){
        studentAnswer[currentButton] = 'd';
    }

    localStorage.setItem("studentAnswer", studentAnswer);

    let localAttempted = window.localStorage.getItem("attempted");

    if (localAttempted == 0 || localAttempted == null) {
        localStorage.setItem("attempted", 0);
    } else {
        localStorage.setItem("attempted", attempted);
    }

    attempted = 0;
    for(let k = 0; k < studentAnswer.length; k++){
        // console.log(studentAnswer[k]);
        if(studentAnswer[k] == 'a' || studentAnswer[k] == 'b' || studentAnswer[k] == 'c' || studentAnswer[k] == 'd') {
            attempted++;
        }
    }

    localStorage.setItem("attemptedTally", attempted);
    document.getElementById('attemptedval').innerHTML = attempted;
    document.getElementById("pendingval").innerHTML = (20 - attempted);

    document.getElementById("btn" + (currentButton + 1)).style.backgroundColor = "#A1DD70";
    document.getElementById("btn" + (currentButton + 1)).style.border = "2px solid #0D9276";
    makeButtonGreen();
    makeButtonBlue();

    return true;
    // console.log(studentAnswer);
}

let reviewLater = [];
let reviewCbk = document.getElementById("reviewCbk");

function reviewCheckBox() {
    if (reviewCbk.checked) {
        reviewLater[currentButton] = currentButton + 1;
        localStorage.setItem("reviewTally", reviewLater); // Join array elements into a string
        document.getElementById("btn" + (currentButton + 1)).style.backgroundColor = "#B4D4FF";
        document.getElementById("btn" + (currentButton + 1)).style.border = "2px solid #0C359E";

        countReviewQuestions();
    } else if (reviewCbk.checked == false) {
        delete reviewLater[currentButton];
        localStorage.setItem("reviewTally", reviewLater); // Update localStorage after removing item
        document.getElementById("btn" + (currentButton + 1)).style.backgroundColor = "#ffc107";
        deleteReviewCount();
        countReviewQuestions();
    }   
}

function countReviewQuestions() {
    let reviewCnt = 0;
    let reviewTally = localStorage.getItem("reviewTally");
    if (reviewTally != null && reviewTally != "") {
        reviewTally = reviewTally.split(",");
        for (let j in reviewTally) {
            if (reviewTally[j] != null && reviewTally[j] != "") {
                reviewCnt++;
            }
        }
        document.getElementById("reviewval").innerHTML = reviewCnt;
    } else {
        document.getElementById("reviewval").innerHTML = reviewCnt;
    }
}

function saveAndNext() {
    let flag = saveAnswer();

    if (flag) {
        if (currentButton + 1 != 20) {
            // for (let j = 1; j <= 20; j++) {
            //     if (!(document.getElementById("btn" + j).style.backgroundColor === "rgb(180, 212, 255)") || !(document.getElementById("btn" + j).style.backgroundColor === "rgb(161, 221, 112)")) {
            //         document.getElementById("btn" + j).style.backgroundColor = "#feefcd";
            //     }
            // }
            
            assignQna(currentButton + 1, questions, optionA, optionB, optionC, optionD);
            
            reviewCbk.checked = false;
    
            deleteReviewCount();
            countReviewQuestions();
        }
    }

}

function previous() {
    if (currentButton + 1 != 1) {
        
        for (let j = 1; j <= 20; j++) {
            if (!(document.getElementById("btn" + j).style.backgroundColor === "rgb(180, 212, 255)") || !(document.getElementById("btn" + j).style.backgroundColor === "rgb(161, 221, 112)")) {
                document.getElementById("btn" + j).style.backgroundColor = "#feefcd";
                makeButtonGreen();
                if (studentAnswer[j - 1] == "" || studentAnswer[j - 1] == null) {
                    document.getElementById("btn" + currentButton).style.border = "2px solid #ffc107";
                }
            }
        }
        
        assignQna(currentButton - 1, questions, optionA, optionB, optionC, optionD);
        
        reviewCbk.checked = false;
        
        deleteReviewCount();
        countReviewQuestions();
        makeButtonBlue();
    }
}