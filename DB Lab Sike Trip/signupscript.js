var errorsignup = document.getElementById('signuperror');
var usernamechar = /^([a - zA - Z0 - 9, _])/;
var fullnamechar = /^([a - zA - Z0 - 9])/;
var emailchar = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
var phonenochar = /^\d{10}$/;
var ccnumchar = /^(?:3[47][0-9]{13})$/;
errorsignup.hidden = true;

function validate() {
    var fullname = document.getElementById('fullname').value;
    var username = document.getElementById('username').value;
    var password = document.getElementById('signupPassword').value;
    var pwd2 = document.getElementById('signupConfirmPassword').value;
    var useremail = document.getElementById('email').value;
    var userdob = document.getElementById('dob').value;
    var country = document.getElementById('signupcountry').value;
    var city = document.getElementById('signupcity').value;
    var phonenumber = document.getElementById('signupPhoneNumber').value;
    var ccnumber = document.getElementById('signupCreditCardNumber').value;
    errorsignup.hidden = false;

    if (fullname == null || username == null || password == null || pwd2 == null || useremail == null || country == null || city == null || phonenumber == null || ccnumber == null) {
        errorsignup.innerText = 'Please enter the missing field(s).';
    }

    //full name can have only alphabets 
    if (fullname != null) {
        if (!fullname.match(fullnamechar)) {
            errorsignup.innerText = 'Please enter alphabets only.';
            return false;
        }
    }
    //username can have alphabets, numbers and underscore. No spaces.
    if (username != null) {
        if (!username.match(usernamechar)) {
            errorsignup.innerText = 'Please enter username without spaces and special characters.';
            return false;
        }
    }

    //password cant be <=8 and >=20
    if (password.length <= 8) {
        errorsignup.innerText = 'Password should be at least 8 characters long.';
        return false;
    }

    if (password.length >= 20) {
        errorsignup.innerText ='Password should be less than 20 characters.';
        return false;
    }

    //password must match pwd2
    if (password != pwd2) {
        errorsignup.innerText = 'Password does not match.'; 
        return false;
    }

    //useremail can have alphabets, numbers and special characters. No spaces.
    if (useremail != null) {
        if (!useremail.match(emailchar)) {
            errorsignup.innerText = 'Email is invalid.'; 
            return false;
        }
    }

    //dob will have age limit
    var now = new Date();
    var birthdate = userdob.split("/");
    var born = new Date(birthdate[2], birthdate[0] - 1, birthdate[1]);
    var age = get_age(born, now);
    if (age <= 18) {
        errorsignup.innerText = 'Age Limit: 18 years and older.';
        return false;
    }

    //country  
    //city 

    //phonenumber
    if (phonenumber != null) {
        if (!phonenumber.match(phonenochar)) {
            errorsignup.innerText = 'Enter numbers only.';
            return false;
        }
    }

    //ccnumber
    if (ccnumber != null) {
        if (!ccnumber.match(ccnumchar)) {
            errorsignup.innerText = 'Not a valid Amercican Express credit card number!';
            return false;
        }
    }
}


function get_age(born, now) {
    var birthday = new Date(now.getFullYear(), born.getMonth(), born.getDate());
    if (now >= birthday)
        return now.getFullYear() - born.getFullYear();
    else
        return now.getFullYear() - born.getFullYear() - 1;
}



