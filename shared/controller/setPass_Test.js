function displayTestCode() {
    resetActionDiv();

    testCodeDiv.style.display = "block";
}

function changeTestCode() {
    const testCode = document.getElementById("testCode").innerHTML;
    const currentTestCode = document.getElementById("currentTestCode").value.trim();
    const newTestCode = document.getElementById("newTestCode1").value.trim();
    const confirmTestCode = document.getElementById("newTestCode2").value.trim();

    if (testCode !== currentTestCode) {
        alert("Incorrect Current Test Code.");
        return false;
    } else if (newTestCode !== confirmTestCode) {
        alert("New Test Codes do not match.");
        return false;
    } else if (newTestCode == '' || confirmTestCode == '') {
        alert("New Test Code cannot be white spaces.");
        return false;
    } else {
        var formData = new FormData();
        formData.append("task", "change");
        formData.append("newTestCode", confirmTestCode);

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                alert(this.responseText);
                document.getElementById("tcFormDiv").reset();
                // Update the test code in the HTML without reloading
                document.getElementById("testCode").innerHTML = confirmTestCode;
            }
        };
        xhr.open("POST", "../../shared/server/testCode.php", true);
        xhr.send(formData);

        return false;
    }
}

setInterval(function() {
    randomNumber = Math.floor(Math.random() * 1000000);

    var formData = new FormData();
    formData.append("task", "change");
    formData.append("newTestCode", randomNumber);

    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            // alert(this.responseText);
            document.getElementById("tcFormDiv").reset();
            // Update the test code in the HTML without reloading
            document.getElementById("testCode").innerHTML = randomNumber;
        }
    };
    xhr.open("POST", "../../shared/server/testCode.php", true);
    xhr.send(formData);

    return false;

}, (1000 * 60 * 15));

function fetchTestCode()  {
    var formData = new FormData();
        formData.append("task", "fetch");

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("testCode").innerHTML = this.responseText;
            }
        };
        xhr.open("POST", "../../shared/server/testCode.php", true);
        xhr.send(formData);

        return false;
}

setInterval(fetchTestCode, 5000);

function changeStaffPassword() {
    const existingPassword = document.getElementById("currentPassTxt").value.trim();
    const newPassword = document.getElementById("newPassTxt").value.trim();
    const confirmPassword = document.getElementById("confirmPassTxt").value.trim();

    if (existingPassword === '' || newPassword === '' || confirmPassword === '') {
        alert("Please fill in all fields.");
        return false;
    }

    const passwordRegex = /^(?=.*\d).{8,}$/;
    if (!passwordRegex.test(newPassword)) {
        alert("Password must be at least 8 characters long and contain at least one number.");
        return false;
    }

    if (newPassword !== confirmPassword) {
        alert("New password and confirm password do not match.");
        return false;
    }

    const formData = new FormData();
    formData.append("existingPassword", existingPassword);
    formData.append("confirmPassword", confirmPassword);

    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState === 4) {
            if (this.status === 200) {
                const response = this.responseText;
                handleResponse(response);
            } else {
                alert("Error: " + this.statusText);
            }
        }
    };
    xhr.open("POST", "../../shared/server/changePasswordServer.php");
    xhr.send(formData);

    return false;
}

function handleResponse(response) {
    switch (response) {
        case "wrong":
            alert("Password changing failed!");
            break;
        case "done":
            alert("Password changed successfully!");
            document.getElementById("passFormDiv").reset();
            break;
        case "invalid":
            alert("Wrong current password!");
            break;
        default:
            alert("Unexpected response: " + response);
    }
}
