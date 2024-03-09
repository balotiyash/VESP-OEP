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
    
    // Check if subject and COs are filled based on the selected class test
    if (subject && ((classTest === "CT1" && co1 && co2 && co3) || (classTest === "CT2" && co4 && co5 && co6))) {
        const formData = new FormData();
        formData.append("subject", subject);
        formData.append("classTest", classTest);
        formData.append("co1", co1);
        formData.append("co2", co2);
        formData.append("co3", co3);
        formData.append("co4", co4);
        formData.append("co5", co5);
        formData.append("co6", co6);

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
        alert("Please fill in all fields.");
    }
    return false;
}




function openCOMap(value) {
    if (value == "CT1") {
        document.getElementById("CO123").hidden = false;
        document.getElementById("CO456").hidden = true;

        // document.getElementById("co1").required = true;
        // document.getElementById("co2").required = true;
        // document.getElementById("co3").required = true;
        // document.getElementById("co4").required = false;
        // document.getElementById("co5").required = false;
        // document.getElementById("co6").required = false;
    } else if (value == "CT2") {
        document.getElementById("CO123").hidden = true;
        document.getElementById("CO456").hidden = false;

        // document.getElementById("co1").required = false;
        // document.getElementById("co2").required = false;
        // document.getElementById("co3").required = false;
        // document.getElementById("co4").required = true;
        // document.getElementById("co5").required = true;
        // document.getElementById("co6").required = true;
    }
}