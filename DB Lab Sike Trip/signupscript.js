var errorsignup = document.getElementById('signUpError1');
var usernamechar = /^[a-zA-Z0-9._][a-zA-Z]+[0-9]*$/;
/*
 [a-zA-Z0-9_] to match alphanumerics and the underscore
[a-zA-Z]+ to have at least one letter
[0-9]* to match zero to any occurrence of the given numbers range

*/
var fullnamechar = /^[a-zA-Z]/;
var emailchar = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
var phonenochar = /^\d{11}$/;
//var ccnumchar = /^(?:3[47][0-9]{13})$/;
var ccnumchar = /^\d{13}$/;
errorsignup.hidden = true;

function validate() {

    var fullname = document.getElementById('HomeContent_signUpFullName').value;
    var username = document.getElementById('HomeContent_signUpUsername').value;
    var password = document.getElementById('HomeContent_signUpPassword').value;
    var pwd2 = document.getElementById('HomeContent_signUpConfirmPassword').value;
    var useremail = document.getElementById('HomeContent_signUpEmail').value;
    var userdob = document.getElementById('HomeContent_dob').value;
    var country = document.getElementById('HomeContent_signUpCountry').value;
    var city = document.getElementById('HomeContent_signUpCity').value;
    var phonenumber = document.getElementById('HomeContent_signUpPhoneNumber').value;
    var ccnumber = document.getElementById('HomeContent_signUpCreditCardNumber').value;

   

    errorsignup.hidden = false;
    
    if (fullname == "" || username == "" || password == "" || pwd2 == "" || useremail == "" || country == "" || city == "" || phonenumber == "" || ccnumber == "") {
        errorsignup.innerText = 'Please enter the missing field(s).';
        return false;
    }

    //full name can have only alphabets 
    if (fullname != "") {
        if (!fullname.match(fullnamechar)) {
            errorsignup.innerText = 'Please enter alphabets only in your full name.';
            return false;
        }
    }
    //username can have alphabets, numbers and underscore. No spaces.
    if (username != "") {
        if (!username.match(usernamechar)) {
            errorsignup.innerText = 'Please enter username without spaces and special characters.';
            return false;
        }
    }

    //useremail can have alphabets, numbers and special characters. No spaces.
    if (useremail != "") {
        if (!useremail.match(emailchar)) {
            errorsignup.innerText = 'Email is invalid.';
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
    if (country != "") {
        if (!country.match(fullnamechar)) {
            errorsignup.innerText = 'Please enter alphabets only in your country.';
            return false;
        }
    }
    //city 
    if (city != "") {
        if (!city.match(fullnamechar)) {
            errorsignup.innerText = 'Please enter alphabets only in your city.';
            return false;
        }
    }
    //phonenumber
    if (phonenumber != "") {
        if (!phonenumber.match(phonenochar)) {
            errorsignup.innerText = 'Enter 11-digit number only .';
            return false;
        }
    }

    //ccnumber
    if (ccnumber != "") {
        if (!ccnumber.match(ccnumchar)) {
            errorsignup.innerText = 'Not a valid Visa credit card number!';
            return false;
        }
    }

    return true;
}


function get_age(born, now) {
    var birthday = new Date(now.getFullYear(), born.getMonth(), born.getDate());
    if (now >= birthday)
        return now.getFullYear() - born.getFullYear();
    else
        return now.getFullYear() - born.getFullYear() - 1;
}



