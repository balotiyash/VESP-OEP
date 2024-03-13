function navigateToExam() {
    let subject = document.getElementById("subCode").textContent;
    window.localStorage.setItem("selectedSubject", subject);
    // console.log(subject)
    // let subjectCode = subject.substring(0, 3);

    const formData = new FormData();
    formData.append("task", "testSchedule");
    formData.append("subject", subject.toLowerCase());

    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            if (this.responseText == "startExam") {
                const examTestCode = prompt("Enter Test Code to Start Exam.");
                verifyTestCode(examTestCode);
            } else {
                alert(this.responseText);
            }
        }
    };
    xhr.open("POST", "../server/validateExam.php", true);
    xhr.send(formData);
}

function verifyTestCode(testCode) {
    const formData = new FormData();
    formData.append("task", "verifyTC");
    formData.append("studentTC", testCode);

    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            if (this.responseText == "examPage") {
                // window.location.href = "../view/exam.php";
                window.open("../view/exam.php", "_blank");
            } else if (this.responseText == "invalidTC") {
                alert("Invalid Test Code Entered!");
            } else {
                alert(this.responseText);
            }
        }
    };
    xhr.open("POST", "../../shared/server/testCode.php", true);
    xhr.send(formData);
}