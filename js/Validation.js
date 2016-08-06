function userReg() {
    var fName, lName, gender, uName, password, cpass, emailId, cNumber, DOB, add1, add2, city, district, state, pincode, eDetails, course;
    var emailExp;
        fName = document.getElementById("fName").value;
        lName = document.getElementById("lName").value;
        gender = document.getElementById("gender").value;
        uName = document.getElementById("uName").value;

        password = document.getElementById("pswd").value;
        cpass = document.getElementById("cpswd").value;
        emailId = document.getElementById("emailId").value;
        emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
        cNumber = document.getElementById("cNumber").value;
        DOB = document.getElementById("DOB").value;
        add1 = document.getElementById("add1").value;
        add2 = document.getElementById("add2").value;
        city = document.getElementById("city").value;
        district = document.getElementById("district").value;
        state = document.getElementById("state").value;
        pincode = document.getElementById("pCode").value;
        eDetails = document.getElementById("eDetails").value;
        course = document.getElementById("sCource").value;
        //alert("Hello I m Jigar");
        /*
        if(fName=="" && lName=="" && gender==0 && uName=="" && password=="" && cpass=="" && emailId=="" && cNumber=="" && DOB =="" && add1=="" && add2=="" && city=="" && district=="" && state=="" && pincode=="" && eDetails==0 && course==0)
        {
            alert( "Enter All Fields");
            return false;
        }*/

        

       if (password != cpass) {
            alert("Password are Not Match");
            form1.password.focus();
            return false;
        }

       /* if (form1.password.value != "" && form1.password.value == form1.cpass.value) {
            if(form1.password.value.length < 6){
                alert("Error:- Password Must Contain Six Character");
                form1.password.focus();
                return false;
            }
        }*/  

        

        if (fName == '') {
            alert("Enter FirstName");
            form1.fName.focus();
            return false;
        }
        if (lName == '') {
            alert("Enter Last Name");
            form1.lName.focus();
            return false;
        }
     /*  if (gender == "0") {
            alert("Select Valid Genter");
            return false;
        }*/

        if (uName == '') {
            alert("Enter UserName Name");
            form1.uName.focus();
            return false;
        }
        var Val;
        Val = /^\w+$/;
        if (!Val.test(form1.uName.value)) {
            alert("Error:- UserName Must be Contain Only Letters,Numbers, Underscores");
            //form1.uName.focus();
            return false;

        }

       /*if (password.value == uName.value) {
            alert("Password Must be diffrent from UserName.....!");
            //form1.password.focus();
            return false;
        }*/

        if (password == '') {
            alert("Enter Password");
           // form1.password.focus();
            return false;
        }
        if (cpass == '') {
            alert("Please Enter RePassword");
            //form1.cpass.focus();
            return false;
        }
        if (DOB == '') {
            alert("Please Select Birth Date");
            form1.DOB.focus();
            return false;
        }
        if (emailId == '') {
            alert("Please Enter EmailId");
            form1.emailId.focus();
            return false;
        }
        if (emailId != '') {
            if (!emailId.match(emailExp)) {
                alert("Enter Valid Email Address");

                return false;
            }
        }
        
        if (cNumber == '') {
            alert("Please Enter Contact Number");
            form1.cNumber.focus();
            return false;
        }
       /* Val = /[0-9]/;
        if (Val.test(form1.cNumber.value)) {
            alert("Error:- Contact Number Put Only Numbers");
            return false;
        }*/
        if (add1 == '') {
            alert("Please Enter Address line1 ");
            form1.add1.focus();
            return false;
        }
        if (add2 == '') {
            alert("Please Enter Address line2 ");

            form1.add2.focus();
            return false;
        }
        if (city == '') {
            alert("Please Enter City");
            form1.city.focus();
            return false;
        }
        if (district == '') {
            alert("Please Enter District");
            form1.district.focus();
            return false;
        }
        if (state == '') {
            alert("Please Enter State");
            form1.state.focus();
            return false;
        }
        if (pincode == '') {
            alert("Please Enter Pincode");
            form1.pincode.focus();
            return false;
        }
        if (Val.test(form1.pincode.value)) {
            alert("Error:- Contact Number Put Only Numbers");
            return false;
        }

        return true;

}