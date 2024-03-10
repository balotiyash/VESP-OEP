function openSubjectDetails(subject) {
    // Hide the "No Exam Selected" message and show the exam details section
    document.getElementById("noExam").style.display = 'none';
    document.getElementById("examDetails").style.display = 'flex';

    // Get references to all subject buttons
    // let allSubjectBtns = document.querySelectorAll('.subjectBtn');

    // Reset background colors of all buttons and remove the 'selected' class
    // allSubjectBtns.forEach(btn => {
    //     btn.style.backgroundColor = '#feefcd'; // Reset background color
    //     btn.classList.remove('selected'); // Remove the 'selected' class
    // });

    // Add the 'selected' class to the clicked button and change its background color
    // let selectedBtn = document.getElementById(subject + 'Btn');
    // selectedBtn.classList.add('selected');
    // selectedBtn.style.backgroundColor = '#ffc107';

    // Get references to subject details elements
    let subjectNameElem = document.getElementById("subName");
    let subjectCodeElem = document.getElementById("subCode");
    let subjectProgramElem = document.getElementById("subProgram");
    let subjectQuestionsElem = document.getElementById("qno");

    // Set subject details based on the selected subject
    switch (subject) {
        case "mgt":
            subjectNameElem.textContent = "Management";
            subjectCodeElem.textContent = "MGT/MAN - 22509";
            subjectProgramElem.textContent = "AO6I/CE6I/CO6I/EE5I/EJ6I/ME6I";
            subjectQuestionsElem.textContent = "20";
            break;

        case "est":
            subjectNameElem.textContent = "Environmental Studies";
            subjectCodeElem.textContent = "EST - 22447";
            subjectProgramElem.textContent = "AO5I/CE4I/CO5I/EE4I/EJ5I/ME4I";
            subjectQuestionsElem.textContent = "20";
            break;

        case "bsc":
            subjectNameElem.textContent = "Basic Science";
            subjectCodeElem.textContent = "BSC - 311305";
            subjectProgramElem.textContent = "AO1K/CE1K/CO1K/EE1K/EJ1K/ME1K";
            subjectQuestionsElem.textContent = "30";
            break;

        case "asc":
            subjectNameElem.textContent = "Applied Science";
            subjectCodeElem.textContent = "ASC - 312308";
            subjectProgramElem.textContent = "AO2K/CE2K/EE1K/ME1K";
            subjectQuestionsElem.textContent = "30";
            break;

        case "bee":
            subjectNameElem.textContent = "Basic Electrical & Electronics Engineering";
            subjectCodeElem.textContent = "BEE - 312302";
            subjectProgramElem.textContent = "CO2K";
            subjectQuestionsElem.textContent = "30";
            break;

        case "mem":
            subjectNameElem.textContent = "Mechanical Engineering Materials";
            subjectCodeElem.textContent = "MEM - 22343";
            subjectProgramElem.textContent = "ME3I";
            subjectQuestionsElem.textContent = "20";
            break;

        case "ajp":
            subjectNameElem.textContent = "Advanced Java Programming";
            subjectCodeElem.textContent = "AJP - 22517";
            subjectProgramElem.textContent = "CO5I";
            subjectQuestionsElem.textContent = "20";
            break;

        case "ete":
            subjectNameElem.textContent = "Emerging Trends in Electronics";
            subjectCodeElem.textContent = "ETE - 22363";
            subjectProgramElem.textContent = "AO6I";
            subjectQuestionsElem.textContent = "20";
            break;

        case "etc":
            subjectNameElem.textContent = "Emerging Trends in Civil Engineering";
            subjectCodeElem.textContent = "ETC - 22603";
            subjectProgramElem.textContent = "CE6I";
            subjectQuestionsElem.textContent = "20";
            break;

        case "eti":
            subjectNameElem.textContent = "Emerging Trends in Computer and IT";
            subjectCodeElem.textContent = "ETI - 22618";
            subjectProgramElem.textContent = "CO6I";
            subjectQuestionsElem.textContent = "20";
            break;

        case "etee":
            subjectNameElem.textContent = "Emerging Trends in Electrical Engineering";
            subjectCodeElem.textContent = "ETE - 22628";
            subjectProgramElem.textContent = "EE6I";
            subjectQuestionsElem.textContent = "20";
            break;

        case "etm":
            subjectNameElem.textContent = "Emerging Trends in Mechanical Engineering";
            subjectCodeElem.textContent = "ETM - 22652";
            subjectProgramElem.textContent = "CO5I";
            subjectQuestionsElem.textContent = "20";
            break;
    }
}