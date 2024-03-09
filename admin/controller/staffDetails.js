document.addEventListener('DOMContentLoaded', function() {
    // Event listener for edit button
    document.querySelectorAll('.editBtn').forEach(button => {
        button.addEventListener('click', function() {
            const row = this.dataset.row;
            editRecord(row);
        });
    });

    // Event listener for save button
    document.querySelectorAll('.saveBtn').forEach(button => {
        button.addEventListener('click', function() {
            const row = this.dataset.row;
            saveRecord(row);
        });
    });

    // Event listener for reset button
    document.querySelectorAll('.resetBtn').forEach(button => {
        button.addEventListener('click', function() {
            const row = this.dataset.row;
            resetRecord(row);
        });
    });

    // Event listener for remove button
    document.querySelectorAll('.removeBtn').forEach(button => {
        button.addEventListener('click', function() {
            const row = this.dataset.row;
            removeRecord(row);
        });
    });
});

// Function to edit record
function editRecord(row) {
    // Implement your logic to enable input fields for editing
    // Show the save button and hide the edit button
    document.getElementById('editCell_' + row).querySelector('.editBtn').style.display = 'none';
    document.getElementById('editCell_' + row).querySelector('.saveBtn').style.display = 'inline-block';
    document.getElementById('staffNameRecord_' + row).disabled = false;
    document.getElementById('staffDeptRecord_' + row).disabled = false;
    // You can do the same for other fields if needed
}

// Function to save record
function saveRecord(row) {
    // Implement your logic to save the edited record
    // Hide the save button and show the edit button
    document.getElementById('editCell_' + row).querySelector('.saveBtn').style.display = 'none';
    document.getElementById('editCell_' + row).querySelector('.editBtn').style.display = 'inline-block';
    document.getElementById('staffNameRecord_' + row).disabled = true;
    document.getElementById('staffDeptRecord_' + row).disabled = true;
    // You can do the same for other fields if needed
}

// Function to reset record
function resetRecord(row) {
    // Implement your logic to reset the record to its original state
    // You can restore the original values from hidden input fields
    // You can also clear any changes made by the user
}

// Function to remove record
function removeRecord(row) {
    // Implement your logic to remove the record from the table and database
}