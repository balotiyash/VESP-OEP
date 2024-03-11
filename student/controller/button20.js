// Retrieve selectedAnswer from localStorage
let selectedAnswer = localStorage.getItem("studentAnswer");
let studentAnswer = [];

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

let currentButton = 0;

let radioBtn1 = document.getElementById("optA");
let radioBtn2 = document.getElementById("optB");
let radioBtn3 = document.getElementById("optC");
let radioBtn4 = document.getElementById("optD");

let radioLbl1 = document.getElementById("rad1");
let radioLbl2 = document.getElementById("rad2");
let radioLbl3 = document.getElementById("rad3");
let radioLbl4 = document.getElementById("rad4");


let questions, optionA, optionB, optionC, optionD, correctOption;
function handleQuestions(ct_questions, ct_optionA, ct_optionB, ct_optionC, ct_optionD, ct_correctOption) {
    questions = ct_questions;
    optionA = ct_optionA;
    optionB = ct_optionB;
    optionC = ct_optionC;
    optionD = ct_optionD;
    correctOption = ct_correctOption;
    

    document.getElementById("btn1").style.backgroundColor = "#ffc107";
    
    deleteReviewCount();
    assignQna(0, questions, optionA, optionB, optionC, optionD);
    countReviewQuestions();

    for (let i = 0; i < 20; i++) {
        document.getElementById("btn" + (i + 1)).addEventListener("click", function() {

            for (let j = 1; j <= 20; j++) {
                if (!(document.getElementById("btn" + j).style.backgroundColor === "rgb(180, 212, 255)")) {
                    document.getElementById("btn" + j).style.backgroundColor = "#feefcd";
                }
            }
            
            assignQna(i, questions, optionA, optionB, optionC, optionD);
            
            reviewCbk.checked = false;

            deleteReviewCount();
            countReviewQuestions();
        });
    }
}

function assignQna(index, questions, optionA, optionB, optionC, optionD) {
    document.getElementById("questionTxt").innerHTML = questions[index];
    radioLbl1.textContent = "A. " + optionA[index];
    radioLbl2.textContent = "B. " + optionB[index];
    radioLbl3.textContent = "C. " + optionC[index];
    radioLbl4.textContent = "D. " + optionD[index];
    currentButton = index;

    document.getElementById("btn" + (index + 1)).style.backgroundColor = "#ffc107";

    switch (studentAnswer[index]) {
        case "a":
            radioBtn1.checked = true;
            break;

            case "b":
                radioBtn2.checked = true;
                break;

            case "c":
                radioBtn3.checked = true;
                break;

            case "d":
                radioBtn4.checked = true;
                break;

        default:
            document.getElementById("ans").reset();
    }
}

function deleteReviewCount() {
    let reviewTally = localStorage.getItem("reviewTally");
    if (reviewTally != null) {
        reviewTally = localStorage.getItem("reviewTally").split(',');
    }
    // console.log(reviewTally);
    for (let j in reviewTally) {
        if (reviewTally[j] == currentButton + 1) {
            delete reviewTally[j];
        }
    }

    localStorage.setItem("reviewTally", reviewTally);
}