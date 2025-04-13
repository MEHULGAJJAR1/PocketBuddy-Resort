<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<title>Admin Page</title>

<jsp:include page="AdminCss.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>	

</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Contact Us</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<title>Admin Page</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<style>
    .contact-section {
        background-color: #f8f9fa;
        padding: 30px 0;
    }
    .contact-header {
        background-color: #1a237e;
        color: white;
        padding: 15px;
        text-align: center;
        margin-bottom: 20px;
    }
    .contact-info-box {
        padding: 20px;
        background-color: white;
        border-radius: 5px;
        margin-bottom: 20px;
        height: 100%;
    }
    .contact-form {
        background-color: #e9ecef;
        padding: 30px;
        border-radius: 5px;
    }
    .contact-icon {
        font-size: 2rem;
        color: #1a237e;
        margin-bottom: 15px;
    }
    .submit-btn {
        background-color: #1a237e;
        color: white;
        padding: 10px 30px;
        border: none;
        border-radius: 5px;
    }
    .required-field::after {
        content: " *";
        color: red;
    }
    .captcha-box {
        background-color: white;
        padding: 10px;
        border-radius: 5px;
        margin-bottom: 10px;
    }
</style>
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Contact Us</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Contact Us</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section contact-section">
			<div class="row">
				<!-- Contact Information -->
				<div class="col-lg-6">
					<div class="row">
						<div class="col-12">
							<div class="contact-header">
								<h2>Get In Touch With Us Now!</h2>
							</div>
						</div>
						
						<!-- Phone Number -->
						<div class="col-md-6 mb-4">
							<div class="contact-info-box">
								<div class="text-center">
									<div class="contact-icon">
										<i class="fas fa-phone"></i>
									</div>
									<h3>Phone Number</h3>
									<p>+91 80004 36640</p>
								</div>
							</div>
						</div>
						
						<!-- Email -->
						<div class="col-md-6 mb-4">
							<div class="contact-info-box">
								<div class="text-center">
									<div class="contact-icon">
										<i class="fas fa-envelope"></i>
									</div>
									<h3>Email</h3>
									<p>info@example.com</p>
									<p>sales@example.com</p>
								</div>
							</div>
						</div>
						
						<!-- Location -->
						<div class="col-md-6 mb-4">
							<div class="contact-info-box">
								<div class="text-center">
									<div class="contact-icon">
										<i class="fas fa-map-marker-alt"></i>
									</div>
									<h3>Location</h3>
									<p>518, Rhythm Plaza, Amar Javan Circle, Nikol, Ahmedabad, Gujarat – 382350</p>
								</div>
							</div>
						</div>
						
						<!-- Working Hours -->
						<div class="col-md-6 mb-4">
							<div class="contact-info-box">
								<div class="text-center">
									<div class="contact-icon">
										<i class="fas fa-clock"></i>
									</div>
									<h3>Working Hours</h3>
									<p>Monday To Saturday</p>
									<p>09:00 AM To 06:00 PM</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Contact Form -->
				<div class="col-lg-6">
					<div class="contact-header">
						<h2>Contact Us</h2>
					</div>
					<div class="contact-form">
						<form action="processContact.jsp" method="post">
							<div class="row mb-3">
								<div class="col-md-6 mb-3 mb-md-0">
									<label for="firstName" class="form-label required-field">First Name</label>
									<div class="input-group">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
										<input type="text" class="form-control" id="firstName" name="firstName" required>
									</div>
								</div>
								<div class="col-md-6">
									<label for="lastName" class="form-label">Last Name</label>
									<div class="input-group">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
										<input type="text" class="form-control" id="lastName" name="lastName">
									</div>
								</div>
							</div>
							
							<div class="row mb-3">
								<div class="col-md-6 mb-3 mb-md-0">
									<label for="mobileNo" class="form-label required-field">Mobile No</label>
									<div class="input-group">
										<span class="input-group-text"><i class="fas fa-phone"></i></span>
										<input type="tel" class="form-control" id="mobileNo" name="mobileNo" required>
									</div>
								</div>
								<div class="col-md-6">
									<label for="email" class="form-label required-field">Email ID</label>
									<div class="input-group">
										<span class="input-group-text"><i class="fas fa-envelope"></i></span>
										<input type="email" class="form-control" id="email" name="email" required>
									</div>
								</div>
							</div>
							
							<div class="mb-3">
								<label for="message" class="form-label">Message</label>
								<textarea class="form-control" id="message" name="message" rows="5"></textarea>
							</div>
							
							<div class="mb-3">
								<label for="captcha" class="form-label required-field">Please type the characters</label>
								<div class="captcha-box mb-2">
									<img src="captcha.jsp" alt="CAPTCHA Image" class="img-fluid">
								</div>
								<input type="text" class="form-control" id="captcha" name="captcha" required>
								<small class="text-muted">This helps us prevent spam, thank you.</small>
							</div>
							
							<div class="text-center">
								<button type="submit" class="submit-btn">
									Submit <i class="fas fa-paper-plane ms-2"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>	
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Contact Us</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<title>Admin Page</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<style>
    .contact-section {
        background-color: #f8f9fa;
        padding: 30px 0;
    }
    .contact-header {
        background-color: #565378; /* Purple color as requested */
        color: white;
        padding: 15px;
        text-align: center;
        margin-bottom: 20px;
    }
    .contact-info-box {
        padding: 20px;
        background-color: white;
        border-radius: 5px;
        margin-bottom: 20px;
        height: 100%;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .contact-form {
        background-color: #e9ecef;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .contact-icon {
        font-size: 2rem;
        color: #565378; /* Purple color as requested */
        margin-bottom: 15px;
    }
    .contact-title {
        color: #565378; /* Purple color as requested */
        font-weight: 600;
    }
    .submit-btn {
        background-color: #565378; /* Purple color as requested */
        color: white;
        padding: 10px 30px;
        border: none;
        border-radius: 5px;
    }
    .submit-btn:hover {
        background-color: #464263; /* Darker purple for hover state */
    }
    .required-field::after {
        content: " *";
        color: red;
    }
    .captcha-box {
        background-color: white;
        padding: 10px;
        border-radius: 5px;
        margin-bottom: 10px;
    }
    .form-control, .input-group-text {
        border-color: #ced4da;
    }
    .input-group-text {
        background-color: #565378; /* Purple color as requested */
        color: white;
    }
    .breadcrumb-item a {
        color: #565378; /* Purple color as requested */
    }
</style>
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Contact Us</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">Contact Us</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section contact-section">
			<div class="row">
				<!-- Contact Information -->
				<div class="col-lg-6">
					<div class="row">
						<div class="col-12">
							<div class="contact-header">
								<h2>Get In Touch With Us Now!</h2>
							</div>
						</div>
						
						<!-- Phone Number -->
						<div class="col-md-6 mb-4">
							<div class="contact-info-box">
								<div class="text-center">
									<div class="contact-icon">
										<i class="fas fa-phone"></i>
									</div>
									<h3 class="contact-title">Phone Number</h3>
									<p>+91 80004 36640</p>
								</div>
							</div>
						</div>
						
						<!-- Email -->
						<div class="col-md-6 mb-4">
							<div class="contact-info-box">
								<div class="text-center">
									<div class="contact-icon">
										<i class="fas fa-envelope"></i>
									</div>
									<h3 class="contact-title">Email</h3>
									<p>info@example.com</p>
									<p>sales@example.com</p>
								</div>
							</div>
						</div>
						
						<!-- Location -->
						<div class="col-md-6 mb-4">
							<div class="contact-info-box">
								<div class="text-center">
									<div class="contact-icon">
										<i class="fas fa-map-marker-alt"></i>
									</div>
									<h3 class="contact-title">Location</h3>
									<p>518, Rhythm Plaza, Amar Javan Circle, Nikol, Ahmedabad, Gujarat – 382350</p>
								</div>
							</div>
						</div>
						
						<!-- Working Hours -->
						<div class="col-md-6 mb-4">
							<div class="contact-info-box">
								<div class="text-center">
									<div class="contact-icon">
										<i class="fas fa-clock"></i>
									</div>
									<h3 class="contact-title">Working Hours</h3>
									<p>Monday To Saturday</p>
									<p>09:00 AM To 06:00 PM</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- Contact Form -->
				<div class="col-lg-6">
					<div class="contact-header">
						<h2>Contact Us</h2>
					</div>
					<div class="contact-form">
						<form action="processContact.jsp" method="post">
							<div class="row mb-3">
								<div class="col-md-6 mb-3 mb-md-0">
									<label for="firstName" class="form-label required-field">First Name</label>
									<div class="input-group">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
										<input type="text" class="form-control" id="firstName" name="firstName" required>
									</div>
								</div>
								<div class="col-md-6">
									<label for="lastName" class="form-label">Last Name</label>
									<div class="input-group">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
										<input type="text" class="form-control" id="lastName" name="lastName">
									</div>
								</div>
							</div>
							
							<div class="row mb-3">
								<div class="col-md-6 mb-3 mb-md-0">
									<label for="mobileNo" class="form-label required-field">Mobile No</label>
									<div class="input-group">
										<span class="input-group-text"><i class="fas fa-phone"></i></span>
										<input type="tel" class="form-control" id="mobileNo" name="mobileNo" required>
									</div>
								</div>
								<div class="col-md-6">
									<label for="email" class="form-label required-field">Email ID</label>
									<div class="input-group">
										<span class="input-group-text"><i class="fas fa-envelope"></i></span>
										<input type="email" class="form-control" id="email" name="email" required>
									</div>
								</div>
							</div>
							
							<div class="mb-3">
								<label for="message" class="form-label">Message</label>
								<textarea class="form-control" id="message" name="message" rows="5"></textarea>
							</div>
							
							<div class="mb-3">
								<label for="captcha" class="form-label required-field">Please type the characters</label>
								<div class="captcha-box mb-2">
									<img src="captcha.jsp" alt="CAPTCHA Image" class="img-fluid">
								</div>
								<input type="text" class="form-control" id="captcha" name="captcha" required>
								<small class="text-muted">This helps us prevent spam, thank you.</small>
							</div>
							
							<div class="text-center">
								<button type="submit" class="submit-btn">
									Submit <i class="fas fa-paper-plane ms-2"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>	
</html>