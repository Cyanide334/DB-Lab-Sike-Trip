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
    }
    //destination can have only alphabets
    if (destination != "") {
        if (!destination.match(names)) {
            searchtour.innerText = 'Please enter alphabets only in the destination.';
            return false;
        }
    }
    return true;
}