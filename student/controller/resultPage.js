let studentEnrollTxt =  document.getElementById("enrollTxt");
let subjectSelect = document.getElementById("selectSubject");
let ctRadio1 = document.getElementById("ct1Radio");
let ctRadio2 = document.getElementById("ct2Radio");

function fetchResult() {
    let enrollment = studentEnrollTxt.value.trim();
    let subjectCode = subjectSelect.value;
    let classTest = null;

    if (ctRadio1.checked) {
        classTest = "ct1";
    } else if (ctRadio2.checked) {
        classTest = "ct2";
    }

    const formData = new FormData();
    formData.append("enrollment", enrollment);
    formData.append("subject", subjectCode);
    formData.append("classTest", classTest);

    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState === XMLHttpRequest.DONE) {
            if (this.status === 200) {
                const response = this.responseText;
            //     if (response == "yes") {
            //         document.getElementById("noResultSection").style.display = "none";
            //         document.getElementById("resultSection").style.display = "block";
            //     } else {
            //         alert("No results found.");
            //     }
            // } else {
            //     alert("An error occurred while processing your request.");
            }
        }
    };
    xhr.open("POST", "../view/resultA4.php", true);
    xhr.send(formData);

    // return false;
}
