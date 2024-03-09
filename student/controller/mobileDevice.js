/* Notworking
// function forceLandscapeOrientation() {
//     if (screen.orientation && screen.orientation.lock) {
//         // Attempt to lock the screen orientation to landscape
//         screen.orientation.lock('landscape').then(function() {
//             console.log('Screen orientation set to landscape');
//         }).catch(function(error) {
//             console.error('Unable to set screen orientation:', error);
//         });
//     } else {
//         console.warn('Screen orientation API not supported');
//     }
// }

// Call the function when the @media query matches (e.g., when the screen width is below a certain value)
// if (window.matchMedia("(max-width: 500px)").matches) {
//     forceLandscapeOrientation();
// }

// window.addEventListener('orientationchange', function () {
//     if (window.orientation === 0) {
//         // Portrait orientation
//         document.getElementById('orientationMessage').style.display = 'block';
//     } else {
//         // Landscape orientation
//         document.getElementById('orientationMessage').style.display = 'none';
//     }
// });

// document.addEventListener('DOMContentLoaded', function () {
//     checkDisplayWidth();

//     // Attach an event listener to handle changes in orientation
//     window.addEventListener('orientationchange', checkDisplayWidth);
// });

// function checkDisplayWidth() {
//     // Get the current width of the display
//     const displayWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;

//     // You can set a threshold width and show a message if the width is below it
//     const thresholdWidth = 600; // Set your desired threshold

//     const orientationMessage = document.getElementById('orientationMessage');

//     if (displayWidth < thresholdWidth) {
//         orientationMessage.style.display = 'block';
//         document.getElementById("mainContainer").style.display = 'none';
//     } else {
//         orientationMessage.style.display = 'none';
//     }
// }
*/

// To verify that this page should not open in any mobile devices
document.addEventListener('DOMContentLoaded', function () {
    checkDisplayWidth();

    // Attach an event listener to handle changes in orientation or resize
    window.addEventListener('resize', checkDisplayWidth);
});

function checkDisplayWidth() {
    // Get the current width of the display
    const displayWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;

    // You can set a threshold width and show a message if the width is below it
    const thresholdWidth = 600; // Set your desired threshold

    const orientationMessage = document.getElementById('orientationMessage');

    if (displayWidth < thresholdWidth) {
        orientationMessage.style.display = 'block';
        document.getElementById("mainContainer").style.display = 'none';
    } else {
        orientationMessage.style.display = 'none';
        document.getElementById("mainContainer").style.display = 'flex';
    }
}