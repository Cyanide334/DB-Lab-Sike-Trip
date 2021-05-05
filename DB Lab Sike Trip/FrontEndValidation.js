


function validate() {
    var name = document.getElementById("username").value;
    var password = document.getElementById("HomeContent_loginPassword").value;
    if (name == null || name == "") {
        alert("Name can't be blank");
        return false;
    }
    if (password.length < 6) {
        alert("Password must be at least 6 characters long.");
        return false;
    }
    return true;
}