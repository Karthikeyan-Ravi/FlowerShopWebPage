function ValidateCardNumber() {
    var cardNumber = (document.getElementById("cardNumber"));
    var regularExp = /^(?:4[0-9]{12}(?:[0-9]{3})?)$/;
    if (!cardNumber.value.match(regularExp)) {
        cardNumber.focus();
        alert("Enter valid number");
    }
}
function ValidateSecurityCode() {
    var securityCode = (document.getElementById("securityNumber"));
    var regularExp = /^[0-9]{3}$/;
    if (!securityCode.value.match(regularExp)) {
        securityCode.focus();
        alert("Enter valid security code");
    }
}
function ValidateCardHolderName() {
    var name = (document.getElementById("cardHoldersName"));
    var regularExp = /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
    if (!name.value.match(regularExp)) {
        name.focus();
        alert("Enter valid name");
    }
}
function ValidateAddress1() {
    var address1 = (document.getElementById("address1"));
    var regularExp = /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
    if (!address1.value.match(regularExp)) {
        address1.focus();
        alert("Enter valid address");
    }
}
function ValidateAddress2() {
    var address2 = (document.getElementById("address2"));
    var regularExp = /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
    if (!address2.value.match(regularExp)) {
        address2.focus();
        alert("Enter valid address");
    }
}
function ValidateAddress3() {
    var address3 = (document.getElementById("address3"));
    var regularExp = /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
    if (!address3.value.match(regularExp)) {
        address3.focus();
        alert("Enter valid address");
    }
}
function ValidateTown() {
    var town = (document.getElementById("city"));
    var regularExp = /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
    if (!town.value.match(regularExp)) {
        town.focus();
        alert("Enter valid town or city");
    }
}
function ValidateRegion() {
    var region = (document.getElementById("region"));
    var regularExp = /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
    if (!region.value.match(regularExp)) {
        region.focus();
        alert("Enter valid region");
    }
}
function ValidatePincode() {
    var pincode = (document.getElementById("pincode"));
    var regularExp = /^[0-9]{5}(?:-[0-9]{4})?$/;
    if (!pincode.value.match(regularExp)) {
        pincode.focus();
        alert("Enter valid pincode");
    }
}
function ValidateCountry() {
    var x = document.getElementById("country").selectedIndex;
    if (x == 0)
        alert("Enter valid country");
}
function ValidateTelephone() {
    var telephone = (document.getElementById("telephone"));
    var regularExp = /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
    if (!telephone.value.match(regularExp)) {
        telephone.focus();
        alert("Enter valid telephone");
    }
}
function ValidateFax() {
    var fax = (document.getElementById("fax"));
    var regularExp = /^\+?[0-9]{6,}$/;
    if (!fax.value.match(regularExp)) {
        fax.focus();
        alert("Enter valid fax");
    }
}
function ValidateEmail() {
    var email = (document.getElementById("email"));
    var regularExp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if (!email.value.match(regularExp)) {
        email.focus();
        alert("Enter valid email");
    }
}
