var createtourservice = document.getElementById('HomeContent_CreateTourServiceError');
//var names = /^[a-zA-Z ]+ [a-zA-Z]+$/;
var names = /^[a-zA-Z]+$/;
var numbers = /^[0-9]+$/;
var dateformat = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/;//dd/mm/yyyy
var timeformat = /^(\d{1,2}):(\d{2})([ap]m)?$/;//hh:mm a/pm
var busformat = /^[A-Z]{3}\s[0-9]{4}$/;//ABC 1234

createtourservice.hidden = true;

function validate() {

    var departure = document.getElementById('HomeContent_Departure').value;//names
    var destination = document.getElementById('HomeContent_Destination').value;//names
    var departuredate = document.getElementById('HomeContent_Ddate').value;//dateformat
    var departuretime = document.getElementById('HomeContent_Dtime').value;//timeformat
    var arrivaldate = document.getElementById('HomeContent_Adate').value;//dateformat
    var arrivaltime = document.getElementById('HomeContent_Atime').value;//timeformat
    var returndate = document.getElementById('HomeContent_Rdate').value;//dateformat
    var returntime = document.getElementById('HomeContent_Rtime').value;//timeformat
    var numberofdays = document.getElementById('HomeContent_numDays').value;//numbers
    var totalseats = document.getElementById('HomeContent_TotalSeats').value;//numbers
    var priceperseat = document.getElementById('HomeContent_PPS').value;//numbers
    var tourguide = document.getElementById('HomeContent_TourGuide').value;//names
    var busnumber = document.getElementById('HomeContent_BusNum').value;//busformat

    createtourservice.hidden = false;

    //departure can have only alphabets
    if (departure != "") {
        if (!departure.match(names)) {
            createtourservice.innerText = 'Please enter alphabets only in the departure.';
            return false;
        }
    }

    //destination can have only alphabets
    if (destination != "") {
        if (!destination.match(names)) {
            createtourservice.innerText = 'Please enter alphabets only in the destination.';
            return false;
        }
    }

    //departuredate
    if (departuredate != "") {
        if (departuredate.match(dateformat)) {
            regs = departuredate.match(dateformat);
            // day value between 1 and 31
            if (regs[1] < 1 || regs[1] > 31) {
                createtourservice.innerText = 'Invalid value for day: ' + regs[1];
                return false;
            }
            // month value between 1 and 12
            if (regs[2] < 1 || regs[2] > 12) {
                createtourservice.innerText = 'Invalid value for month: ' + regs[2];
                return false;
            }
            // year value
            if (regs[3] < (new Date()).getFullYear()) {
                createtourservice.innerText = 'Invalid value for year: ' + regs[3] + ' - must be after or on ' + (new Date()).getFullYear();
                return false;
            }
        }
        else {
            createtourservice.innerText = 'Please enter dd/mm/yyyy format in the departure date.';
            return false;
        }
    }

    //departuretime
    if (departuretime != "") {
        if (departuretime.match(timeformat)) {
            regs = departuretime.match(timeformat);
            if (regs[3]) {
                // 12-hour value between 1 and 12
                if (regs[1] < 1 || regs[1] > 12) {
                    createtourservice.innerText = 'Invalid value for hour: ' + regs[1];
                    return false;
                }
            }
            else {
                // 24-hour value between 0 and 23
                if (regs[1] > 23) {
                    createtourservice.innerText = 'Invalid value for hours: ' + regs[1];
                    return false;
                }
            }
            // minute value between 0 and 59
            if (regs[2] > 59) {
                createtourservice.innerText = 'Invalid value for minutes: ' + regs[2];
                return false;
            }
        }
        else {
            createtourservice.innerText = 'Please enter hh:mma/pm format in the departure time.';
            return false;
        }
    }

    //arrivaldate
    if (arrivaldate != "") {
        if (arrivaldate.match(dateformat)) {
            regs = arrivaldate.match(dateformat);
            // day value between 1 and 31
            if (regs[1] < 1 || regs[1] > 31) {
                createtourservice.innerText = 'Invalid value for day: ' + regs[1];
                return false;
            }
            // month value between 1 and 12
            if (regs[2] < 1 || regs[2] > 12) {
                createtourservice.innerText = 'Invalid value for month: ' + regs[2];
                return false;
            }
            // year value
            if (regs[3] < (new Date()).getFullYear()) {
                createtourservice.innerText = 'Invalid value for year: ' + regs[3] + ' - must be after or on ' + (new Date()).getFullYear();
                return false;
            }
        }
        else {
            createtourservice.innerText = 'Please enter dd/mm/yyyy format in the arrival date.';
            return false;
        }
    }

    //arrivaltime
    if (arrivaltime != "") {
        if (arrivaltime.match(timeformat)) {
            regs = arrivaltime.match(timeformat);
            if (regs[3]) {
                // 12-hour value between 1 and 12
                if (regs[1] < 1 || regs[1] > 12) {
                    createtourservice.innerText = 'Invalid value for hour: ' + regs[1];
                    return false;
                }
            }
            else {
                // 24-hour value between 0 and 23
                if (regs[1] > 23) {
                    createtourservice.innerText = 'Invalid value for hours: ' + regs[1];
                    return false;
                }
            }
            // minute value between 0 and 59
            if (regs[2] > 59) {
                createtourservice.innerText = 'Invalid value for minutes: ' + regs[2];
                return false;
            }
        }
        else {
            createtourservice.innerText = 'Please enter hh:mma/pm format in the arrival time.';
            return false;
        }
    }

    //returndate
    if (returndate != "") {
        if (returndate.match(dateformat)) {
            regs = returndate.match(dateformat);
            // day value between 1 and 31
            if (regs[1] < 1 || regs[1] > 31) {
                createtourservice.innerText = 'Invalid value for day: ' + regs[1];
                return false;
            }
            // month value between 1 and 12
            if (regs[2] < 1 || regs[2] > 12) {
                createtourservice.innerText = 'Invalid value for month: ' + regs[2];
                return false;
            }
            // year value
            if (regs[3] < (new Date()).getFullYear()) {
                createtourservice.innerText = 'Invalid value for year: ' + regs[3] + ' - must be after or on ' + (new Date()).getFullYear();
                return false;
            }
        }
        else {
            createtourservice.innerText = 'Please enter dd/mm/yyyy format in the return date.';
            return false;
        }
    }

    //returntime
    if (returntime != "") {
        if (returntime.match(timeformat)) {
            regs = returntime.match(timeformat);
            if (regs[3]) {
                // 12-hour value between 1 and 12
                if (regs[1] < 1 || regs[1] > 12) {
                    createtourservice.innerText = 'Invalid value for hour: ' + regs[1];
                    return false;
                }
            }
            else {
                // 24-hour value between 0 and 23
                if (regs[1] > 23) {
                    createtourservice.innerText = 'Invalid value for hours: ' + regs[1];
                    return false;
                }
            }
            // minute value between 0 and 59
            if (regs[2] > 59) {
                createtourservice.innerText = 'Invalid value for minutes: ' + regs[2];
                return false;
            }
        }
        else {
            createtourservice.innerText = 'Please enter hh:mma/pm format in the return time.';
            return false;
        }
    }

    //numberofdays
    if (numberofdays != "") {
        if (!numberofdays.match(numbers)) {
            createtourservice.innerText = 'Please enter numbers only in the number of days.';
            return false;
        }
    }

    //totalseats
    if (totalseats != "") {
        if (!totalseats.match(numbers)) {
            createtourservice.innerText = 'Please enter numbers only in the total seats.';
            return false;
        }
    }

    //priceperseat
    if (priceperseat != "") {
        if (!priceperseat.match(numbers)) {
            createtourservice.innerText = 'Please enter numbers only in the price per seat.';
            return false;
        }
    }

    //tourguide can have only alphabets
    if (tourguide != "") {
        if (!tourguide.match(names)) {
            createtourservice.innerText = 'Please enter alphabets only (1 word) in the tour guide name.';
            return false;
        }
    }

    //busnumber
    if (busnumber != "") {
        if (!busnumber.match(busformat)) {
            createtourservice.innerText = 'Please enter ABC 1234 format in the bus number.';
            return false;
        }
    }

    return true;
}


