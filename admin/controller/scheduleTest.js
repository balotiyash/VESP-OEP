function scheduleTest() {
    const subject = document.getElementById("selSub");
    const examDate = document.getElementById("selDate");
    const startTime = document.getElementById("selStartTime");
    const endTime = document.getElementById("selEndTime");
    
    if (subject.value != '' && examDate.value != '' && startTime.value != '' && endTime.value != '') {
        const formData = new FormData();
        formData.append("subject", subject.value.trim().toLowerCase());
        formData.append("examDate", examDate.value.trim());
        formData.append("startTime", startTime.value.trim());
        formData.append("endTime", endTime.value.trim());

        const xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                alert(this.responseText);
                console.log(this.responseText)
                document.getElementById("mainScheduleDiv").reset();
            }
        };
        xhr.open("POST", "../server/scheduleTest.php", true);
        xhr.send(formData);
    } else {
        alert("Please fill in all fields.");
    }
    return false;
}
