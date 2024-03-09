function openStudentList(year) {
    localStorage.setItem("studYear", year);
    window.location.href = "../../shared/view/studentList.php";
}

function displayYear() {
    const studentYear = localStorage.getItem("studYear");
    const studYearLabel = document.getElementById("yearLabel");

    if (studentYear == "fy") {
        studYearLabel.innerHTML = "First Year";
    } else if (studentYear == "sy") {
        studYearLabel.innerHTML = "Second Year";
    } else if (studentYear == "ty") {
        studYearLabel.innerHTML = "Third Year";
    }
}

function openHomePage() {
    window.location.href = localStorage.getItem("dash");
}

// function fetchStudentList(branch) {
//     document.getElementById("resultPage").style.display = "none";
//     document.getElementById("studentTable").style.display = "block";
//     const tableName = window.localStorage.getItem("studYear") + '_' + branch + '_students';
//     const formData = new FormData();
//     formData.append("tableName", tableName);

//     const xhr = new XMLHttpRequest();
//     xhr.onreadystatechange = function() {
//         if (this.readyState === 4) {
//             if (this.status === 200) {
//                 const response = this.responseText;
//                 // handleResponse(response);
//                 alert(response);
//             } else {
//                 alert("Error: " + this.statusText);
//             }
//         }
//     };
//     xhr.open("POST", "../view/studentList.php");
//     xhr.send(formData);
// }

function fetchStudentList(branch) {
    let year = window.localStorage.getItem("studYear");

    document.getElementById("studClassDesc").innerHTML = year.toUpperCase() + ' ' + branch.toUpperCase();
    
    document.getElementById("resultPage").style.display = "none";
    document.getElementById("tableSection").style.display = "block";
    
    const tableName = year + '_' + branch + '_students';
    // console.log(tableName)
    const formData = new FormData();
    formData.append("task", "table");
    formData.append("tableName", tableName);

    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState === 4) {
            if (this.status === 200) {
                const response = this.responseText;
                // Update the table with the received data
                document.getElementById("studentTable").innerHTML = response;
            } else {
                alert("Error: " + this.statusText);
            }
        }
    };
    xhr.open("POST", "../server/fetchStudentList.php");
    xhr.send(formData);
}

function fetchStudentEnroll() {

    document.getElementById("studClassDesc").innerHTML = "Students List";
    
    document.getElementById("resultPage").style.display = "none";
    document.getElementById("tableSection").style.display = "block";
    
    let enroll = document.getElementById("studentEnrollment").value.trim();
    // console.log(tableName)
    const formData = new FormData();
    formData.append("task", "enroll");
    formData.append("enroll", enroll);

    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState === 4) {
            if (this.status === 200) {
                const response = this.responseText;
                // Update the table with the received data
                document.getElementById("studentTable").innerHTML = response;
            } else {
                alert("Error: " + this.statusText);
            }
        }
    };
    xhr.open("POST", "../server/fetchStudentList.php");
    xhr.send(formData);
}
