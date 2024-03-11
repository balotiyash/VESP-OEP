var passedArray =  
    <?php echo json_encode($sampleArray); ?>; 
       
// Display the array elements 
for(var i = 0; i < passedArray.length; i++){ 
    document.write(passedArray[i]); 
} 