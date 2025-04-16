<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Offers</title>
</head>
<body>
		<c:forEach items="${offerList }" var="o">
		
			
				${o.resortName }
				${o.couponCode }
				${o.area }
				${o.validTill }
				${o.description }
				${o.price }
				
			
		
		</c:forEach>

</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resort Offers</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        padding: 20px;
    }
    .header {
        background: linear-gradient(135deg, #3498db, #2c3e50);
        color: white;
        padding: 20px 0;
        margin-bottom: 30px;
        border-radius: 8px;
    }
    .offer-card {
        background: white;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        margin-bottom: 25px;
        overflow: hidden;
        transition: transform 0.3s;
    }
    .offer-card:hover {
        transform: translateY(-5px);
    }
    .offer-image {
        height: 200px;
        object-fit: cover;
        width: 100%;
    }
    .offer-badge {
        position: absolute;
        top: 15px;
        right: 15px;
        background: #e74c3c;
        color: white;
        padding: 5px 10px;
        border-radius: 5px;
        font-weight: bold;
    }
    .coupon-code {
        background: #f8f9fa;
        border: 1px dashed #3498db;
        padding: 10px;
        border-radius: 5px;
        font-weight: bold;
        color: #e74c3c;
        margin-top: 10px;
    }
    .price {
        font-size: 1.2rem;
        font-weight: bold;
        color: #2c3e50;
    }
    .original-price {
        text-decoration: line-through;
        color: #95a5a6;
    }
    .amenities i {
        color: #3498db;
        margin-right: 5px;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="header text-center">
            <h1>Exclusive Resort Offers</h1>
            <p class="lead">Special deals for your dream vacation</p>
        </div>
        
        <div class="row">
            <c:forEach items="${offerList}" var="o">
                <div class="col-md-6 col-lg-4">
                    <div class="offer-card">
                        <div class="position-relative">
                            <!-- You can add actual resort images here -->
                            <img src="https://source.unsplash.com/random/600x400/?resort,${o.resortName}" 
                                 class="offer-image" alt="${o.resortName}">
                            <div class="offer-badge">Special Offer</div>
                        </div>
                        <div class="p-4">
                            <h3>${o.resortName}</h3>
                            <p class="text-muted">
                                <i class="fas fa-map-marker-alt"></i> ${o.area}
                            </p>
                            
                            <p>${o.description}</p>
                            
                            <div class="coupon-code">
                                <div class="d-flex justify-content-between align-items-center">
                                    <span>Coupon: <strong>${o.couponCode}</strong></span>
                                    <button class="btn btn-sm btn-outline-primary" 
                                            onclick="copyToClipboard('${o.couponCode}')">
                                        Copy
                                    </button>
                                </div>
                                <small class="text-muted">Valid till: ${o.validTill}</small>
                            </div>
                            
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <div>
                                    <span class="original-price">₹${o.price + 1000}</span>
                                    <span class="price">₹${o.price}</span>
                                </div>
                                <button class="btn btn-primary"  onclick="copyToClipboard('${o.couponCode}')">Copy</button>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        function copyToClipboard(text) {
            navigator.clipboard.writeText(text)
                .then(() => {
                    alert('Coupon code copied: ' + text);
                })
                .catch(err => {
                    console.error('Failed to copy: ', err);
                });
        }
    </script>
</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resort Offers</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
    :root {
        --primary-color: #3498db;
        --secondary-color: #2c3e50;
        --accent-color: #e74c3c;
        --light-bg: #f8f9fa;
    }
    
    body {
        background-image: url('https://source.unsplash.com/random/1920x1080/?resort,beach');
        background-size: cover;
        background-attachment: fixed;
        background-position: center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        position: relative;
    }
    
    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(255, 255, 255, 0.85);
        z-index: -1;
    }
    
    .header {
        background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
        color: white;
        padding: 20px 0;
        margin-bottom: 30px;
        border-radius: 8px;
    }
    
    .main-container {
        display: flex;
        min-height: calc(100vh - 150px);
    }
    
    /* Sidebar Styles */
    .sidebar {
        width: 280px;
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        margin-right: 20px;
        height: fit-content;
    }
    
    .sidebar-title {
        font-size: 1.2rem;
        font-weight: 600;
        margin-bottom: 20px;
        color: var(--secondary-color);
        border-bottom: 2px solid #eee;
        padding-bottom: 10px;
    }
    
    .filter-group {
        margin-bottom: 20px;
    }
    
    .filter-group label {
        display: block;
        margin-bottom: 8px;
        font-weight: 500;
    }
    
    .filter-group select {
        width: 100%;
        padding: 8px 12px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    
    .offer-type {
        margin-top: 5px;
    }
    
    .offer-type-btn {
        display: block;
        width: 100%;
        text-align: left;
        padding: 8px 12px;
        margin-bottom: 8px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background: white;
        transition: all 0.3s;
    }
    
    .offer-type-btn:hover, .offer-type-btn.active {
        background: var(--primary-color);
        color: white;
        border-color: var(--primary-color);
    }
    
    /* Content Styles */
    .content {
        flex: 1;
    }
    
    .offer-card {
        background: white;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        margin-bottom: 25px;
        overflow: hidden;
        transition: transform 0.3s;
    }
    
    .offer-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 12px rgba(0,0,0,0.15);
    }
    
    .offer-image {
        height: 200px;
        object-fit: cover;
        width: 100%;
    }
    
    .offer-badge {
        position: absolute;
        top: 15px;
        right: 15px;
        background: var(--accent-color);
        color: white;
        padding: 5px 10px;
        border-radius: 5px;
        font-weight: bold;
    }
    
    .coupon-code {
        background: var(--light-bg);
        border: 1px dashed var(--primary-color);
        padding: 10px;
        border-radius: 5px;
        font-weight: bold;
        color: var(--accent-color);
        margin-top: 10px;
    }
    
    .price {
        font-size: 1.2rem;
        font-weight: bold;
        color: var(--secondary-color);
    }
    
    .original-price {
        text-decoration: line-through;
        color: #95a5a6;
    }
    
    /* Copy notification */
    .copy-notification {
        position: fixed;
        top: 20px;
        right: 20px;
        background-color: var(--secondary-color);
        color: white;
        padding: 10px 15px;
        border-radius: 5px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.2);
        display: none;
        z-index: 1000;
    }
    
    /* Responsive Styles */
    @media (max-width: 768px) {
        .main-container {
            flex-direction: column;
        }
        
        .sidebar {
            width: 100%;
            margin-right: 0;
            margin-bottom: 20px;
        }
    }
</style>
</head>
<body>
    <div id="copyNotification" class="copy-notification">
        <i class="fas fa-check-circle me-2"></i> Coupon code copied!
    </div>

    <div class="container">
        <div class="header text-center">
            <h1>Exclusive Resort Offers</h1>
            <p class="lead">Special deals for your dream vacation</p>
        </div>
        
        <div class="main-container">
            <!-- Sidebar with filters -->
            <div class="sidebar">
                <h3 class="sidebar-title">Filter Offers</h3>
                
                <div class="filter-group">
                    <label for="city-select">Select City</label>
                    <select id="city-select" class="form-select">
                        <option value="">All Cities</option>
                        <option>Ahmedabad</option>
                        <option>Shimla</option>
                        <option>Manali</option>
                        <option>Jaipur</option>
                        <option>Munnar</option>
                    </select>
                </div>
                
                <div class="filter-group">
                    <label for="area-select">Select Area</label>
                    <select id="area-select" class="form-select">
                        <option value="">All Areas</option>
                        <option>Vastral</option>
                        <option>Maninager</option>
                        <option>South Goa</option>
                        <option>Central Goa</option>
                    </select>
                </div>
               
            </div>
            
            <!-- Main content -->
            <div class="content">
                <div class="row">
                    <c:forEach items="${offerList}" var="o">
                        <div class="col-md-6 col-lg-4" data-city="${o.city}" data-area="${o.area}" data-offer-type="${o.offerType}">
                            <div class="offer-card">
                                <div class="position-relative">
                                    <img src="https://source.unsplash.com/random/600x400/?resort,${o.resortName}" 
                                         class="offer-image" alt="${o.resortName}">
                                    <div class="offer-badge">
                                        <c:choose>
                                            <c:when test="${o.price < (o.price + 1000) * 0.9}">
                                                ${Math.round((1 - o.price / (o.price + 1000)) * 100)}% OFF
                                            </c:when>
                                            <c:otherwise>
                                                Special Offer
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="p-4">
                                    <h3>${o.resortName}</h3>
                                    <p class="text-muted">
                                        <i class="fas fa-map-marker-alt"></i> ${o.area}, ${o.city}
                                    </p>
                                    
                                    <p>${o.description}</p>
                                    
                                    <div class="coupon-code">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <span>Coupon: <strong>${o.couponCode}</strong></span>
                                            <button class="btn btn-sm btn-outline-primary" 
                                                    onclick="copyToClipboard('${o.couponCode}')">
                                                Copy
                                            </button>
                                        </div>
                                        <small class="text-muted">Valid till: ${o.validTill}</small>
                                    </div>
                                    
                                    <div class="d-flex justify-content-between align-items-center mt-3">
                                        <div>
                                            <span class="original-price">₹${o.price + 1000}</span>
                                            <span class="price">₹${o.price}</span>
                                        </div>
                                        <button class="btn btn-primary" onclick="copyToClipboard('${o.couponCode}')">Copy</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>

    <!-- Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        function copyToClipboard(text) {
            // Create a temporary input element
            const tempInput = document.createElement('input');
            tempInput.value = text;
            document.body.appendChild(tempInput);
            
            // Select and copy the text
            tempInput.select();
            document.execCommand('copy');
            
            // Remove the temporary element
            document.body.removeChild(tempInput);
            
            // Show notification
            const notification = document.getElementById('copyNotification');
            notification.textContent = `Coupon code ${text} copied!`;
            notification.style.display = 'block';
            
            // Hide notification after 2 seconds
            setTimeout(() => {
                notification.style.display = 'none';
            }, 2000);
        }
        
        // Initialize filter functionality
        document.addEventListener('DOMContentLoaded', function() {
            // Set up filter button events
            document.querySelectorAll('.offer-type-btn').forEach(btn => {
                btn.addEventListener('click', function() {
                    document.querySelectorAll('.offer-type-btn').forEach(b => b.classList.remove('active'));
                    this.classList.add('active');
                    filterOffers();
                });
            });
            
            // Set up dropdown filter events
            document.getElementById('city-select').addEventListener('change', filterOffers);
            document.getElementById('area-select').addEventListener('change', filterOffers);
            
            // Initial filter
            filterOffers();
        });
        
        function filterOffers() {
            const cityFilter = document.getElementById('city-select').value.toLowerCase();
            const areaFilter = document.getElementById('area-select').value.toLowerCase();
            const offerTypeBtn = document.querySelector('.offer-type-btn.active');
            const offerTypeFilter = offerTypeBtn ? offerTypeBtn.getAttribute('data-offer-type') : 'all';
            
            document.querySelectorAll('.col-md-6.col-lg-4').forEach(offer => {
                const city = offer.getAttribute('data-city').toLowerCase();
                const area = offer.getAttribute('data-area').toLowerCase();
                const offerType = offer.getAttribute('data-offer-type').toLowerCase();
                
                // Check if offer matches filters
                const cityMatch = !cityFilter || city.includes(cityFilter.toLowerCase());
                const areaMatch = !areaFilter || area.includes(areaFilter.toLowerCase());
                const typeMatch = offerTypeFilter === 'all' || offerType.includes(offerTypeFilter);
                
                // Show or hide based on matches
                if (cityMatch && areaMatch && typeMatch) {
                    offer.style.display = 'block';
                } else {
                    offer.style.display = 'none';
                }
            });
        }
    </script>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resort Offers</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<style>
    :root {
        --primary-color: #3498db;
        --secondary-color: #2c3e50;
        --accent-color: #e74c3c;
        --light-bg: #f8f9fa;
    }
    
    body {
        background-color: var(--light-bg);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    
    header {
        background: url('https://source.unsplash.com/1600x400/?resort,travel') center center no-repeat;
        background-size: cover;
        color: white;
        padding: 60px 0 20px;
        text-align: center;
        position: relative;
    }

    header h1 {
        font-size: 3rem;
        font-weight: bold;
        margin-bottom: 10px;
        color: #a56d6d;
        text-shadow: 1px 1px 3px #000;
    }

    header p {
        font-size: 1.2rem;
        color: #a56d6d;
        text-shadow: 1px 1px 2px #000;
    }

    .main-header-area {
        background-color: rgba(0,0,0,0.6);
        padding: 10px 0;
    }

    #navigation {
        list-style: none;
        margin: 0;
        padding: 0;
        display: flex;
        gap: 20px;
        justify-content: center;
    }

    #navigation li a {
        color: white;
        font-weight: bold;
        text-decoration: none;
        padding: 5px 15px;
        transition: all 0.3s;
    }

    #navigation li a:hover,
    #navigation li a.active {
        background-color: #007bff;
        color: white;
        border-radius: 5px;
    }

    .copy-notification {
        position: fixed;
        top: 20px;
        right: 20px;
        background-color: #28a745;
        color: white;
        padding: 10px 20px;
        border-radius: 5px;
        display: none;
        z-index: 9999;
        box-shadow: 0 2px 6px rgba(0,0,0,0.3);
    }

    .main-container {
        display: flex;
        margin-top: 20px;
        gap: 20px;
    }

    .sidebar {
        width: 20%;
        padding: 20px;
        background: #f8f9fa;
        border-radius: 10px;
    }

    .content {
        width: 80%;
    }

    .offer-card {
        background: white;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        overflow: hidden;
        margin-bottom: 30px;
        transition: all 0.3s;
    }

    .offer-card:hover {
        transform: translateY(-5px);
    }

    .offer-image {
        width: 100%;
        height: 200px;
        object-fit: cover;
    }

    .offer-badge {
        position: absolute;
        top: 14px;
        right: 10px;
        background-color: #ff4d4d;
        color: white;
        padding: 5px 10px;
        border-radius: 5px;
        font-weight: bold;
        font-size: 0.9rem;
    }

    .original-price {
        text-decoration: line-through;
        color: #888;
        margin-right: 10px;
    }

    .price {
        color: #007bff;
        font-weight: bold;
    }

    .coupon-code {
        background: #f1f1f1;
        padding: 10px;
        border-radius: 5px;
        margin-top: 10px;
    }

    .coupon-code strong {
        color: #dc3545;
    }

    .area-loading {
        display: none;
        color: #6c757d;
        font-size: 0.8rem;
        margin-top: 5px;
    }

    @media (max-width: 768px) {
        .main-container {
            flex-direction: column;
        }
        
        .sidebar, .content {
            width: 100%;
        }
    }
</style>
</head>
<body>

<header>
    <div class="main-header-area">
        <ul id="navigation">
            <li><a href="home">Home</a></li>
            <li><a class="active" href="homeoffers">Offers</a></li>
            <li><a href="rating">Rating</a></li>
            <li><a href="blog.html">Blog</a></li>
        </ul>
    </div>
    <h1>Exclusive Resort Offers</h1>
    <p>Special deals for your dream vacation</p>
</header>

<div id="copyNotification" class="copy-notification">
    <i class="fas fa-check-circle me-2"></i> Coupon code copied!
</div>

<div class="container">
    <div class="main-container">
        <div class="sidebar">
            <h3>Filter Offers</h3>
            <div class="mb-3">
                <label>Select City</label>
                <select name="cityId" id="city-select" class="form-select">
                    <option value="">Select City</option>
                    <c:forEach items="${allcity}" var="a">
                        <option value="${a.cityName}">${a.cityName}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="mb-3">
                <label>Select Area</label>
                <select id="area-select" class="form-select" disabled>
                    <option value="">Select city first</option>
                </select>
                <div id="areaLoading" class="area-loading">
                    <i class="fas fa-spinner fa-spin"></i> Loading areas...
                </div>
            </div>
        </div>

        <div class="content">
            <div class="row">
                <c:forEach items="${offerList}" var="o">
                    <div class="col-md-6 col-lg-4" data-city="${o.city}" data-area="${o.area}" data-offer-type="${o.offerType}">
                        <div class="offer-card">
                           <%--  <div class="position-relative">
                                <div class="offer-badge">
                                    <c:choose>
                                        <c:when test="${o.price < (o.price + 1000) * 0.9}">
                                            ${Math.round((1 - o.price / (o.price + 1000)) * 100)}% OFF
                                        </c:when>
                                        <c:otherwise>Special</c:otherwise>
                                    </c:choose>
                                </div>
                            </div> --%>
                            <div class="position-relative">
    <!-- Random Image from Backend -->
    <img src="${o.profilePicPath}" class="img-fluid rounded" alt="${o.resortName}">

    <div class="offer-badge">
        <c:choose>
            <c:when test="${o.price < (o.price + 1000) * 0.9}">
                ${Math.round((1 - o.price / (o.price + 1000)) * 100)}% OFF
            </c:when>
            <c:otherwise>Special</c:otherwise>
        </c:choose>
    </div>
</div>
                            
                            <div class="p-3">
                                <h5>${o.resortName}</h5>
                                <p class="text-muted"><i class="fas fa-map-marker-alt"></i> ${o.area}, ${o.city}</p>
                                <p>${o.description}</p>
                                <div class="coupon-code">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span>Coupon: <strong>${o.couponCode}</strong></span>
                                        <button class="btn btn-sm btn-outline-primary" onclick="copyToClipboard('${o.couponCode}')">Copy</button>
                                    </div>
                                    <small class="text-muted">Valid till: ${o.validTill}</small>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mt-2">
                                    <div>
                                        <span class="original-price">₹${o.price + 1000}</span>
                                        <span class="price">₹${o.price}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<script>
    // City to Area mapping
    const cityAreas = {
        "Ahmedabad": ["Vastral", "Maninager", "Bopal", "SG Highway", "Navrangpura"],
        "Shimla": ["Mall Road", "Summer Hill", "Chotta Shimla", "Kufri"],
        "Manali": ["Old Manali", "Vashisht", "Solang Valley", "Naggar"],
        "Jaipur": ["Malviya Nagar", "Vaishali Nagar", "Bani Park", "Amer"],
        "Munnar": ["Devikulam", "Pallivasal", "Chithirapuram", "Mattupetty"]
    };

    // Initialize city and area dropdowns
    document.addEventListener('DOMContentLoaded', function () {
        const citySelect = document.getElementById('city-select');
        const areaSelect = document.getElementById('area-select');
        const areaLoading = document.getElementById('areaLoading');

        // City change event
        citySelect.addEventListener('change', function () {
            const selectedCity = this.value;

            // Reset and disable area dropdown
            areaSelect.innerHTML = '<option value="">All Areas</option>';
            areaSelect.disabled = !selectedCity;

            if (selectedCity) {
                areaLoading.style.display = 'block';

                // Simulate API call delay
                setTimeout(() => {
                    const areas = cityAreas[selectedCity] || [];
                    areas.forEach(area => {
                        const option = document.createElement('option');
                        option.value = area;
                        option.textContent = area;
                        areaSelect.appendChild(option);
                    });

                    areaLoading.style.display = 'none';
                    filterOffers();
                }, 500);
            } else {
                filterOffers();
            }
        });

        // Area change event
        areaSelect.addEventListener('change', filterOffers);
    });

    function filterOffers() {
        const cityFilter = document.getElementById('city-select').value.toLowerCase();
        const areaFilter = document.getElementById('area-select').value.toLowerCase();

        document.querySelectorAll('.col-md-6.col-lg-4').forEach(offer => {
            const city = offer.getAttribute('data-city').toLowerCase();
            const area = offer.getAttribute('data-area').toLowerCase();

            const cityMatch = !cityFilter || city === cityFilter;
            const areaMatch = !areaFilter || area === areaFilter;

            offer.style.display = (cityMatch && areaMatch) ? 'block' : 'none';
        });
    }

    function copyToClipboard(text) {
        navigator.clipboard.writeText(text)
            .then(() => {
                const notification = document.getElementById('copyNotification');
                notification.innerHTML = `<i class="fas fa-check-circle me-2"></i> Coupon ${text} copied!`;
                notification.style.display = 'block';
                setTimeout(() => {
                    notification.style.display = 'none';
                }, 2000);
            })
            .catch(err => {
                console.error('Failed to copy: ', err);
            });
    }
</script>
</body>
</html>