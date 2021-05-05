var errorlogin = document.getElementById('loginerror');
errorlogin.hidden = true;

function validate() {
    var name = document.getElementById('HomeContent_logInUsername').value
    var password = document.getElementById('HomeContent_logInPassword').value

    errorlogin.hidden = false;

    if (name == "" && password == "") {
        errorlogin.innerText = "Please enter username and password.";
        return false;
    }

    if (name == "") {
        errorlogin.innerText = 'Please enter username.';
        return false;
    }

    if (password == "") {
        errorlogin.innerText = 'Password cannot be blank.';
        return false;
    }
    return true;

}