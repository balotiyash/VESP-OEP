let selectedBranchCode = null;

function uploadStudentList(branch) {
    selectedBranchCode = branch;
    resetActionDiv();

    uploadStudentDiv.style.display = "block";

    const selectedBranch = document.getElementById("selectedBranch");
    const selectedBranchHidden = document.getElementsByName("selectedBranchHidden");

    switch (branch) {
        case "ao":
            selectedBranch.value = "Automation & Robotics";
            selectedBranchHidden.value = "Automation & Robotics";
            break;

        case "ce":
            selectedBranch.value = "Civil Engineering";
            selectedBranchHidden.value = "Civil Engineering";
            break;

        case "co":
            selectedBranch.value = "Computer Engineering";
            selectedBranchHidden.value = "Computer Engineering";
            break;

        case "ee":
            selectedBranch.value = "Electrical Engineering";
            selectedBranchHidden.value = "Electrical Engineering";
            break;

        case "ej":
            selectedBranch.value = "Electronic & Tele-Com. Engineering";
            selectedBranchHidden.value = "Electronic & Tele-Com. Engineering";
            break;

        case "me":
            selectedBranch.value = "Mechanical Engineering";
            selectedBranchHidden.value = "Mechanical Engineering";
            break;
    }
}

function uploadData() {
    const selectedYear = document.getElementById("selYear").value;

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
        for (var i = 65; i <= 67; i++) { // Columns A, B, C
            var cell = sheet[String.fromCharCode(i) + '1'];
            if (cell && cell.v) {
                headers.push(cell.v.trim());
            }
        }

        // Check if headers exist and match regardless of case
        var expectedHeaders = ["Enrollment No.", "Roll No.", "Student Name"];
        var isValid = expectedHeaders.every(header => headers.some(h => h.toLowerCase() === header.toLowerCase()));

        if (!isValid) {
            alert("Invalid file format. Please ensure the headers are 'Enrollment No.', 'Roll No.' 'Student Name'.");
            return false;
        }

        // If validation passed, upload the file
        var formData = new FormData();
        formData.append('branch', selectedBranchCode);
        formData.append('year', selectedYear);
        formData.append('formFile', file);

        // Make an AJAX request
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Handle the response from the PHP script
                alert(this.responseText); // Display an alert message with the response
                // document.getElementById("tcFormDiv").reset();
                // window.location.reload();

                document.getElementById("uploadForm").reset();
            }
        };
        xhr.open("POST", "../server/uploadStudentList.php", true);
        xhr.send(formData); // Send form data to the PHP script
    };
    fileReader.readAsBinaryString(file);

    return false;
}