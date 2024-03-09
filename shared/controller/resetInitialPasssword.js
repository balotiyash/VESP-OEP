const emailInput = document.getElementById("emailTxt");
const passwordInput = document.getElementById("newPassTxt");
const confirmPasswordInput = document.getElementById("confirmPassTxt");
const dobInput = document.getElementById("dobInput");
const securityQuestion = document.getElementById("securityQuestion");
const securityAnswer = document.getElementById("securityAnswer");
const reviewCheckbox = document.getElementById("review");

window.onload = function() {
    // Get today's date
    var today = new Date();

    // Subtract 18 years from today's date
    var eighteenYearsAgo = new Date(today.getFullYear() - 18, today.getMonth(), today.getDate());

    // Format dates as yyyy-MM-dd
    var formattedEighteenYearsAgo = eighteenYearsAgo.getFullYear() + '-' + ('0' + (eighteenYearsAgo.getMonth() + 1)).slice(-2) + '-' + ('0' + eighteenYearsAgo.getDate()).slice(-2);

    // Set the maximum date for the input field
    document.getElementById("dobInput").max = formattedEighteenYearsAgo;
}


function resetInitialPassword() {
    if (
        emailInput.value.trim() === '' &&
        passwordInput.value.trim() === '' &&
        confirmPasswordInput.value.trim() === '' &&
        dobInput.value.trim() === '' &&
        securityQuestion.value.trim() === '' &&
        securityAnswer.value.trim() === ''
    ) {
        alert("Please fill in all fields.");
        return false;
    }

    const emailRegex = /^[a-zA-Z]+\.[a-zA-Z]+(@ves.ac.in)$/;
    if (!emailRegex.test(emailInput.value.trim())) {
        alert("Email format do not matched. Must end with @ves.ac.in");
        return false;
    }

    const passwordRegex = /^(?=.*\d).{8,}$/;
    if (!passwordRegex.test(passwordInput.value.trim())) {
        alert("Password must be at least 8 characters long and contain at least one number.");
        return false;
    }

    // Check if passwords match
    if (passwordInput.value.trim() !== confirmPasswordInput.value.trim()) {
        alert("Passwords do not match.");
        return false;
    }

    // Check if review checkbox is checked
    if (!reviewCheckbox.checked) {
        alert("Please review your details.");
        return false;
    }

    let formData = new FormData();
    formData.append("task", "resetInitial");
    formData.append("uname", emailInput.value.trim().toLowerCase());
    formData.append("newPass", confirmPasswordInput.value.trim());
    formData.append("dob", dobInput.value);
    formData.append("securityQuestion", securityQuestion.value);
    formData.append("securityAnswer", securityAnswer.value.trim().toLowerCase());

    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            const response = this.responseText;

            if (response == "Password reset successful.") {
                alert(response);
                document.getElementById("resetPassForm").reset();
                window.location.href = "../../index.php";
            } else {
                alert(response);
            }
        }
    };
    xhr.open("POST", "../../home/server/resetPasswordServer.php", true);
    xhr.send(formData);

    return false;
}

function hideShowPassword(role) {
    if (role == "newPassTxt") {
        var passwordInput = document.getElementById('newPassTxt');
        var icon = document.getElementById('eyePass1');
        
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            icon.classList.add('fa-eye-slash');
            icon.classList.remove('fa-eye');
        } else {
            passwordInput.type = 'password';
            icon.classList.add('fa-eye');
            icon.classList.remove('fa-eye-slash');
        }
    } else if (role == "confirmPassTxt") {
        var passwordInput = document.getElementById('confirmPassTxt');
        var icon = document.getElementById('eyePass2');
        
        if (passwordInput.type === 'password') {
            passwordInput.type = 'text';
            icon.classList.add('fa-eye-slash');
            icon.classList.remove('fa-eye');
        } else {
            passwordInput.type = 'password';
            icon.classList.add('fa-eye');
            icon.classList.remove('fa-eye-slash');
        }
    }
}