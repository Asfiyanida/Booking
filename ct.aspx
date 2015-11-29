<html lang="en">
  
<head>
	<title>CONTACT US</title>
	<meta charset="utf-8" />
	<link href='http://fonts.googleapis.com/css?family=Lato:300,400|Lobster' rel='stylesheet' type='text/css'>
</head>

<body style="background-image:url(fl.jpg)">
 
 <form id="contact-form" method="POST" action="processForm.php" name="ContactForm">
    <h2>
      Drop us a line!
    </h2>
    <p class="intro">
      What do you like about our website? What changes do you want in the future? Contact us and let us know!
    </p> 

      <p class="inputfield"><label for="subject">Subject</label></p> 
    			<input type="text" id="name" name="name" placeholder="What's this about?" style="color: #fff;" onfocus="if (this.value == '90') {this.value=''; this.style.color='#000';}" required tabindex="1" /> 
    
    	<p class="inputfield"><label for="message">Your Message</label></p> 
    			<textarea name="message" id="message" tabindex="2"></textarea> 
    		
      <p class="inputfield"><label for="name">Name</label></p> 
    			<input type="text" id="name" name="name" placeholder="First and last name" style="color: #fff;" onfocus="if (this.value == '90') {this.value=''; this.style.color='#000';}" required tabindex="3" /> 
    			 
    	<p class="inputfield"><label for="email">Email</label></p> 
    			<input type="text" id="email" name="email" placeholder="yourname@domain.com" required tabindex="4" />
    			
    	<input name="submit" type="submit" id="submit" tabindex="5" value="Submit" />
<p class="inputfield"><label for="Call us on"><font color="red">Call us on:</font>0333-2143786 , 0333-2143787</label></p>
<p class="inputfield"><label for="Email"><font color="red">Email:</font>reception@bonvoyage.com</label></p>
<li><a href="about.html">About us</a></li>
	 </form>
  </body>
</html>