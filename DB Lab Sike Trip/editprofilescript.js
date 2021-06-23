var profileerror = document.getElementById('HomeContent_EditProfileError');
var usernamechar = /^[a-zA-Z0-9._][a-zA-Z]+[0-9]*$/;
var profilenamechar = /^[a-zA-Z]/;
var emailchar = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
var phonenochar = /^\d{11}$/;
var ccnumchar = /^\d{13}$/;
profileerror.hidden = true;

function validate()
{
    var profilename = document.getElementById('HomeContent_editProfileName').value;
    var username = document.getElementById('HomeContent_editProfileUsernameForm').value;
    var fpassword = document.getElementById('HomeContent_editProfilePassword').value;
    var confirmpassword = document.getElementById('HomeContent_editProfileConfirmPassword').value;
    var email = document.getElementById('HomeContent_editProfileEmailForm').value;
    var city = document.getElementById('HomeContent_editProfileCity').value;
    var country = document.getElementById('HomeContent_editProfileCountry').value;
    var phoneno = document.getElementById('HomeContent_editProfilePhone').value;
    var ccnum = document.getElementById('HomeContent_editProfileCredit').value;
    
    profileerror.hidden = false;

    //full name can have only alphabets 
    if (profilename != "") {
        if (!profilename.match(profilenamechar)) {
            profileerror.innerText = 'Please enter alphabets only in your full name.';
            return false;
        }
    }
    //username can have alphabets, numbers and underscore. No spaces.
    if (username != "") {
        if (!username.match(usernamechar)) {
            profileerror.innerText = 'Please enter username without spaces and special characters.';
            return false;
        }
    }

    //useremail can have alphabets, numbers and special characters. No spaces.
    if (email != "") {
        if (!email.match(emailchar)) {
            profileerror.innerText = 'Email is invalid.';
            return false;
        }
    }

    //password cant be <=8 and >=20
    if (fpassword != "") {
        if (fpassword.length <= 8) {
            profileerror.innerText = 'Password should be at least 8 characters long.';
            return false;
        }

        if (fpassword.length >= 20) {
            profileerror.innerText = 'Password should be less than 20 characters.';
            return false;
        }

        //password must match pwd2
        if (fpassword != confirmpassword) {
            profileerror.innerText = 'Password does not match.';
            return false;
        }
    }
    //country 
    if (country != "") {
        if (!country.match(profilenamechar)) {
            profileerror.innerText = 'Please enter alphabets only in your country.';
            return false;
        }
    }
    //city 
    if (city != "") {
        if (!city.match(profilenamechar)) {
            profileerror.innerText = 'Please enter alphabets only in your city.';
            return false;
        }
    }
    //phonenumber
    if (phoneno != "") {
        if (!phoneno.match(phonenochar)) {
            profileerror.innerText = 'Enter 11-digit number only .';
            return false;
        }
    }

    //ccnumber
    if (ccnum != "") {
        if (!ccnum.match(ccnumchar)) {
            profileerror.innerText = 'Not a valid Visa credit card number!';
            return false;
        }
    }

    return true;
}