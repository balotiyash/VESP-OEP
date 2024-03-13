let currentButton = 0;

let radioBtn1 = document.getElementById("optA");
let radioBtn2 = document.getElementById("optB");
let radioBtn3 = document.getElementById("optC");
let radioBtn4 = document.getElementById("optD");

let radioLbl1 = document.getElementById("rad1");
let radioLbl2 = document.getElementById("rad2");
let radioLbl3 = document.getElementById("rad3");
let radioLbl4 = document.getElementById("rad4");


let questions, optionA, optionB, optionC, optionD;
function handleQuestions(ct_questions, ct_optionA, ct_optionB, ct_optionC, ct_optionD) {
    questions = ct_questions;
    optionA = ct_optionA;
    optionB = ct_optionB;
    optionC = ct_optionC;
    optionD = ct_optionD;

    document.getElementById("btn1").style.backgroundColor = "#ffc107";
    
    // deleteReviewCount();
    assignQna(0, questions, optionA, optionB, optionC, optionD);
    // countReviewQuestions();

    for (let i = 0; i < 20; i++) {
        document.getElementById("btn" + (i + 1)).addEventListener("click", function() {
            reviews = localStorage.getItem("reviewTally");
            for (let j = 1; j <= 20; j++) {
                // if (document.getElementById("btn" + j).style.backgroundColor !== "rgb(180, 212, 255)") {
                if (document.getElementById("btn" + j).style.backgroundColor !== "rgb(161, 221, 112)") {
                    document.getElementById("btn" + j).style.backgroundColor = "#feefcd";
                    document.getElementById("btn" + j).style.border = "2px solid #ffc107";
                    makeButtonGreen();
                }
            }
            
            assignQna(i, questions, optionA, optionB, optionC, optionD);
            
            reviewCbk.checked = false;

            deleteReviewCount();
            countReviewQuestions();
            makeButtonBlue();
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
    if (reviewTally != null && reviewTally != "") {
        reviewTally = reviewTally.split(",");
        
        for (let j in reviewTally) {
            if (reviewTally[j] != null && reviewTally[j] != "null" && reviewTally[j] != "") {
                // console.log("yash")
                if (reviewTally[j] == currentButton + 1) {
                    delete reviewTally[j];
                }
            }
        }
        
        delete reviewLater[currentButton];
        localStorage.setItem("reviewTally", reviewTally);
    }
}

function makeButtonGreen() {
    let studentAns = localStorage.getItem("studentAnswer");
    let reviews = localStorage.getItem("reviewTally");
    
    if (reviews != null && reviews != "") {
        reviews = reviews.split(",");//.map(item => parseInt(item)); // Parse to integers
    }

    if (studentAns != null && studentAns != "") { // Check if studentAns is not empty
        studentAns = studentAns.split(",");
        for (let i in studentAns) {
            if (studentAns[parseInt(i)] != "" && studentAns[parseInt(i)] != null) { // Checking for empty or null values
                // if (reviews && reviews[parseInt(i)] != parseInt(i) + 1) { // Check if reviews exists and index is not the current button
                    document.getElementById("btn" + (parseInt(i) + 1)).style.backgroundColor = "#A1DD70";
                    document.getElementById("btn" + (parseInt(i) + 1)).style.border = "2px solid #0D9276";
                // }
            }
        }
    }
}


function makeButtonBlue() {
    // console.log(typeof(reviews))
    let reviews = localStorage.getItem("reviewTally");
    if (reviews != null && reviews != "") {
        reviews = reviews.split(",");
        for (let i in reviews) {
            if (reviews[parseInt(i)] != "" && reviews[parseInt(i)] != null) {
                document.getElementById("btn" + (parseInt(i) + 1)).style.backgroundColor = "#B4D4FF"; // Corrected color to blue
                document.getElementById("btn" + (parseInt(i) + 1)).style.border = "2px solid #0C359E"; // Corrected color to blue
            }
        }
    }
}
