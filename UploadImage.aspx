<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadImage.aspx.cs" Inherits="UploadImage" %>

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


<link rel="stylesheet" href="css/LogReg.css" type="text/css" />

<div class="main_btm"><!-- start main_btm -->
	<div class="container" >
        <div class="main row contact-form" style="margin-left:0px;">
            <form runat="server">
           <center>
           <table cellpadding="0" cellspacing="5">
        
        <tr>
            <td colspan="2" align="center"><h2>Upload Photos</h2></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label1" runat="server" Text="">RegisterId:-</asp:Label></td>
        <td><asp:TextBox ID="rId" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="">UserName:-</asp:Label></td>
        <td><asp:TextBox ID="uName" runat="server" class="inputs" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label3" runat="server" Text="">Select File:- </asp:Label></td>
        <td><asp:FileUpload ID="FileUpload1" runat="server"  /></td>
        
        </tr>
        <tr>
            <td colspan="2" align="center">
                <br />
                 <label class="fa-btn btn-1 btn-1e" style="margin-left:2%;">
                <asp:Button  ID="Submit" runat="server" Text="Ok" onclick="Submit_Click" 
                     /></label></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><br />
                <asp:Label ID="Label8" runat="server"></asp:Label></td>
        </tr>
    </table>       
    </center> 
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