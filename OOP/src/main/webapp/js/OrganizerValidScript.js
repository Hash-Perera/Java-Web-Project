
//first name validation
function myfunction1(){

    var firstName = document.getElementById("firstName").value ;
    var firstNameMsg =  document.getElementById("firstNameMsg");



    if(firstName.length == 0 ){
        
        firstNameMsg.innerHTML= "Name Required";
        return false;

    }

    if(!firstName.match(/^[a-zA-Z\s]*$/)){
        firstNameMsg.innerHTML= "Invalid Format";
        return false;
    }

   
    firstNameMsg.innerHTML= "";
    return true;
          
}


//last name validation
function myfunction2(){

    var lastName = document.getElementById("lastName").value ;
    var lastNameMsg =  document.getElementById("lastNameMsg");



    if(lastName.length == 0 ){
        
        lastNameMsg.innerHTML= "Name Required";
        return false;

    }

    if(!lastName.match(/^[a-zA-Z\s]*$/)){
        lastNameMsg.innerHTML= "Invalid Format";
        return false;
    }

   
    lastNameMsg.innerHTML= "";
    return true;
          
}

//username validation
function myfunction3(){

    var username = document.getElementById("userName").value;
    var usernameMsg = document.getElementById("usernameMsg");

    if(username.length == 0 ){
        
        usernameMsg.innerHTML= "User Name Required";
        return false;

    }

    usernameMsg.innerHTML= "";
    /*return true;*/

}

//email validation
function myfunction4(){

    var email = document.getElementById("email").value ;
    var emailMsg =  document.getElementById("emailmsg");



    if(email.length == 0 ){
        
        emailMsg.innerHTML= "Email Required";
        /*return false;*/

    }

    if(!email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)){
        emailMsg.innerHTML= "Invalid Format";
        return false;
    }

   
    emailMsg.innerHTML= "";
    return true;
          
}

//password validation
function checkpassword(){

    var password = document.getElementById("password").value ;
    var passwordMsg =  document.getElementById("passwordmsg");



    if(password.length == 0 ){
        
        passwordMsg.innerHTML= "Password Required";
        return false;

    }

    if(!password.match(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/)){
        passwordMsg.innerHTML= "At least one numeric, uppercase and lowercase letter required";
        return false;
    }

    passwordMsg.innerHTML= "";
    return true;
          
}

//confirm password
function confirmPassword(){

    var password = document.getElementById("password").value;
    var confirmpassword = document.getElementById("confirmpassword").value;
    var confirmpasswordmsg = document.getElementById("confirmpasswordmsg");

    if(password != confirmpassword)
    {
        confirmpasswordmsg.innerHTML= "Password does not matching";
        return false;
    }

    if(confirmpassword.length == 0 ){
        
        confirmpasswordmsg.innerHTML= "Confirm your password";
        return false;

    }

    confirmpasswordmsg.innerHTML= "";
    return true;
}









//eneble button to accpt privacy policy
function enebleButton()
{
    if(document.getElementById("chekBox").checked)
    {
        document.getElementById("submitbtn").disabled = false;
    }

    else{
        document.getElementById("submitbtn").disabled = true;
    }
}