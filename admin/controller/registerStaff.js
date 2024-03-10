function registerStaff() {
    const staffFname = document.getElementById("staffFnameTxt");
    const staffLname = document.getElementById("staffLnameTxt");
    const staffDept = document.getElementById("selStaffDept");
    
    if (staffFname.value != '' && staffDept.value != '' && staffLname.value != '') {

        const staffName = `${staffFname.value.trim().toLowerCase()} ${staffLname.value.trim().toLowerCase()}`
        const staffEmail = staffFname.value.trim().toLowerCase() + '.' + staffLname.value.trim().toLowerCase() + '@ves.ac.in';
        const emailRegex = /^[a-zA-Z]+\.[a-zA-Z]+(@ves.ac.in)$/;
        if (emailRegex.test(staffEmail)) {

            const formData = new FormData();
            formData.append("staffName", staffName);
            formData.append("staffDept", staffDept.value.toLowerCase());
            formData.append("staffEmail", staffEmail);
    
            const xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    alert(this.responseText);
                    document.getElementById("regStaffFormDiv").reset();
                }
            };
            xhr.open("POST", "../server/registerStaff.php", true);
            xhr.send(formData);
        } else {
            alert("Invalid VES E-mail ID Format.");
        }
    } else {
        alert("Please fill in all fields.");
    }
    return false;
}
