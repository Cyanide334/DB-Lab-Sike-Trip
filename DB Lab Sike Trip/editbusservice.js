var erroreditbus = document.getElementById('HomeContent_EditBusServiceError');
var names = /^[a-zA-Z]+$/;
var numbers = /^[0-9]+$/;
var busregformat = /^[a-zA-Z0-9._][a-zA-Z]+[0-9]*$/
var buslicformat = "^(([A-Z]{2}[0-9]{2})"
    + "( )|([A-Z]{2}-[0-9]"
    + "{2}))((19|20)[0-9]"
    + "[0-9])[0-9]{7}$";
    ///^(([A-Z]{2}[0-9]{2})( )|([A-Z]{2}-[0-9]{2}))((19|20)[0-9][0-9])[0-9]{7}$/;//HR-0619850034761 or HR06 19850034761

erroreditbus.hidden = true;

function validate() {

    var busmanufacturer = document.getElementById('HomeContent_BusManufacturer').value;//names
    var busmodel = document.getElementById('HomeContent_BusModel').value;//names
    var regnumber = document.getElementById('HomeContent_Rnum').value;//busregformat
    var licnumber = document.getElementById('HomeContent_Lnum').value;//buslicformat
    var capacity = document.getElementById('HomeContent_Capacity').value;//numbers
    var priceperday = document.getElementById('HomeContent_PPD').value;//numbers

    erroreditbus.hidden = false;

    //busmanufacturer
    if (busmanufacturer != "") {
        if (!busmanufacturer.match(names)) {
            erroreditbus.innerText = 'Please enter alphabets only (1 word) in the bus manufacturer.';
            return false;
        }
    }

    //busmodel
    if (busmodel != "") {
        if (!busmodel.match(names)) {
            erroreditbus.innerText = 'Please enter alphabets only (1 word) in the bus model.';
            return false;
        }
    }

    //regnumber
    if (regnumber != "") {
        if (!regnumber.match(busregformat)) {
            erroreditbus.innerText = 'Please enter capital letters and numbers in the registration number.';
            return false;
        }
    }

    //licnumber
    if (licnumber != "") {
        if (!licnumber.match(buslicformat)) {
            erroreditbus.innerText = 'Please enter HR-0619850034761 or HR06 19850034761 format in the license number.';
            return false;
        }
    }

    //capacity
    if (capacity != "") {
        if (!capacity.match(numbers)) {
            erroreditbus.innerText = 'Please enter numbers only in the capacity.';
            return false;
        }
    }

    //priceperday
    if (priceperday != "") {
        if (!priceperday.match(numbers)) {
            erroreditbus.innerText = 'Please enter numbers only in the price per day.';
            return false;
        }
    }

    return true;
}


