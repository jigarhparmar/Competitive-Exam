<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Competitive Exam</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />

<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- start slider -->
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all" />


	
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
			<h1><a style="text-decoration:none;" href="index.aspx">Competitive Exam</a></h1>
			
		</div>
        <div class="logo navbar-right">
			<h3>
                
                <a style="text-decoration:none;" href="LoginForm.aspx">|Login<img height="50px" src="images/login1.jpg">|</a>
                <a style="text-decoration:none;" href="RegisterForm.aspx">Register<img height="50px" src="images/register.jpg">|</a>
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
				  <li><a href="Message.aspx">Message</a></li>
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
			  <li><a href="ContactUs.aspx">Contact Us</a></li>
			 
			</ul>

		</div><!-- /.navbar-collapse -->
		    <!-- start soc_icons -->
	</nav>		
</div>
</br>
<!-- start slider -->
<script type="text/javascript" src="js/j.js"></script>
<!-- start slider -->
<link href="css/s.css" rel="stylesheet" type="text/css" media="all" />

<div id="slidy-container">
  <figure id="slidy">
    <img src="images/0.jpg" alt="0" >
    <img src="images/1.jpg" alt="1" >
    <img src="images/2.jpg"alt="2" >
    <img src="images/3.jpg" alt="3" >
    <img src="images/4.jpg" alt="4" >
    <img src="images/5.jpg" alt="5" >
    <img src="images/6.jpg" alt="6" >

  </figure>
</div>
<script type="text/javascript" src="js/j.js"></script>

<!-- end slider -->

<div class="main_btm"><!-- start main_btm -->
	<div class="container">
		
				<!----start-img-cursual---->
					<div id="owl-demo" class="owl-carousel text-center">
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/rel.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#"> Relway</a></h4>
								<p>
									Lorem ipsum dolor amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua.
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/upsc.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">UPSC</a></h4>
								<p>
									Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/ssc.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">SSC</a></h4>
								<p>
									On the other hand, we denounce with righteous indignation and dislike men who are so beguiled  pleasure of the moment,
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/rel1.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">Indian Relway</a></h4>
								<p>
									Lorem ipsum dolor amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt dolore magna aliqua.
								</p>
							</div>
						</div>
						<div class="item">
							<div class="cau_left">
								<img class="lazyOwl" data-src="images/lic.jpg" alt="Lazy Owl Image">
							</div>
							<div class="cau_left">
								<h4><a href="#">LIC</a></h4>
								<p>
									Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,
								</p>
							</div>
						</div>
						</div>
						
					</div>
					<!----//End-img-cursual---->
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