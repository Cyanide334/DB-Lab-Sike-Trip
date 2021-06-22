var bookbuserror = document.getElementById('BookBusError');
var numbers = /^[0-9]+$/;
var dateformat = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/;//dd/mm/yyyy

bookbuserror.hidden = true;

function validate() {
    var booking_days = document.getElementById('HomeContent_bus_booking_days').value;//numbers
    var booking_date = document.getElementById('HomeContent_bus_booking_date').value;//date

    bookbuserror.hidden = false;

    if (booking_date == "" || booking_days == "") {
        bookbuserror.innerText = 'Please enter missing fields.';
        return false;

    }

    //booking_date
    if (booking_date != "") {
        if (booking_date.match(dateformat)) {
            regs = booking_date.match(dateformat);
            // day value between 1 and 31
            if (regs[1] < 1 || regs[1] > 31) {
                bookbuserror.innerText = 'Invalid value for day: ' + regs[1];
                return false;
            }
            // month value between 1 and 12
            if (regs[2] < 1 || regs[2] > 12) {
                bookbuserror.innerText = 'Invalid value for month: ' + regs[2];
                return false;
            }
            // year value
            if (regs[3] < (new Date()).getFullYear()) {
                bookbuserror.innerText = 'Invalid value for year: ' + regs[3] + ' - must be after or on ' + (new Date()).getFullYear();
                return false;
            }
        }
        else {
            bookbuserror.innerText = 'Please enter dd/mm/yyyy format in the booking date.';
            return false;
        }
    }

    //booking days
    if (booking_days != "") {
        if (!booking_days.match(numbers)) {
            bookbuserror.innerText = 'Please enter numbers only in the number of days.';
            return false;
        }
    }
    return true;
}
