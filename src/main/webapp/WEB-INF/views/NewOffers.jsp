<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PocketBuddy - Find Best Resorts</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary: #2c3e50;
            --secondary: #3498db;
            --light-bg: #f5f7fa;
        }
        
        body {
            background-color: var(--light-bg);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        .header {
            background: linear-gradient(135deg, var(--secondary), var(--primary));
            color: white;
            padding: 2rem 0;
            margin-bottom: 2rem;
        }
        
        .filter-section {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            margin-bottom: 2rem;
        }
        
        .resort-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            transition: transform 0.3s;
            margin-bottom: 1.5rem;
            height: 100%;
        }
        
        .resort-card:hover {
            transform: translateY(-5px);
        }
        
        .resort-img {
            height: 200px;
            object-fit: cover;
            width: 100%;
        }
        
        .discount-badge {
            position: absolute;
            top: 10px;
            right: 10px;
            background: #e74c3c;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-weight: bold;
        }
        
        .popular-destinations {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            margin-bottom: 2rem;
        }
        
        .destination-tag {
            display: inline-block;
            background: var(--light-bg);
            padding: 8px 15px;
            border-radius: 20px;
            margin: 5px;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .destination-tag:hover {
            background: var(--secondary);
            color: white;
        }
        
        .offers-section {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            margin-bottom: 2rem;
        }
        
        .offer-item {
            padding: 8px 0;
            cursor: pointer;
        }
        
        .offer-item:hover {
            color: var(--secondary);
        }
        
        .results-count {
            color: var(--primary);
            font-weight: bold;
            margin-bottom: 1rem;
        }
        
        /* New Coupon Code Styles */
        .coupon-container {
            margin-top: 15px;
            padding: 10px;
            background: #f8f9fa;
            border-radius: 8px;
            border: 1px dashed #3498db;
        }
        
        .coupon-code {
            font-weight: bold;
            color: #e74c3c;
            font-size: 1.1rem;
        }
        
        .copy-btn {
            background: var(--secondary);
            color: white;
            border: none;
            padding: 3px 10px;
            border-radius: 4px;
            font-size: 0.8rem;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .copy-btn:hover {
            background: var(--primary);
        }
        
        .coupon-validity {
            font-size: 0.8rem;
            color: #666;
            margin-top: 5px;
        }
        
        .coupon-title {
            font-size: 0.9rem;
            color: var(--primary);
            margin-bottom: 5px;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="header text-center">
        <div class="container">
            <h1>PocketBuddy</h1>
            <p class="lead">Find your perfect resort getaway</p>
        </div>
    </div>
    
    <div class="container">
        <!-- Filter Section -->
        <div class="filter-section">
            <div class="row g-3">
                <div class="col-md-3">
                    <label class="form-label">Select City</label>
                    <select class="form-select" id="citySelect">
                        <option selected>Goa</option>
                        <option>Shimla</option>
                        <option>Jaipur</option>
                        <option>Manali</option>
                        <option>Munnar</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Select Area</label>
                    <select class="form-select" id="areaSelect">
                        <option selected>Select Area</option>
                        <option>North Goa</option>
                        <option>South Goa</option>
                        <option>Central Goa</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Resort Type</label>
                    <select class="form-select" id="typeSelect">
                        <option selected>All Types</option>
                        <option>Beach Resort</option>
                        <option>Hill Resort</option>
                        <option>Luxury Resort</option>
                        <option>Budget Resort</option>
                    </select>
                </div>
                <div class="col-md-3 d-flex align-items-end">
                    <button class="btn btn-primary w-100" id="searchBtn">Search Resorts</button>
                </div>
            </div>
        </div>
        
        <div class="row">
            <!-- Popular Destinations -->
            <div class="col-lg-3">
                <div class="popular-destinations">
                    <h4>Popular Destinations</h4>
                    <div class="mt-3">
                        <span class="destination-tag">Goa</span>
                        <span class="destination-tag">Jaipur</span>
                        <span class="destination-tag">Shimla</span>
                        <span class="destination-tag">Manali</span>
                        <span class="destination-tag">Munnar</span>
                        <span class="destination-tag">Ooty</span>
                    </div>
                </div>
                
                <!-- Offers Section -->
                <div class="offers-section mt-4">
                    <h4>Goa Resort Offers</h4>
                    <div class="mt-3">
                        <div class="offer-item">All Discounts</div>
                        <div class="offer-item">50% Off</div>
                        <div class="offer-item">25% Off</div>
                        <div class="offer-item">10% Off</div>
                        <div class="offer-item">1% Off</div>
                    </div>
                </div>
            </div>
            
            <!-- Resort Listing -->
            <div class="col-lg-9">
                <div class="results-count">5 resorts found</div>
                
                <div class="row">
                    <!-- Resort 1 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="resort-card">
                            <div class="position-relative">
                                <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" class="resort-img" alt="Beach Paradise Resort">
                                <div class="discount-badge">50% OFF</div>
                            </div>
                            <div class="p-3">
                                <h5>Beach Paradise Resort</h5>
                                <p class="text-muted">North Goa</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star-half-alt text-warning"></i>
                                        <span class="ms-1">4.5</span>
                                    </div>
                                    <div>
                                        <span class="text-decoration-line-through text-muted me-2">₹10,000</span>
                                        <span class="fw-bold">₹5,000</span>
                                    </div>
                                </div>
                                
                                <!-- Coupon Code Section -->
                                <div class="coupon-container">
                                    <div class="coupon-title">Special Offer Coupon:</div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="coupon-code">GOA50</span>
                                        <button class="copy-btn" onclick="copyCoupon('GOA50')">Copy</button>
                                    </div>
                                    <div class="coupon-validity">Valid until: 31 Dec 2023</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Resort 2 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="resort-card">
                            <div class="position-relative">
                                <img src="https://images.unsplash.com/photo-1564501049412-61c2a3083791?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" class="resort-img" alt="Luxury Bay Resort">
                                <div class="discount-badge">25% OFF</div>
                            </div>
                            <div class="p-3">
                                <h5>Luxury Bay Resort</h5>
                                <p class="text-muted">South Goa</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="far fa-star text-warning"></i>
                                        <span class="ms-1">4.0</span>
                                    </div>
                                    <div>
                                        <span class="text-decoration-line-through text-muted me-2">₹8,000</span>
                                        <span class="fw-bold">₹6,000</span>
                                    </div>
                                </div>
                                
                                <!-- Coupon Code Section -->
                                <div class="coupon-container">
                                    <div class="coupon-title">Weekend Special:</div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="coupon-code">WEEKEND25</span>
                                        <button class="copy-btn" onclick="copyCoupon('WEEKEND25')">Copy</button>
                                    </div>
                                    <div class="coupon-validity">Valid until: 15 Jan 2024</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Resort 3 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="resort-card">
                            <div class="position-relative">
                                <img src="https://images.unsplash.com/photo-1582719471381-9715408a1cc4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" class="resort-img" alt="Palm Grove Resort">
                                <div class="discount-badge">10% OFF</div>
                            </div>
                            <div class="p-3">
                                <h5>Palm Grove Resort</h5>
                                <p class="text-muted">Central Goa</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <span class="ms-1">5.0</span>
                                    </div>
                                    <div>
                                        <span class="text-decoration-line-through text-muted me-2">₹12,000</span>
                                        <span class="fw-bold">₹10,800</span>
                                    </div>
                                </div>
                                
                                <!-- Coupon Code Section -->
                                <div class="coupon-container">
                                    <div class="coupon-title">Early Bird Offer:</div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="coupon-code">PALM10</span>
                                        <button class="copy-btn" onclick="copyCoupon('PALM10')">Copy</button>
                                    </div>
                                    <div class="coupon-validity">Valid until: 20 Dec 2023</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Resort 4 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="resort-card">
                            <div class="position-relative">
                                <img src="https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" class="resort-img" alt="Sunset View Resort">
                            </div>
                            <div class="p-3">
                                <h5>Sunset View Resort</h5>
                                <p class="text-muted">North Goa</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star-half-alt text-warning"></i>
                                        <span class="ms-1">4.5</span>
                                    </div>
                                    <div>
                                        <span class="fw-bold">₹7,500</span>
                                    </div>
                                </div>
                                
                                <!-- Coupon Code Section -->
                                <div class="coupon-container">
                                    <div class="coupon-title">New Customer Offer:</div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="coupon-code">NEWSUNSET</span>
                                        <button class="copy-btn" onclick="copyCoupon('NEWSUNSET')">Copy</button>
                                    </div>
                                    <div class="coupon-validity">Valid until: 31 Jan 2024</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Resort 5 -->
                    <div class="col-md-6 col-lg-4">
                        <div class="resort-card">
                            <div class="position-relative">
                                <img src="https://images.unsplash.com/photo-1568084680786-a84f91d1153c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=80" class="resort-img" alt="Budget Stay Resort">
                                <div class="discount-badge">1% OFF</div>
                            </div>
                            <div class="p-3">
                                <h5>Budget Stay Resort</h5>
                                <p class="text-muted">South Goa</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="fas fa-star text-warning"></i>
                                        <i class="far fa-star text-warning"></i>
                                        <i class="far fa-star text-warning"></i>
                                        <span class="ms-1">3.0</span>
                                    </div>
                                    <div>
                                        <span class="text-decoration-line-through text-muted me-2">₹4,000</span>
                                        <span class="fw-bold">₹3,960</span>
                                    </div>
                                </div>
                                
                                <!-- Coupon Code Section -->
                                <div class="coupon-container">
                                    <div class="coupon-title">Last Minute Deal:</div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="coupon-code">BUDGET1</span>
                                        <button class="copy-btn" onclick="copyCoupon('BUDGET1')">Copy</button>
                                    </div>
                                    <div class="coupon-validity">Valid until: 10 Dec 2023</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="d-flex justify-content-between mt-4">
                    <button class="btn btn-outline-primary">Back</button>
                    <button class="btn btn-outline-secondary">Edit Search</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script>
        // Simple filter functionality
        document.getElementById('searchBtn').addEventListener('click', function() {
            const city = document.getElementById('citySelect').value;
            const area = document.getElementById('areaSelect').value;
            const type = document.getElementById('typeSelect').value;
            
            alert(`Searching for: ${city} - ${area} - ${type}`);
            // In real implementation, this would filter the resorts
        });
        
        // Popular destination tags click event
        document.querySelectorAll('.destination-tag').forEach(tag => {
            tag.addEventListener('click', function() {
                const destination = this.textContent;
                document.getElementById('citySelect').value = destination;
                // In real implementation, this would update the area dropdown too
            });
        });
        
        // Offer items click event
        document.querySelectorAll('.offer-item').forEach(offer => {
            offer.addEventListener('click', function() {
                const offerText = this.textContent;
                alert(`Filtering by: ${offerText}`);
                // In real implementation, this would filter the resorts
            });
        });
        
        // Copy coupon code function
        function copyCoupon(code) {
            navigator.clipboard.writeText(code)
                .then(() => {
                    alert(`Coupon code ${code} copied to clipboard!`);
                })
                .catch(err => {
                    console.error('Failed to copy: ', err);
                });
        }
    </script>
</body>
</html>