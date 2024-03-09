let selectedSubjectCode = null;

function uploadQuestionsList(subject) {
    selectedSubjectCode = subject;
    resetActionDiv();

    uploadQB.style.display = "block";

    const selectedSubject = document.getElementById("selectedSubject");
    const selectedSubjectHidden = document.getElementsByName("selectedSubjectHidden");

    switch (subject) {
        case "mgt":
            selectedSubject.value = "Management";
            selectedSubjectHidden.value = "Management";
            break;

        case "est":
            selectedSubject.value = "Environmental Studies";
            selectedSubjectHidden.value = "Environmental Studies";
            break;

        case "bsc":
            selectedSubject.value = "Basic Science";
            selectedSubjectHidden.value = "Basic Science";
            break;

        case "asc":
            selectedSubject.value = "Applied Science";
            selectedSubjectHidden.value = "Applied Science";
            break;

        case "bee":
            selectedSubject.value = "Basic Electrical & Electronic Eng.";
            selectedSubjectHidden.value = "Basic Electrical & Electronic Eng.";
            break;

        case "mem":
            selectedSubject.value = "Mechanical Engineering Materials";
            selectedSubjectHidden.value = "Mechanical Engineering Materials";
            break;

        case "ajp":
            selectedSubject.value = "Advanced Java Programming";
            selectedSubjectHidden.value = "Advanced Java Programming";
            break;

        case "ete":
            selectedSubject.value = "Emerging Trends in Electronics";
            selectedSubjectHidden.value = "Emerging Trends in Electronics";
            break;

        case "etee":
            selectedSubject.value = "Emerging Trends in Electrical Engineering";
            selectedSubjectHidden.value = "Emerging Trends in Electrical Engineering";
            break;

        case "etc":
            selectedSubject.value = "Emerging Trends in Civil Engineering";
            selectedSubjectHidden.value = "Emerging Trends in Civil Engineering";
            break;

        case "eti":
            selectedSubject.value = "Emerging Trends in Computer & IT";
            selectedSubjectHidden.value = "Emerging Trends in Computer & IT";
            break;

        case "etm":
            selectedSubject.value = "Emerging Trends in Mechanical Engineering";
            selectedSubjectHidden.value = "Emerging Trends in Mechanical Engineering";
            break;
    }
}

function uploadData() {
    var fileInput = document.getElementById('formFile');
    var file = fileInput.files[0];

    if (!file) {
        alert("Please select a file.");
        return false;
    }

    var fileReader = new FileReader();
    fileReader.onload = function(e) {
        var workbook = XLSX.read(e.target.result, { type: 'binary' });
        var sheetName = workbook.SheetNames[0];
        var sheet = workbook.Sheets[sheetName];

        // Extract headers from the first row
        var headers = [];
        for (var i = 65; i <= 72; i++) { // Columns A, B, C
            var cell = sheet[String.fromCharCode(i) + '1'];
            if (cell && cell.v) {
                headers.push(cell.v.trim());
            }
        }

        // Check if headers exist and match regardless of case
        var expectedHeaders = ["Sr. No.", "CO-MAP", "Question", "Option A", "Option B", "Option C", "Option D", "Correct Answer"];
        var isValid = expectedHeaders.every(header => headers.some(h => h.toLowerCase() === header.toLowerCase()));

        if (!isValid) {
            alert("Invalid file format. Please ensure the headers are 'Sr. No.', 'CO-MAP', 'Question', 'Option A', 'Option B', 'Option C', 'Option D', 'Correct Answer'");
            return false;
        }

        // If validation passed, upload the file
        if (selectedSubjectCode == '') {
            return false;
        }
        
        var formData = new FormData();


        formData.append('subject', selectedSubjectCode);
        formData.append('formFile', file);

        document.getElementById("fileBtn").textContent = "Please Wait";
        document.getElementById("fileBtn").disabled = true;

        // Make an AJAX request
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Handle the response from the PHP script
                alert(this.responseText); // Display an alert message with the response
                // document.getElementById("tcFormDiv").reset();
                // window.location.reload();

                document.getElementById("fileBtn").textContent = "Upload CT Questions";
                document.getElementById("fileBtn").disabled = false;
                // document.getElementById("uploadForm").reset();
                window.location.reload();
            }
        };
        xhr.open("POST", "../server/uploadQBServer.php", true);
        xhr.send(formData); // Send form data to the PHP script
    };
    fileReader.readAsBinaryString(file);

    return false;
}