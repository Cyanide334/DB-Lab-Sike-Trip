var errorlogin = document.getElementById('loginerror');
var namechar = /^([a - zA - Z0 - 9, _])/;
errorlogin.hidden = true;

function Something() {
    var name = document.getElementById('HomeContent_username').value
    var password = document.getElementById('HomeContent_password').value
   
    errorlogin.hidden= false;

    if (name == '' && password.length == '') {
        errorlogin.innerText ="Please enter username and password.";
        return false;
    }

    if (name.value == '' || name.value == null) {
        errorlogin.innerText ='Please enter username.';
        return false;
    }

    if (name != null) {
        if (!name.match(namechar)) {
            errorlogin.innerText = 'Please enter username without spaces and special characters.';
            return false;
        }
    }

    if (password.value.length == '') {
        errorlogin.innerText ='Password cannot be blank.';
        return false;
    }

}


//function validate() {
//    var name = document.getElementById('HomeContent_username').value;
//    var password = document.getElementById('HomeContent_password').value;
    
//    if (name == '' && password.length == '') {
//        alert("Please Enter Username and Password");
//        return false;
//    }

//    if (name == null || name == '') {
//        alert("Name can't be blank");
//        return false;
//    }

//    if (password.length == '') {
//        alert("Password must not be blank.");
//        return false;
//    }

//    if (password.length <= 8) {
//        alert("Password should be at least 8 characters long.");
//        return false;
//    }

//    if (password.length >= 20) {
//        alert("Password should be less than 20 characters.");
//        return false;
//    }

//}


  