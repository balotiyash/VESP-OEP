// const noActionDiv = document.getElementById("noActionDiv");
// const downloadResultsDiv = document.getElementById("downloadResultDiv");

subjectCode = null;

function openResultDownload(subject) {
    subjectCode = subject;
    // noActionDiv.style.display = "none";
    resetActionDiv();
    downloadResultsDiv.style.display = "block";

    const selectedSubjectResult = document.getElementById("selectedSubjectResult");
    const selectedSubjectHiddenResult = document.getElementById("selectedSubjectHiddenResult");

    console.log(subject)

    switch (subject) {
        case "mgt":
            selectedSubjectResult.value = "Management";
            selectedSubjectHiddenResult.value = "Management";
            break;

        case "est":
            selectedSubjectResult.value = "Environmental Studies";
            selectedSubjectHiddenResult.value = "Environmental Studies";
            break;

        case "bsc":
            selectedSubjectResult.value = "Basic Science";
            selectedSubjectHiddenResult.value = "Basic Science";
            break;

        case "asc":
            selectedSubjectResult.value = "Applied Science";
            selectedSubjectHiddenResult.value = "Applied Science";
            break;

        case "bee":
            selectedSubjectResult.value = "Basic Electrical & Electronic Eng.";
            selectedSubjectHiddenResult.value = "Basic Electrical & Electronic Eng.";
            break;

        case "mem":
            selectedSubjectResult.value = "Mechanical Engineering Materials";
            selectedSubjectHiddenResult.value = "Mechanical Engineering Materials";
            break;

        case "ajp":
            selectedSubjectResult.value = "Advanced Java Programming";
            selectedSubjectHiddenResult.value = "Advanced Java Programming";
            break;

        case "ete":
            selectedSubjectResult.value = "Emerging Trends in Electronics";
            selectedSubjectHiddenResult.value = "Emerging Trends in Electronics";
            break;

        case "etee":
            selectedSubjectResult.value = "Emerging Trends in Electrical Engineering";
            selectedSubjectHiddenResult.value = "Emerging Trends in Electrical Engineering";
            break;

        case "etc":
            selectedSubjectResult.value = "Emerging Trends in Civil Engineering";
            selectedSubjectHiddenResult.value = "Emerging Trends in Civil Engineering";
            break;

        case "eti":
            selectedSubjectResult.value = "Emerging Trends in Computer & IT";
            selectedSubjectHiddenResult.value = "Emerging Trends in Computer & IT";
            break;

        case "etm":
            selectedSubjectResult.value = "Emerging Trends in Mechanical Engineering";
            selectedSubjectHiddenResult.value = "Emerging Trends in Mechanical Engineering";
            break;
    }
}

function downloadResults() {
    let ctNo = document.getElementById("selCTResult").value.toLowerCase();
    let examMonth = document.getElementById("selMonthInput").value;

    const formData = new FormData();
    formData.append("subjectCode", subjectCode);
    formData.append("ctNo", ctNo);
    formData.append("examMonth", examMonth);

    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4) {
            if (this.status == 200) {
                // If the request is successful, initiate the download
                var blob = new Blob([this.response], { type: 'application/pdf' });
                var link = document.createElement('a');
                link.href = window.URL.createObjectURL(blob);
                link.download = 'downloaded_results.pdf';
                link.click();
            } else {
                // If there is an error, display an alert with the error message
                alert('Error: ' + this.statusText);
            }
        }
    };
    // Set responseType to 'blob' to receive binary data
    xhr.responseType = 'blob';
    xhr.open("POST", "../server/downloadResults.php", true);
    xhr.send(formData);

    return false;
}
