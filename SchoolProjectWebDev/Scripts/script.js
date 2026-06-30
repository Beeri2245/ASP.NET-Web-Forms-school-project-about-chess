function validForm()
{
    var username = document.getElementById("username").value.trim();
    var email = document.getElementById("email").value.trim();
    var password = document.getElementById("password").value.trim();
    var phone = document.getElementById("phone").value.trim();
    var birthday = document.getElementById("birthday").value;
    var gender = document.getElementById("gender").value;

    if (username === "") {
        alert("Username is required.");
        return false;
    }

    if (username.length < 3 || username.length > 10) {
        alert("Username must be between 3 and 10 characters.");
        return false;
    }

    if (!isValidUsername(username)) {
        alert("Username can contain Hebrew letters, English letters, numbers, and underscore only.");
        return false;
    }

    if (email === "") {
        alert("Email is required.");
        return false;
    }

    if (!isValidEmail(email)) {
        alert("Please enter a valid email address.");
        return false;
    }

    if (password === "") {
        alert("Password is required.");
        return false;
    }

    if (password.length < 6 || password.length > 22) {
        alert("Password must be between 6 and 22 characters.");
        return false;
    }

    if (phone === "") {
        alert("Phone number is required.");
        return false;
    }

    if (!isValidPhone(phone)) {
        alert("Phone number must be a valid Israeli mobile number.");
        return false;
    }

    if (birthday === "") {
        alert("Birthdate is required.");
        return false;
    }

    if (!isValidBirthday(birthday)) {
        alert("Birthdate cannot be in the future.");
        return false;
    }

    if (gender === "") {
        alert("Please choose gender.");
        return false;
    }

    return true;
}

function isValidUsername(username) {
    var usernamePattern = /^[A-Za-z0-9_\u0590-\u05FF]+$/;
    return usernamePattern.test(username);
}

function isValidEmail(email) {
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email);
}

function isValidPhone(phone) {
    phone = phone.replace(/-/g, "").replace(/\s/g, "");

    var phonePattern = /^(05[0-9]{8}|\+9725[0-9]{8})$/;
    return phonePattern.test(phone);
}

function isValidBirthday(birthday) {
    var selectedDate = new Date(birthday);
    var today = new Date();

    selectedDate.setHours(0, 0, 0, 0);
    today.setHours(0, 0, 0, 0);

    return selectedDate <= today;
}