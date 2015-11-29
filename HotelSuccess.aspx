<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelSuccess.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="LimpidThemes">
	
	<title>Booking System</title>
	
    <!-- STYLES -->
	<link href="assets/css/animate.min.css" rel="stylesheet">
	<link href="assets/css/bootstrap-select.min.css" rel="stylesheet">
	<link href="assets/css/owl.carousel.css" rel="stylesheet">
	<link href="assets/css/owl-carousel-theme.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="assets/css/flexslider.css" rel="stylesheet" media="screen">
	<link href="assets/css/style.css" rel="stylesheet" media="screen">
	<!-- LIGHT -->
	<link rel="stylesheet" type="text/css" href="assets/css/color/light-green.css" id="select-style">
	<link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	
	<link href="assets/css/light.css" rel="stylesheet" media="screen">
	
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700,600' rel='stylesheet' type='text/css'>

</head>
<body>
<form id="form1" runat = "server">
<!-- BEGIN: PRELOADER -->
<div id="loader">
	<div class="loading-animation">
		<span><i class="fa fa-plane"></i></span>
		<span><i class="fa fa-bed"></i></span>
		<span><i class="fa fa-ship"></i></span>
		<span><i class="fa fa-suitcase"></i></span>
	</div>
</div>
<!-- END: PRELOADER -->

<!-- BEGIN: COLOR SWITCHER -->

<!-- END: COLOR SWITCHER -->

<!-- BEGIN: SITE-WRAPPER -->
<div class="site-wrapper">
	<div class="row transparent-menu-top">
		<div class="container clear-padding">
			<div class="navbar-contact">
				<div class="col-md-7 col-sm-6 clear-padding">
					<a href="#" class="transition-effect"><i class="fa fa-phone"></i> (+91) 1234567890</a>
					<a href="#" class="transition-effect"><i class="fa fa-envelope-o"></i> support@email.com</a>
				</div>
				<div class="col-md-5 col-sm-6 clear-padding search-box">
					<div class="col-md-6 col-xs-5 clear-padding">
							<div class="input-group">
								<input type="text" name="search" class="form-control"  placeholder="Search">
								<span class="input-group-addon"><i class="fa fa-search fa-fw"></i></span>
							</div>
					</div>
					<div class="col-md-6 col-xs-7 clear-padding user-logged">
						<a href="#" class="transition-effect">
							<img src="assets/images/user.jpg" alt="cruise">
							Hi, Guest
						</a>
						<a href="#" class="transition-effect">
							<i class="fa fa-sign-out"></i>Sign In
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	</div>
	<!-- BEGIN: SEARCH SECTION -->
	
    <div class="row">
	<div class="container">
		<!-- START: FILTER AREA -->
		
		<!-- END: FILTER AREA -->
		
	<div class="row booking-detail">
		<div class="container clear-padding">
			<div class="tab-content">
				<div id="review-booking" class="tab-pane fade in active">
					<div class="col-md-8 col-sm-8">
						<div class="booking-summary-v2">
							<div class="col-md-4 col-sm-6 clear-padding">
                                <asp:Image ID="Image1" runat="server" />
							</div>
							<div class="col-md-6 col-sm-6">
								<h4>
                                    <asp:Label ID="lblhname" runat="server" Text=""></asp:Label> <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></h4>
								<div class="col-md-6 col-sm-6 col-xs-6 clear-padding">
									<p>Check In</p>
									<p><i class="fa fa-calendar"></i> 
                                        <asp:Label ID="lblchkin" runat="server" Text=""></asp:Label></p>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-6 clear-padding">
									<p>Check Out</p>
									<p><i class="fa fa-calendar"></i><asp:Label ID="lblchkout" runat="server" Text=""></asp:Label></p>
								</div>
								<div class="clearfix"></div>
								<p><span>Guest(s)</span> - 
                                    <asp:Label ID="lbladult" runat="server" Text=""></asp:Label> Adult</p>
								<p><span>Room Type</span> - Deluxe Suite</p>
							</div>
							<div class="clearfix visible-sm-block"></div>
							</div>
						<div class="login-box">
							<h3>Booking Confirmation</h3>
							<div class="booking-form">
								<div class="col-md-6 col-sm-6">
										<label style="color: #CC0000">Thank you. Your Booking has been Confirmed.</label>&nbsp;

								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 booking-sidebar">
						<div class="sidebar-item">
							<h4><i class="fa fa-bookmark"></i>Fare Details</h4>
							<div class="sidebar-body">
								<table class="table">
									<tr>
										<td>Base Fare</td>
										<td>
                                            <asp:Label ID="lblprice" runat="server" Text=""></asp:Label></td>
									</tr>

									<tr>
										<td>Service Fee</td>
										<td>
                                            <asp:Label ID="lblsfee" runat="server" Text="120"></asp:Label></td>
									</tr>
									<tr>
										<td>Hotel Taxes</td>
										<td>
                                            <asp:Label ID="lblafee" runat="server" Text="80"></asp:Label></td>
									</tr>
									<tr>
										<td>You Pay</td>
										<td class="total">
                                            <asp:Label ID="lbltotal" runat="server" Text=""></asp:Label></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="sidebar-item contact-box">
							<h4><i class="fa fa-phone"></i>Need Help?</h4>
							<div class="sidebar-body text-center">
								<p>Need Help? Call us or drop a message. Our agents will be in touch shortly.</p>
								<h2>+91 1234567890</h2>
							</div>
						</div>
					</div>
				</div>
				
				</div>
			</div>
		</div>
	</div>

	<!-- END: SEARCH SECTION -->

<!-- START: FOOTER -->
<section id="footer">
	<footer>
		<div class="main-footer-nav row">
			<div class="container clear-padding">
				<div class="col-md-6 col-sm-6">
					<p>Copyright &copy; 2015. All Rights Reserved.</p>
				</div>
				<div class="col-md-6 col-sm-6">
					<ul>
						<li><a href="#">FLIGHTS</a></li>
                        <li><a href="#">HOTELS</a></li>
						<li><a href="#">CARS</a></li>
					</ul>
				</div>
				<div class="go-up">
					<a href="#"><i class="fa fa-arrow-up"></i></a>
				</div>
			</div>
		</div>
	</footer>
</section>
<!-- END: FOOTER -->
</div>
<!-- END: SITE-WRAPPER -->
<!-- Load Scripts -->
<script src="assets/js/respond.js"></script>
<script src="assets/js/jquery.js"></script>
<script src="assets/plugins/owl.carousel.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/bootstrap-select.min.js"></script>
<script src="assets/plugins/wow.min.js"></script>
<%--<script type="text/javascript" src="assets/plugins/supersized.3.1.3.min.js"></script>--%>
<script src="assets/js/js.js"></script>
<script type="text/javascript">
    /* SLIDER SETTINGS */
    jQuery(function ($) {
        "use strict";
        $.supersized({

            //Functionality
            slideshow: 1, 	//Slideshow on/off
            autoplay: 1, 	//Slideshow starts playing automatically
            start_slide: 1, 	//Start slide (0 is random)
            random: 0, 	//Randomize slide order (Ignores start slide)
            slide_interval: 10000, //Length between transitions
            transition: 1, 		//0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
            transition_speed: 500, //Speed of transition
            new_window: 1, 	//Image links open in new window/tab
            pause_hover: 0, 	//Pause slideshow on hover
            keyboard_nav: 0, 	//Keyboard navigation on/off
            performance: 1, 	//0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
            image_protect: 1, 	//Disables image dragging and right click with Javascript

            //Size & Position
            min_width: 0, 	//Min width allowed (in pixels)
            min_height: 0, 	//Min height allowed (in pixels)
            vertical_center: 1, 	//Vertically center background
            horizontal_center: 1, 	//Horizontally center background
            fit_portrait: 1, 	//Portrait images will not exceed browser height
            fit_landscape: 0, 	//Landscape images will not exceed browser width

            //Components
            navigation: 1, 	//Slideshow controls on/off
            thumbnail_navigation: 1, 	//Thumbnail navigation
            slide_counter: 1, 	//Display slide numbers
            slide_captions: 1, 	//Slide caption (Pull from "title" in slides array)
            slides: [		//Slideshow Images
														{image: 'assets/images/hotel-slide.jpg', title: 'Slide 1' },
														{ image: 'assets/images/slide16.jpg', title: 'Slide 2' },
														{ image: 'assets/images/holiday-slide3.jpg', title: 'Slide 3' }
												]

        });
    });
		    
</script>
</form>
</body>
</html>
