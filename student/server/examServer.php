<script>
    let questions, optionA, optionB, optionC, optionD, correctOption;
    let subject = window.localStorage.getItem("selectedSubject");
    let subjectCode = substr(subject, 0, 3).trim().toLowerCase();
    console.log(subjectCode);

    window.onload = function() {
        // Create a new XMLHttpRequest object
        var xhr = new XMLHttpRequest();
        const formData = new FormData();
        // formData.append("subjectCode", subjectCode);
        formData.append("task", "fetchExam");

        // Define the function to handle the response
        xhr.onreadystatechange = function() {
            // Check if the request is complete and successful
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                questions = <?php echo $ctQuestions; ?>
                console.log(questions);
                if (this.responseText == "No questions found.") {
                    alert("No questions found.");
                } else if (this.responseText == "Invalid parameters.") {
                    alert("Invalid parameters.");
                }
            }
        };
        xhr.open("POST", "../server/validateExam.php", true);
        xhr.send(formData);
    }
</script>