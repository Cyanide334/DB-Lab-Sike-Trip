var searchtour = document.getElementById('SearchTourError');
var names = /^[a-zA-Z]+$/;

searchtour.hidden = true;

function validate() {

    var departure = document.getElementById('HomeContent_inputDeparture').value;//names
    var destination = document.getElementById('HomeContent_inputDestination').value;//names

    searchtour.hidden = false;

    //departure can have only alphabets
    if (departure != "") {
        if (!departure.match(names)) {
            searchtour.innerText = 'Please enter alphabets only in the departure.';
            return false;
        }
        departure = departure.toLowerCase();
        departure = departure.charAt(0).toUpperCase() + departure.slice(1);
        document.getElementById('HomeContent_inputDeparture').value = departure;
    }
    //destination can have only alphabets
    if (destination != "") {
        if (!destination.match(names)) {
            searchtour.innerText = 'Please enter alphabets only in the destination.';
            return false;
        }
        destination = destination.toLowerCase();
        destination = destination.charAt(0).toUpperCase() + destination.slice(1);
        document.getElementById('HomeContent_inputDestination').value = destination;
    }
    return true;
}