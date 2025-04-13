<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
		
		
		<jsp:include page="Footer.jsp"></jsp:include>



	<jsp:include page="Script.jsp"></jsp:include>

</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxury Resort Room Booking</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css">
    <style>
        :root {
            --primary: #c19b76;
            --secondary: #1a1a1a;
            --light: #f8f9fa;
            --dark: #343a40;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('/api/placeholder/1920/1080') no-repeat center center/cover;
            background-attachment: fixed;
            min-height: 100vh;
            color: #333;
        }
        
        /* Header Styles */
        .header-area {
            position: relative;
            z-index: 999;
        }
        
        .main-header-area {
            padding: 15px 0;
            background: rgba(0, 0, 0, 0.7);
            transition: all 0.3s ease;
        }
        
        .main-header-area.sticky {
            padding: 10px 0;
            box-shadow: 0px 3px 16px 0px rgba(0, 0, 0, 0.1);
        }
        
        .logo-img img {
            max-height: 60px;
        }
        
        .main-menu ul li {
            display: inline-block;
            position: relative;
            margin: 0 15px;
        }
        
        .main-menu ul li a {
            color: #fff;
            font-size: 16px;
            text-transform: capitalize;
            font-weight: 500;
            display: inline-block;
            padding: 0px 10px;
            text-decoration: none;
            transition: 0.3s;
        }
        
        .main-menu ul li a.active,
        .main-menu ul li a:hover {
            color: var(--primary);
        }
        
        .main-menu ul li .submenu {
            position: absolute;
            left: 0;
            top: 160%;
            width: 200px;
            background: #fff;
            text-align: left;
            padding: 15px 0;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            opacity: 0;
            visibility: hidden;
            transition: 0.3s;
            z-index: 1;
        }
        
        .main-menu ul li:hover .submenu {
            opacity: 1;
            visibility: visible;
            top: 130%;
        }
        
        .main-menu ul li .submenu li {
            display: block;
            margin: 5px 0;
        }
        
        .main-menu ul li .submenu li a {
            color: var(--dark);
            font-size: 14px;
            font-weight: 400;
            padding: 5px 20px;
            width: 100%;
            display: block;
        }
        
        .main-menu ul li .submenu li a:hover {
            color: var(--primary);
            background: rgba(193, 155, 118, 0.1);
        }
        
        .socail_links ul li {
            display: inline-block;
            margin: 0 5px;
        }
        
        .socail_links ul li a {
            color: #fff;
            font-size: 18px;
            transition: 0.3s;
        }
        
        .socail_links ul li a:hover {
            color: var(--primary);
        }
        
        .book_btn {
            margin-left: 30px;
        }
        
        .book_btn a {
            background: var(--primary);
            padding: 10px 25px;
            color: #fff;
            border-radius: 30px;
            font-size: 15px;
            font-weight: 500;
            text-decoration: none;
            transition: 0.3s;
        }
        
        .book_btn a:hover {
            background: #fff;
            color: var(--primary);
        }
        
        /* Booking Form Styles */
        .booking-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 0px 30px rgba(0, 0, 0, 0.3);
            max-width: 700px;
            margin: 80px auto;
            position: relative;
            overflow: hidden;
        }
        
        .booking-container::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 5px;
            background: linear-gradient(to right, var(--primary), #e2c8ad);
        }
        
        .booking-container h2 {
            color: var(--secondary);
            margin-bottom: 30px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-align: center;
            position: relative;
            padding-bottom: 15px;
        }
        
        .booking-container h2::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background: var(--primary);
        }
        
        .form-group {
            margin-bottom: 25px;
        }
        
        .form-group label {
            font-weight: 500;
            margin-bottom: 8px;
            display: block;
            color: var(--secondary);
        }
        
        .form-control {
            height: 50px;
            border-radius: 8px;
            border: 1px solid #ddd;
            padding: 10px 15px;
            font-size: 16px;
            transition: all 0.3s;
        }
        
        .form-control:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 0.2rem rgba(193, 155, 118, 0.25);
        }
        
        .btn-primary {
            background: var(--primary);
            border: none;
            padding: 12px 30px;
            border-radius: 50px;
            font-weight: 500;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: all 0.3s;
        }
        
        .btn-primary:hover {
            background: var(--secondary);
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        
        /* Decorative Elements */
        .decorative-icon {
            position: absolute;
            color: rgba(193, 155, 118, 0.1);
            font-size: 80px;
            z-index: -1;
        }
        
        .icon-1 {
            top: 20px;
            right: 20px;
        }
        
        .icon-2 {
            bottom: 20px;
            left: 20px;
        }
        
        /* Responsive */
        @media (max-width: 992px) {
            .main-menu {
                display: none !important;
            }
            
            .book_btn {
                display: none !important;
            }
            
            .mobile_menu {
                display: block !important;
            }
        }
    </style>
</head>
<body>
    <!-- Header Start -->
    <header>
        <div class="header-area">
            <div id="sticky-header" class="main-header-area">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-4 col-lg-4">
                            <div class="main-menu d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="index.html">Home</a></li>
                                        <li><a href="rooms.html">Rooms</a></li>
                                        <li><a href="about.html">About</a></li>
                                        <li>
                                            <a href="#">Experiences <i class="fas fa-angle-down"></i></a>
                                            <ul class="submenu">
                                                <li><a href="spa.html">Spa & Wellness</a></li>
                                                <li><a href="dining.html">Fine Dining</a></li>
                                                <li><a href="activities.html">Activities</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.html">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 text-center">
                            <div class="logo-img">
                                <a href="index.html">
                                    <img src="/api/placeholder/180/60" alt="Luxury Resort Logo">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 d-none d-lg-block text-right">
                            <div class="d-flex justify-content-end align-items-center">
                                <div class="socail_links">
                                    <ul>
                                        <li>
                                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fab fa-twitter"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fab fa-instagram"></i></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="book_btn">
                                    <a href="login">Login</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Booking Section Start -->
    <div class="container">
        <div class="booking-container">
            <i class="fas fa-concierge-bell decorative-icon icon-1"></i>
            <i class="fas fa-umbrella-beach decorative-icon icon-2"></i>
            
            <h2>Reserve Your Paradise</h2>
            
            <form action="BookRoomServlet" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><i class="fas fa-user mr-2"></i> Full Name</label>
                            <input type="text" name="fullName" class="form-control" placeholder="Enter your full name" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><i class="fas fa-envelope mr-2"></i> Email Address</label>
                            <input type="email" name="email" class="form-control" placeholder="Enter your email" required>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><i class="fas fa-calendar-check mr-2"></i> Check-in Date</label>
                            <input type="date" name="checkin" class="form-control" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><i class="fas fa-calendar-minus mr-2"></i> Check-out Date</label>
                            <input type="date" name="checkout" class="form-control" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label><i class="fas fa-bed mr-2"></i> Select Room Type</label>
                    <select name="roomType" class="form-control" required>
                        <option value="">-- Select Your Room --</option>
                        <option value="Deluxe">Deluxe Garden View</option>
                        <option value="Superior">Superior Ocean View</option>
                        <option value="Suite">Luxury Suite with Private Pool</option>
                        <option value="Villa">Beachfront Villa</option>
                    </select>
                </div>
                
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><i class="fas fa-users mr-2"></i> Number of Guests</label>
                            <select name="guests" class="form-control" required>
                                <option value="1">1 Guest</option>
                                <option value="2" selected>2 Guests</option>
                                <option value="3">3 Guests</option>
                                <option value="4">4 Guests</option>
                                <option value="5">5+ Guests</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label><i class="fas fa-phone mr-2"></i> Contact Number</label>
                            <input type="tel" name="phone" class="form-control" placeholder="Enter your phone number" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label><i class="fas fa-comment mr-2"></i> Special Requests (Optional)</label>
                    <textarea name="requests" class="form-control" rows="3" placeholder="Any special requests or preferences..."></textarea>
                </div>
                
                <div class="form-group text-center mt-4">
                    <button type="submit" class="btn btn-primary btn-lg">
                        <i class="fas fa-check-circle mr-2"></i> Confirm Reservation
                    </button>
                </div>
            </form>
        </div>
    </div>
    <!-- Booking Section End -->
    
    <!-- Footer Include -->
    <<%-- jsp:include page="Footer.jsp" /> --%>
    
    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script>
        // Sticky Header
        $(window).on('scroll', function() {
            var scroll = $(window).scrollTop();
            if (scroll < 400) {
                $("#sticky-header").removeClass("sticky");
            } else {
                $("#sticky-header").addClass("sticky");
            }
        });
        
        // Set minimum dates for check-in and check-out
        const today = new Date().toISOString().split('T')[0];
        document.querySelector('input[name="checkin"]').setAttribute('min', today);
        
        document.querySelector('input[name="checkin"]').addEventListener('change', function() {
            const checkinDate = new Date(this.value);
            checkinDate.setDate(checkinDate.getDate() + 1);
            const nextDay = checkinDate.toISOString().split('T')[0];
            document.querySelector('input[name="checkout"]').setAttribute('min', nextDay);
        });
    </script>
</body>
</html>
 