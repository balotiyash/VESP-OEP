function setCO() {
    const subject = document.getElementById("selSubMap").value;
    const classTest = document.getElementById("selCT").value;

    // Determine which COs need to be validated based on the selected class test
    let co1, co2, co3, co4, co5, co6;
    co1 = document.getElementById("co1").value.trim() || "0";
    co2 = document.getElementById("co2").value.trim() || "0";
    co3 = document.getElementById("co3").value.trim() || "0";
    co4 = document.getElementById("co4").value.trim() || "0";
    co5 = document.getElementById("co5").value.trim() || "0";
    co6 = document.getElementById("co6").value.trim() || "0";

    let totalQuestions = parseInt(co1) + parseInt(co2) + parseInt(co3) + parseInt(co4) + parseInt(co5) + parseInt(co6);
    
    // Check if subject and COs are filled based on the selected class test
    if (subject && classTest) {
        if ((totalQuestions == 20) || (totalQuestions == 30)) {
            const formData = new FormData();
            formData.append("subject", subject.toLowerCase());
            formData.append("classTest", classTest);
            formData.append("co1", co1.toString());
            formData.append("co2", co2.toString());
            formData.append("co3", co3.toString());
            formData.append("co4", co4.toString());
            formData.append("co5", co5.toString());
            formData.append("co6", co6.toString());
    
            const xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    alert(this.responseText);
                    document.getElementById("mapFormDiv").reset();
                }
            };
            xhr.open("POST", "../server/mapCOServer.php", true);
            xhr.send(formData);

        } else {
            alert("COs total must be either 20 or 30.");
        }
    } else {
        alert("Please fill in all fields.");
    }
    return false;
}



function openCOMap(value) {
    if (value == "ct1") {
        document.getElementById("CO123").hidden = false;
        document.getElementById("CO456").hidden = true;
    } else if (value == "ct2") {
        document.getElementById("CO123").hidden = true;
        document.getElementById("CO456").hidden = false;
    }
}
