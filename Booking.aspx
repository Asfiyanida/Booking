<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Index" %>

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
<body class="load-full-screen">
<form id="form1" runat = "server">
<!-- BEGIN: PRELOADER -->
<div id="loader" class="load-full-screen">
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
							<div class="input-group">
								<input type="text" name="search" class="form-control" placeholder="Search">
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
<%--	<div class="row transparent-menu">
		<div class="container clear-padding">
			<!-- BEGIN: HEADER -->
			<div class="navbar-wrapper">
				<div class="navbar navbar-default" role="navigation">
					<!-- BEGIN: NAV-CONTAINER -->
					
						<!-- END: NAVIGATION -->
					</div>
					<!--END: NAV-CONTAINER -->
				</div>
			</div>
			<!-- END: HEADER -->
		</div>--%>
	</div>
	<!-- BEGIN: SEARCH SECTION -->
	<div class="row full-width-search">
		<div class="container clear-padding">
			<div class="col-md-8 search-section tran-search-box">
				<div role="tabpanel">
					<!-- BEGIN: CATEGORY TAB -->
					<ul class="nav nav-tabs search-top" role="tablist" id="searchTab">
						<li role="presentation" class="active text-center">
							<a href="#flight" aria-controls="flight" role="tab" data-toggle="tab">
								<i class="fa fa-plane"></i> 
								<span>FLIGHTS</SPAN>
							</a>
						</li>
						<li role="presentation" class="text-center">
							<a href="#hotel" aria-controls="hotel" role="tab" data-toggle="tab">
								<i class="fa fa-bed"></i> 
								<span>HOTELS</span>
							</a>
						</li>
						<li role="presentation" class="text-center">
							<a href="#taxi" aria-controls="taxi" role="tab" data-toggle="tab">
								<i class="fa fa-cab"></i>
								<span>CAR</span>
							</a>
						</li>
					</ul>
					<!-- END: CATEGORY TAB -->

					<!-- BEGIN: TAB PANELS -->
					<div class="tab-content">
							<!-- BEGIN: FLIGHT SEARCH -->
							<div role="tabpanel" class="tab-pane active" id="flight">

									<div class="col-md-12 product-search-title">Book Flight Tickets</div>
									<div class="col-md-12 search-col-padding">
                                        <asp:RadioButtonList ID="rdoType" runat="server" RepeatDirection="Horizontal" 
                                            Height="20px" Width="262px">
                                            <asp:ListItem Value="0" Selected="True">One Way</asp:ListItem>
                                            <asp:ListItem Value="1">Round Trip</asp:ListItem>
                                        </asp:RadioButtonList>
										<%--<label class="radio-inline">
											<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="One Way"> One Way
										</label>
										<label class="radio-inline">
											<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="Round Trip"> Round Trip
										</label>--%>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Leaving From</label>
										<div class="input-group">
                                            <asp:DropDownList ID="txtDeparture" runat="server" CssClass="form-control" required placeholder="E.g. Bangalore">
                                             <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Paris</asp:ListItem>
                                            <asp:ListItem Value="2">Canberra</asp:ListItem>
                                            <asp:ListItem Value="3">London</asp:ListItem>
                                            <asp:ListItem Value="4">Sydney</asp:ListItem>
                                            <asp:ListItem Value="5">Newyork</asp:ListItem>
                                            <asp:ListItem Value="6">Rio de janerio</asp:ListItem>
                                            <asp:ListItem Value="7">Bahamas</asp:ListItem>
<asp:ListItem Value="8">Las vegas</asp:ListItem>
<asp:ListItem Value="9">New Delhi</asp:ListItem>
<asp:ListItem Value="10">Mumbai</asp:ListItem>
<asp:ListItem Value="11">Bangalore</asp:ListItem>
<asp:ListItem Value="12">Chennai</asp:ListItem>
                                            </asp:DropDownList>
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Leaving To</label>
										<div class="input-group">
											<asp:DropDownList ID="txtArraival" runat="server" CssClass="form-control" required placeholder="E.g. Paris">
                                            <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem Value="1">Paris</asp:ListItem>
                                            <asp:ListItem Value="2">Canberra</asp:ListItem>
                                            <asp:ListItem Value="3">London</asp:ListItem>
                                            <asp:ListItem Value="4">Sydney</asp:ListItem>
                                            <asp:ListItem Value="5">Newyork</asp:ListItem>
                                            <asp:ListItem Value="6">Rio de janerio</asp:ListItem>
                                            <asp:ListItem Value="7">Bahamas</asp:ListItem>
<asp:ListItem Value="8">Las vegas</asp:ListItem>
<asp:ListItem Value="9">New Delhi</asp:ListItem>
<asp:ListItem Value="10">Mumbai</asp:ListItem>
<asp:ListItem Value="11">Bangalore</asp:ListItem>
<asp:ListItem Value="12">Chennai</asp:ListItem>
                                            </asp:DropDownList>
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Departure</label>
										<div class="input-group">
                                        <asp:TextBox ID="txtFromdate" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Return</label>
										<div class="input-group">
											<asp:TextBox ID="txtTodate" runat="server" CssClass="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-4 col-sm-4 search-col-padding">
										<label>Adult</label><br>
                                        <asp:TextBox ID="txtAdult" runat="server" Text="1" CssClass="form-control quantity-padding" ></asp:TextBox>
									</div>
									<div class="col-md-4 col-sm-4 search-col-padding">
										<label>Child</label><br>
                                        <asp:TextBox ID="txtChild" runat="server" Text="1" CssClass="form-control quantity-padding" ></asp:TextBox>
									</div>
									<div class="col-md-4 col-sm-4 search-col-padding">
                                    <div class="input-group">
                                    <label>Class</label><br>
                                        <asp:DropDownList ID="ddl_Type" CssClass="form-control"  runat="server">
                                            <asp:ListItem Value="0">Business</asp:ListItem>
                                            <asp:ListItem Value="1">Economy</asp:ListItem>
                                        </asp:DropDownList>
                                        </div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-12 search-col-padding">
                                        <asp:Button ID="BtnSearchFlight" class="search-button btn transition-effect" 
                                            runat="server" Text="Search Flights" onclick="BtnSearchFlight_Click" />
									</div>
									<div class="clearfix"></div>

							</div>
							<!-- END: FLIGHT SEARCH -->
							
							<!-- START: HOTEL SEARCH -->
							<div role="tabpanel" class="tab-pane" id="hotel">
									<div class="col-md-12 product-search-title">Book Hotel Rooms</div>
									<div class="col-md-12 search-col-padding">
										<label>I Want To Go</label>
										<div class="input-group">
                                            <asp:TextBox ID="lblhloc" runat="server" class="form-control"  placeholder="E.g. Las vegas"></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Check - In</label>
										<div class="input-group">
                                        <asp:TextBox ID="lblchkin" runat="server" class="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Check - Out</label>
										<div class="input-group">
                                        <asp:TextBox ID="lblchkout" runat="server" class="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-3 col-sm-3 search-col-padding">
										<label>Adult</label><br />
                                        <asp:TextBox ID="lblhadult" runat="server" class="form-control quantity-padding"></asp:TextBox>
									</div>
									<div class="col-md-3 col-sm-3 search-col-padding">
										<label>Child</label><br/>
                                        <asp:TextBox ID="lblhchild" runat="server" class="form-control quantity-padding"></asp:TextBox>
									</div>
									<div class="col-md-3 col-sm-3 search-col-padding">
										<label>Rooms</label><br/>
                                        <asp:DropDownList ID="ddlhroom" class="form-control" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        </asp:DropDownList>
									</div>
									<div class="col-md-3 col-sm-3 search-col-padding">
										<label>Nights</label><br>
										<asp:DropDownList ID="ddlhnight" class="form-control" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        </asp:DropDownList>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-12 search-col-padding">
										<asp:Button ID="btn_searchhotel" class="search-button btn transition-effect" 
                                            runat="server" Text="Search Hotels" onclick="btn_searchhotel_Click" />
									</div>
									<div class="clearfix"></div>
							</div>
							<!-- END: HOTEL SEARCH -->

							
							<!-- START: CAR SEARCH -->
							<div role="tabpanel" class="tab-pane" id="taxi">
									<div class="col-md-12 product-search-title">Search Perfect Car</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Pick Up Location</label>
										<div class="input-group">
                                            <asp:TextBox ID="txtfloc" runat="server" CssClass="form-control" ></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Drop Off Location</label>
										<div class="input-group">
											<asp:TextBox ID="txttloc" runat="server" CssClass="form-control" ></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-map-marker fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Pick Up Date</label>
										<div class="input-group">
                                        <asp:TextBox ID="txtpickup" runat="server" CssClass="form-control" placeholder="E.g. DD/MM/YYYY"></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Pick Off Date</label>
										<div class="input-group">
											<asp:TextBox ID="txtpickoff" runat="server" CssClass="form-control" placeholder="E.g. DD/MM/YYYY"></asp:TextBox>
											<span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>No. of Passengers</label><br>
										<asp:DropDownList ID="ddlpass" runat="server" CssClass="form-control" required>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            </asp:DropDownList>
									</div>
									<div class="col-md-6 col-sm-6 search-col-padding">
										<label>Car Type(Optional)</label><br>
										<select class="selectpicker" name="car_type">
											<option>Limo</option>
											<option>Sedan</option>
										</select>
									</div>
									<div class="clearfix"></div>
									<div class="col-md-12 search-col-padding">
										<asp:Button ID="btn_Searchcab" class="search-button btn transition-effect" 
                                            runat="server" Text="Search cab" onclick="btn_Searchcab_Click" />
									</div>
									<div class="clearfix"></div>
							</div>
							<!-- END: CAR SEARCH -->

						</div>
						<!-- END: TAB PANE -->
				</div>
			</div>
			<div class="offer-slider">
				<div class="owl-carousel col-md-4 text-right" id="offer1">
					<div class="item">
						<h3>Hong Kong Fun</h3>
						<h4>Starting From 59990/Person</h4>
					</div>
<div class="item">
						<h3>Venice</h3>
						<h4>Starting From 60990/Person</h4>
					</div>
<div class="item">
						<h3>Cape town</h3>
						<h4>Starting From 60000/Person</h4>
					</div>
					<div class="item">
						<h3>Romantic Paris</h3>
						<h4>Starting From 78990/Person</h4>
					</div>
					<div class="item">
						<h3>Sky High Dubai</h3>
						<h4>Starting From 45990/Person</h4>
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
<script type="text/javascript" src="assets/plugins/supersized.3.1.3.min.js"></script>
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
