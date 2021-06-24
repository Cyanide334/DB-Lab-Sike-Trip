var booktourerror = document.getElementById('BookTourError');
var numbers = /^[0-9]+$/;

booktourerror.hidden = true;

function validate() {
    var seats = document.getElementById('HomeContent_TourBookingSeats').value;//numbers

    booktourerror.hidden = false;

    //seats
    if (seats != "") {
        if (!seats.match(numbers)) {
            booktourerror.innerText = 'Please enter numbers only in the number of seats/tickets.';
            return false;
        }
    }

   
    var price = document.getElementById('HomeContent_display_price_of_tour').value//price
    var creditcard = document.getElementById('HomeContent_display_credit').value//card

    if (creditcard == "") {
        booktourerror.innerText = 'Please enter a valid credit card by going to "Edit Profile"';
    }

    var totprice = parseFloat(price) * parseFloat(seats);

    var msg = "Your Credit Card: " + creditcard + " will be charged with : " + totprice;

    var r = confirm(msg);
    if (r == true) {
        return true;
    } else {
        return false;
    }
}
