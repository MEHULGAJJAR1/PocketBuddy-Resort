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
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
		
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
		
<jsp:include page="Footer.jsp"></jsp:include>
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