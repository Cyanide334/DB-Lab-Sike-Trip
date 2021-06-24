var createbusserviceerror = document.getElementById('HomeContent_CreateBusServiceError');
var names = /^[a-zA-Z]+$/;
var numbers = /^[0-9]+$/;
var buslicformat = /^[A-Z]{3}\s[0-9]{4}$/;//ABC 1234
var busregformat = "^(([A-Z]{2}[0-9]{2})"
    + "( )|([A-Z]{2}-[0-9]"
    + "{2}))((19|20)[0-9]"
    + "[0-9])[0-9]{7}$";
    ///^ (([A - Z]{ 2}[0 - 9]{ 2 }) ( ) | ([A - Z]{ 2 } -[0 - 9]{ 2 })) ((19 | 20)[0 - 9][0 - 9])[0 - 9]{ 7 } +$/;//HR-0619850034761 or HR06 19850034761

createbusserviceerror.hidden = true;

function validate() {

    var busmanufacturer = document.getElementById('HomeContent_BusManufacturer').value;//names
    var busmodel = document.getElementById('HomeContent_BusModel').value;//names
    var regnumber = document.getElementById('HomeContent_Rnum').value;//busregformat
    var licnumber = document.getElementById('HomeContent_Lnum').value;//buslicformat
    var capacity = document.getElementById('HomeContent_Capacity').value;//numbers
    var priceperday = document.getElementById('HomeContent_PPD').value;//numbers

    createbusserviceerror.hidden = false;

    //busmanufacturer
    if (busmanufacturer != "") {
        if (!busmanufacturer.match(names)) {
            createbusserviceerror.innerText = 'Please enter alphabets only (1 word) in the bus manufacturer.';
            return false;
        }
    }
    else {
        createbusserviceerror.innerText = 'Please enter Bus Manufacturer.'; return false;

    }

    //busmodel
    if (busmodel != "") {
        if (!busmodel.match(names)) {
            createbusserviceerror.innerText = 'Please enter alphabets only (1 word) in the bus model.';
            return false;
        }
    }
    else {
        createbusserviceerror.innerText = 'Please enter Bus Model.'; return false;

    }

    //regnumber
    if (regnumber != "") {
        if (!regnumber.match(busregformat)) {
            createbusserviceerror.innerText = 'Please enter HR-0619850034761 or HR06 19850034761 format in the registration number.';
            return false;
        }
    }
    else {
        createbusserviceerror.innerText = 'Please enter Bus Registration Number.'; return false;

    }

    //licnumber
    if (licnumber != "") {
        if (!licnumber.match(buslicformat)) {
            createbusserviceerror.innerText = 'Please enter capital letters and numbers in the license number.';
            return false;
        }
    }
    else {
        createbusserviceerror.innerText = 'Please enter Bus License Number.'; return false;

    }

    //capacity
    if (capacity != "") {
        if (!capacity.match(numbers)) {
            createbusserviceerror.innerText = 'Please enter numbers only in the capacity.';
            return false;
        }
    }
    else {
        createbusserviceerror.innerText = 'Please enter Bus Capacity.';
        return false;

    }
    //priceperday
    if (priceperday != "") {
        if (!priceperday.match(numbers)) {
            createbusserviceerror.innerText = 'Please enter numbers only in the price per day.';
            return false;
        }
    }
    else {
        createbusserviceerror.innerText = 'Please enter Bus Price/Day.';
        return false;

    }

    return true;
}


