var searchbus = document.getElementById('SearchBusError');
var numbers = /^[0-9]+$/;

searchbus.hidden = true;

function validate() {

    var MinPrice = document.getElementById('HomeContent_inputMinPrice').value;//names
    var MaxPrice = document.getElementById('HomeContent_inputMaxPrice').value;//names

    searchbus.hidden = false;

    //MinPrice
    if (MinPrice != "") {
        if (!MinPrice.match(numbers)) {
            searchbus.innerText = 'Please enter numbers only in the min price.';
            return false;
        }
    }

    //MaxPrice
    if (MaxPrice != "") {
        if (!MaxPrice.match(numbers)) {
            searchbus.innerText = 'Please enter numbers only in the max price.';
            return false;
        }
    }

    return true;
}