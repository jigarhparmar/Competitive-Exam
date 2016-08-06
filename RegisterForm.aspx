<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterForm.aspx.cs" Inherits="RegisterForm" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Competitive Exam</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />

<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- start slider -->
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript" src="js/Validation.js"></script>
	
<!-- Owl Carousel Assets -->
<link href="css/owl.carousel.css" rel="stylesheet">
<script src="js/owl.carousel.js"></script>
		<script>
			$(document).ready(function() {

				$("#owl-demo").owlCarousel({
					items : 4,
					lazyLoad : true,
					autoPlay : true,
					navigation : true,
					navigationText : ["", ""],
					rewindNav : false,
					scrollPerPage : false,
					pagination : false,
					paginationNumbers : false,
				});

			});
		</script>
		<!-- //Owl Carousel Assets -->
<!----font-Awesome----->
   	
<!----font-Awesome----->
</head>
<body>
<div class="header_bg">
<div class="container">
	<div class="row header">
		<div class="logo navbar-left">
			<h1><a href="index.aspx">Competive Exam</a></h1>
		</div>
        <div class="logo navbar-right">
			<h3>  
                <a style="text-decoration:none;" href="LoginForm.aspx">|Login<img height="50px" src="images/login1.jpg"></img>|</a>
                <a style="text-decoration:none;" href="RegisterForm.aspx">Register<img height="50px" src="images/register.jpg"></img>|</a>
            </h3>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>
</div>
<div class="container">
	<nav id="primary_nav_wrap"  role="navigation">
		 <div id="menuDiv" class="row" >
		 <ul>
			  <li class="current-menu-item"><a href="Index.aspx">Home</a></li>
			  <li><a href="AboutUs.aspx">About Us</a> </li>
			  <li><a href="#">Directores Message</a>
				<ul>
				  <li><a href="#">Message</a></li>
				  <li><a href="#">Inspiration Message</a></li>
				</ul>
			  </li>
			  <li><a href="#">Guidance Programe</a>
				<ul>
				  <li class="dir"><a href="#">Admission Procedure</a>
					<ul>
					  <li><a href="#">GuideLine For Online Registration</a></li>
					</ul>
				  </li>
				  
				  <li class="dir"><a href="#">Fees Stucture</a></li>
				</ul>
			  </li>
			  <li><a href="#">Cources</a>
				<ul>
				  <li><a href="#">Civil services</a></li>
				  <li><a href="#">SBI PO/Cleark</a></li>
				  <li><a href="#">IBPS</a></li>
				  <li><a href="#">GPSC</a></li>
				  <li><a href="#">Railway</a></li>
				  <li><a href="#">SSC</a></li>
				</ul>
			  </li>
			  <li><a href="#">Batches</a></li>
			  <li><a href="#">Success speaks</a>
				<ul>
				  <li><a href="#">Our Results</a></li>
				  <li><a href="#">Students Feedback</a></li>
				</ul>
			  </li>
			  <li><a href="#">Contact Us</a></li>
			 
			</ul>

		</div><!-- /.navbar-collapse -->
		    <!-- start soc_icons -->
	</nav>		
</div>
</br>


<link rel="stylesheet" href="css/LogReg.css" type="text/css">

<div class="main_btm"><!-- start main_btm -->
	<div class="container" >
    <div class="main row" style="margin-left:0px;">
        <form id="form1" runat="server">
        <div id="FormMain">
			<div id="titleDiv">
				REGESTER
			</div>
			<div id="ContainDiv" class="contact-form">
               <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="fName" runat="server" class="reg" placeholder="FIRST NAME"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="fName" runat="server" ErrorMessage="Enter The FirstName">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="lName" runat="server" class="reg" placeholder="LAST NAME"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="lName" ErrorMessage="Enter the lastName">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:DropDownList ID="gender" runat="server" class="reg"  Width="100px">
                                <asp:ListItem Value="0">Gender</asp:ListItem>
                                <asp:ListItem Value="1" >Male</asp:ListItem>
                                <asp:ListItem Value="2">Female</asp:ListItem>
                                </asp:DropDownList>
                         </td>
                        <td>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"  InitialValue="0"  ControlToValidate="gender" ErrorMessage="Please Select Gender 'male' or 'Female' ">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <div style="margin-left:25px;"><asp:Label ID="Label1" runat="server"></asp:Label></div>
                            <asp:TextBox ID="uName" runat="server" class="reg" placeholder="USER NAME" 
                                AutoPostBack="True" CausesValidation="True" ontextchanged="uName_TextChanged"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ControlToValidate="uName" ErrorMessage="Enter User Name">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="pswd" runat="server" class="reg" placeholder="PASSWORD" 
                            TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ControlToValidate="pswd" ErrorMessage="Enter Password">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                             <asp:TextBox ID="cpswd" runat="server" class="reg" placeholder="RETYPE PASSWORD" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pswd" ControlToValidate="cpswd"  ErrorMessage="Password dose not Match." ForeColor="Red">*</asp:CompareValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ControlToValidate="cpswd" ErrorMessage="Enter Retype Password">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="emailId" runat="server" class="reg" placeholder="EMAIL ID"></asp:TextBox>
                         </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ControlToValidate="emailId" ErrorMessage="Enter Email Address">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="emailId" ForeColor="Red" ErrorMessage="Please Enter Valid Email Address">*</asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="cNumber" runat="server" class="reg" placeholder="CONTACT NUMBER"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ForeColor="Red" ControlToValidate="cNumber" ErrorMessage="Please Enter Mobile Number">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="cNumber" validationexpression="^[0-9]{10}$" errormessage="Please enter a 10 digit number!"  ForeColor="Red" >*</asp:RegularExpressionValidator>
                        </td>
                        <td>
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                            <asp:TextBox ID="DOB" runat="server" class="reg" placeholder="DATE OF BIRTH"></asp:TextBox>
                            <asp:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" 
                                            Enabled="True" TargetControlID="DOB"></asp:CalendarExtender>
                        </td>
                        <td>
                            <asp:CustomValidator ID="CustomValidator1" runat="server" ForeColor="Red" ControlToValidate="DOB" ErrorMessage="Select Valid Date">*</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="add1" runat="server" class="reg" placeholder="ADDRESS LINE 1"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ControlToValidate="add1" ErrorMessage="Enter Address line 1">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="add2" runat="server" class="reg" placeholder="ADDRESS LINE 2"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red" ControlToValidate="add2" ErrorMessage="Enter Address line 2">*</asp:RequiredFieldValidator>
                        </td>
                        <td><asp:TextBox ID="city" runat="server" class="reg" placeholder="CITY"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ForeColor="Red" ControlToValidate="city" ErrorMessage="Enter City Name">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="district" runat="server" class="reg" placeholder="DISTRICT"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ForeColor="Red" ControlToValidate="district" ErrorMessage="Enter District Name">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="state" runat="server" class="reg" placeholder="STATE"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ForeColor="Red" ControlToValidate="state" ErrorMessage="Enter State Name">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="pCode" runat="server" class="reg" placeholder="PINCODE"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ControlToValidate="pCode" ErrorMessage="Enter City Pincode">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" id="RegularExpressionValidator1" controltovalidate="pCode" validationexpression="^[0-9]{6}$" errormessage="Please enter a 6 digit Pin Code!"  ForeColor="Red" >*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                               <asp:DropDownList ID="eDetails" runat="server" class="reg"  Width="290px">
                                <asp:ListItem Value="0">EDUCATION DETAILS</asp:ListItem>
                                <asp:ListItem Value="1">12 PASS</asp:ListItem>
                                <asp:ListItem Value="2">ANy GRADUATE</asp:ListItem>
                                <asp:ListItem Value="3">ANY PG</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ForeColor="Red" InitialValue="0"  ControlToValidate="eDetails" ErrorMessage="Please Select Education Details">*</asp:RequiredFieldValidator>
                        </td>
                        <td colspan="2">
                             <asp:DropDownList ID="sCource" runat="server" class="reg"  Width="290px" 
                                AutoPostBack="True">
                             </asp:DropDownList>
                        </td>
                        
                    </tr>
                </table>

                    <label class="fa-btn btn-1 btn-1e" style="margin-left:40%;">
                <asp:Button  ID="Button1" runat="server" Text="SUBMIT" 
                    onclick="Button1_Click" /></label> 
                    
                    
    
			</div>
            <div>
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" Font-Size="Medium" runat="server" />
            </div>
		</div>
        </form>
        </div>
    </div>
</div>
<div class="footer_bg"><!-- start footer -->
	<div class="container">
		<div class="row  footer">
			<div class="copy text-left">
				<p class="link">
                <a href="Index.aspx"><img src="images/h.jpg" height="30px" /></a>&nbsp;&nbsp;
                <a href="#"><img src="images/fb.jpg" height="30px" /></a>&nbsp;&nbsp;
                        <a href="#"><img src="images/twiter.jpg" height="30px" /></a></p>
                <div class="link copy text-center" style="font-size:15px; color:#3B3B3B; margin-top:-50px;">
                    <a s href="AboutUs.aspx" >| About Us |</a>
                    <a href="ContactUs.aspx">Contact Us |</a>
                    <a href="gpsc.aspx">GPSC |</a>
                    <a href="ibps.aspx">IBPS |</a>
                    <a href="sbi.aspx">SBI |</a>
                </div>
                <div class="link copy text-right" style="margin-top:0px;"><a>&copy;Copy Right </a></div>
			</div>
            
		</div>
	</div>
</div>

</body>
</html>

