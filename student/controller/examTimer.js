let timerInterval;
// Timer Function 30min
function startTimer() {
    let min;
    let sec;

    // Check if there are stored values in local storage
    if (localStorage.getItem('examTimer')) {
        const storedTime = JSON.parse(localStorage.getItem('examTimer'));
        min = storedTime.min;
        sec = storedTime.sec;
    } else {
        min = 30;
        sec = 0;
        localStorage.setItem('examTimer', JSON.stringify({ min, sec }));
    }

    timerInterval = setInterval(function () {
        if (min == 0 && sec == 0) {
            clearInterval(timerInterval);
            alert("Exam Ended!!");
            localStorage.removeItem('examTimer'); // Clear the stored timer values
            document.location.href = "../view/studDashboard.php";
        } else {
            if (sec == 0) {
                sec = 59;
                min--;
            } else {
                sec--;
            }

            // Update the display
            document.getElementById("time").textContent = (min < 10 ? '0' : '') + min + ':' + (sec < 10 ? '0' : '') + sec;

            // Store the current timer values in local storage
            localStorage.setItem('examTimer', JSON.stringify({ min, sec }));
        }
    }, 1000);
}