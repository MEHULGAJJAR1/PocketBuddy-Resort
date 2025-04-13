<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	 <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	
	<jsp:include page="Slider.jsp"></jsp:include>
	
	<jsp:include page="Aboutus.jsp"></jsp:include>
	
	<jsp:include page="Offers.jsp"></jsp:include>
	
	<%-- <jsp:include page="Room.jsp"></jsp:include> --%>
	
	<jsp:include page="Query.jsp"></jsp:include>
	
	<jsp:include page="InstaArea.jsp"></jsp:include>
	
	<jsp:include page="Footer.jsp"></jsp:include>
<!-- form itself end-->
       <!--  <form id="test-form" class="white-popup-block mfp-hide">
                <div class="popup_box ">
                        <div class="popup_inner">
                            <h3>Check Availability</h3>
                            <form action="#">
                                <div class="row">
                                    <div class="col-xl-6">
                                        <input id="datepicker" placeholder="Check in date">
                                    </div>
                                    <div class="col-xl-6">
                                        <input id="datepicker2" placeholder="Check out date">
                                    </div>
                                    <div class="col-xl-6">
                                        <select class="form-select wide" id="default-select" class="">
                                            <option data-display="Adult">1</option>
                                            <option value="1">2</option>
                                            <option value="2">3</option>
                                            <option value="3">4</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-6">
                                        <select class="form-select wide" id="default-select" class="">
                                            <option data-display="Children">1</option>
                                            <option value="1">2</option>
                                            <option value="2">3</option>
                                            <option value="3">4</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-12">
                                        <select class="form-select wide" id="default-select" class="">
                                            <option data-display="Room type">Room type</option>
                                            <option value="1">Laxaries Rooms</option>
                                            <option value="2">Deluxe Room</option>
                                            <option value="3">Signature Room</option>
                                            <option value="4">Couple Room</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-12">
                                        <button type="submit" class="boxed-btn3">Check Availability</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </form> -->
    <!-- form itself end -->
    <form id="test-form" class="white-popup-block mfp-hide">
    <div class="auth-popup-container" style="background: #ffffff; padding: 30px; border-radius: 12px; max-width: 450px; margin: 0 auto; box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);">
        <div class="auth-popup-content" style="text-align: center;">
            <h3 style="font-size: 26px; margin-bottom: 25px; color: #2a2a2a; font-weight: 600;">Welcome Back!</h3>
            
            <form action="action" post="saveuser">
                <div class="row" style="margin: 0 -12px;">
                    <!-- Email Input -->
                    <div class="col-xl-12" style="padding: 0 12px; margin-bottom: 18px;">
                        <input type="email" name="email" placeholder="Email Address" style="width: 100%; height: 50px; padding: 0 18px; border: 1px solid #e0e0e0; border-radius: 8px; font-size: 15px; transition: all 0.3s ease;">
                    </div>
                    
                    <!-- Password Input -->
                    <div class="col-xl-12" style="padding: 0 12px; margin-bottom: 18px;">
                        <input type="password" name="password" placeholder="Password" style="width: 100%; height: 50px; padding: 0 18px; border: 1px solid #e0e0e0; border-radius: 8px; font-size: 15px; transition: all 0.3s ease;">
                    </div>
                    
                    <!-- Remember Me & Forgot Password -->
                    <div class="col-xl-6" style="padding: 0 12px; margin-bottom: 20px; width: 50%; text-align: left;">
                        <div class="remember-checkbox" style="display: flex; align-items: center;">
                            <input type="checkbox" id="remember" style="margin-right: 8px; accent-color: #4a6cf7;">
                            <label for="remember" style="color: #555; font-size: 14px; cursor: pointer;">Remember me</label>
                        </div>
                    </div>
                    <div class="col-xl-6" style="padding: 0 12px; margin-bottom: 20px; width: 50%; text-align: right;">
                        <a href="forgetpassword" style="color: #4a6cf7; font-size: 14px; text-decoration: none;">Forgot Password?</a>
                    </div>
                    
                    <!-- Login Button -->
                    <div class="col-xl-12" style="padding: 0 12px; margin-bottom: 15px;">
                        <button type="submit" class="auth-btn" style="width: 100%; height: 52px; background: #4a6cf7; color: #fff; border: none; border-radius: 8px; font-size: 16px; font-weight: 500; cursor: pointer; transition: all 0.3s ease;">
                            Login
                        </button>
                    </div>
                    
                    <!-- Sign Up Link -->
                    <div class="col-xl-12" style="padding: 0 12px;">
                        <p style="color: #666; font-size: 15px; margin-top: 10px;">
                            Don't have an account? 
                            <a href="signup" style="color: #4a6cf7; font-weight: 500; text-decoration: none;">Sign up</a>
                        </p>
                        <p style="color: #666; font-size: 15px; margin-top: 10px;">
                            For Admin 
                            <a href="admindashboard" style="color: #4a6cf7; font-weight: 500; text-decoration: none;">Admin</a>
                        </p>
                        
                        <a href="login" style="color: #4a6cf7; font-weight: 500; text-decoration: none;">Log Out</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</form>

<form id="contact-form" class="white-popup-block mfp-hide">
    <div class="contact-popup-container" style="background: #ffffff; padding: 30px; border-radius: 12px; max-width: 450px; margin: 0 auto; box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);">
        <div class="contact-popup-content" style="text-align: center;">
            <h3 style="font-size: 26px; margin-bottom: 25px; color: #2a2a2a; font-weight: 600;">Contact Us</h3>
            
            <form action="contactus" method="post">
                <div class="row" style="margin: 0 -12px;">
                    <!-- Name Input -->
                    <div class="col-xl-12" style="padding: 0 12px; margin-bottom: 18px;">
                        <input type="text" name="username" placeholder="Your Name" required style="width: 100%; height: 50px; padding: 0 18px; border: 1px solid #e0e0e0; border-radius: 8px; font-size: 15px; transition: all 0.3s ease;">
                    </div>
                    
                    <!-- Mobile Number Input -->
                    <div class="col-xl-12" style="padding: 0 12px; margin-bottom: 18px;">
                        <input type="tel" name="mobile" placeholder="Mobile Number" required style="width: 100%; height: 50px; padding: 0 18px; border: 1px solid #e0e0e0; border-radius: 8px; font-size: 15px; transition: all 0.3s ease;">
                    </div>
                    
                    <!-- Email Input -->
                    <div class="col-xl-12" style="padding: 0 12px; margin-bottom: 18px;">
                        <input type="email" name="email" placeholder="Email Address" required style="width: 100%; height: 50px; padding: 0 18px; border: 1px solid #e0e0e0; border-radius: 8px; font-size: 15px; transition: all 0.3s ease;">
                    </div>
                    
                    <!-- Message Input -->
                    <div class="col-xl-12" style="padding: 0 12px; margin-bottom: 18px;">
                        <textarea name="message" placeholder="Your Message" required style="width: 100%; height: 120px; padding: 15px 18px; border: 1px solid #e0e0e0; border-radius: 8px; font-size: 15px; transition: all 0.3s ease; resize: vertical;"></textarea>
                    </div>
                    
                    <!-- Submit Button -->
                    <div class="col-xl-12" style="padding: 0 12px; margin-bottom: 15px;">
                        <button type="submit" class="contact-btn" style="width: 100%; height: 52px; background: #4a6cf7; color: #fff; border: none; border-radius: 8px; font-size: 16px; font-weight: 500; cursor: pointer; transition: all 0.3s ease;">
                            Send Message
                        </button>
                    </div>
                    
                    <!-- Additional Info -->
                    <div class="col-xl-12" style="padding: 0 12px;">
                        <p style="color: #666; font-size: 15px; margin-top: 10px;">
                            We'll get back to you as soon as possible!
                        </p>
                        <p style="color: #666; font-size: 14px; margin-top: 15px;">
                            You can also reach us at: 
                            <a href="mailto:info@example.com" style="color: #4a6cf7; font-weight: 500; text-decoration: none;">info@example.com</a>
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </div>
</form>

<script>
    // JavaScript to handle form submission
    document.getElementById('contact-form').addEventListener('submit', function(event) {
        event.preventDefault();
        
        // Get form values
        const name = this.querySelector('input[name="username"]').value;
        const mobile = this.querySelector('input[name="mobile"]').value;
        const email = this.querySelector('input[name="email"]').value;
        const message = this.querySelector('textarea[name="message"]').value;
        
        // Validate mobile number (simple validation)
        const mobilePattern = /^\d{10}$/;
        if (!mobilePattern.test(mobile)) {
            alert('Please enter a valid 10-digit mobile number');
            return false;
        }
        
        // Here you would typically send the data to your server
        console.log('Form submitted:', { name, mobile, email, message });
        
        // Show success message
        alert('Thank you for contacting us! We will get back to you soon.');
        
        // Reset form
        this.reset();
    });
    
    // To open the popup (if you're using Magnific Popup)
    // You would typically call this when a "Contact Us" button is clicked
    function openContactForm() {
        $.magnificPopup.open({
            items: {
                src: '#contact-form',
                type: 'inline'
            }
        });
    }
</script>


	<jsp:include page="Script.jsp"></jsp:include>
</body>
</html>