var booktourerror = document.getElementById('BookTourError');
var numbers = /^[0-9]+$/;

booktourerror.hidden = true;

function validate() {
    var seats = document.getElementById('HomeContent_bus_booking_days').value;//numbers

    booktourerror.hidden = false;

    //seats
    if (seats != "") {
        if (!seats.match(numbers)) {
            booktourerror.innerText = 'Please enter numbers only in the number of days.';
            return false;
        }
    }
    return true;
}
