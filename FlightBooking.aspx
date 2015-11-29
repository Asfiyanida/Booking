<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FlightBooking.aspx.cs" Inherits="Index" %>

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
					<a href="#" class="transition-effect"><i class="fa fa-envelope-o"></i> bonvoyage@email.com</a>
				</div>
				<div class="col-md-5 col-sm-6 clear-padding search-box">
					<div class="col-md-6 col-xs-5 clear-padding">
						<form >
							<div class="input-group">
								<input type="text" name="search" class="form-control" required placeholder="Search">
								<span class="input-group-addon"><i class="fa fa-search fa-fw"></i></span>
							</div>
						</form>
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
		<div class="col-md-3 clear-padding">
			<div class="filter-head text-center">
				<h4>
                    <asp:Label ID="lblcount" runat="server" Text="0"></asp:Label> Result Found Matching Your Search.</h4>
			</div>
			<div class="filter-area">
				<div class="airline-filter filter">
					<h5><i class="fa fa-plane"></i> Search Criteria</h5>
					<ul>
						<li>&nbsp;Leaving From - 
                            <asp:Label ID="lbl_lfrom" runat="server" Text=""></asp:Label></li>
						<li>&nbsp;Leave To -
                        <asp:Label ID="lbl_lto" runat="server" Text=""></asp:Label></li>
						<li>&nbsp;Departure Date - 
                        <asp:Label ID="lblDdate" runat="server" Text=""></asp:Label></li>
						<li>&nbsp;Return Date - 
                        <asp:Label ID="lblRdate" runat="server" Text=""></asp:Label></li>
						<li>&nbsp;Adult - 
                        <asp:Label ID="lblAdult" runat="server" Text=""></asp:Label></li>
						<li>&nbsp;Child -
                        <asp:Label ID="lblchild" runat="server" Text=""></asp:Label></li>
                        <li>&nbsp;Class -
                        <asp:Label ID="lblclass" runat="server" Text=""></asp:Label></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- END: FILTER AREA -->
		
		<!-- START: INDIVIDUAL LISTING AREA -->
		<div class="col-md-9 flight-listing">
	

			<!-- END: SORT AREA -->
			<div class="clearfix"></div>
			<!-- START: FLIGHT LIST VIEW -->

            <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="flight-list-view">
				<div class="airline-logo col-md-2 text-center clear-padding">
					<img src="assets/images/airline/indigo-2x.png" alt="cruise">
					<h6>
                        <asp:Label ID="lblfname" runat="server" Text='<%#Eval("FlightName") %>'></asp:Label></h6>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-8 text-center clear-padding flight-desc">
					<div class="take-off">
						<h4><i class="fa fa-plane"></i>
                            <asp:Label ID="lblftime" runat="server" Text=' <%#Eval("Departure") %>'></asp:Label> </h4> 
						<h5><i class="fa fa-map-marker"></i> <%#Eval("Frmloc") %></h5>
					</div>
					<div class="landing">
						<h4><i class="fa fa-plane fa-rotate-90"></i>
                            <asp:Label ID="lblttime" runat="server" Text='<%#Eval("Arraival") %>'></asp:Label> </h4> 
						<h5><i class="fa fa-map-marker"></i> <%#Eval("Toloc") %></h5>
					</div>
				</div>
				<div class="col-md-2 col-sm-6 col-xs-4 clear-padding flight-desc text-center">
					<div class="duration">
						<h4><i class="fa fa-clock-o"></i>
                            <asp:Label ID="lbltime" runat="server" Text='<%#Eval("Time") %>'></asp:Label> </h4>
						<h4>1 Stop</h4>
					</div>
				</div>
				<div class="clearfix visible-sm-block visible-xs-block"></div>
				<div class="col-md-2 flight-book text-center clear-padding">
					<div class="price">
						<h4 style="color: #CC0000">
                            <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Price") %>'></asp:Label> /-</h4>Rs.
						<h5>Per Person</h5>
					</div>
                    <div class="book">
                        <asp:LinkButton ID="lnk_book" runat="server" OnClick="lnk_book_Click">Book</asp:LinkButton>
					</div>
				</div>
			</div>
            </ItemTemplate>
            </asp:Repeater>

			<div class="clearfix"></div>		
			<!-- END: FLIGHT LIST VIEW -->
			

		</div>
		<!-- END: INDIVIDUAL LISTING AREA -->
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
