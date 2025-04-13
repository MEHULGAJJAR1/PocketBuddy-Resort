<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Popup</title>
    <style>
        /* Reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f5f5;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Main content */
        .container {
            width: 100%;
            max-width: 400px;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .btn {
            background-color: #4f46e5;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.2s;
        }

        .btn:hover {
            background-color: #4338ca;
        }

        /* Modal styles */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(4px);
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 1000;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s, visibility 0.3s;
        }

        .modal-overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .modal {
            background-color: white;
            width: 90%;
            max-width: 400px;
            border-radius: 10px;
            padding: 30px;
            position: relative;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            transform: scale(0.8);
            transition: transform 0.3s;
        }

        .modal-overlay.active .modal {
            transform: scale(1);
        }

        .close-btn {
            position: absolute;
            top: 15px;
            right: 15px;
            background: none;
            border: none;
            font-size: 20px;
            cursor: pointer;
            color: #666;
        }

        .close-btn:hover {
            color: #333;
        }

        .modal-title {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        /* Form styles */
        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #444;
        }

        .input-wrapper {
            position: relative;
        }

        input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
            transition: border-color 0.2s;
        }

        input:focus {
            outline: none;
            border-color: #4f46e5;
        }

        .password-toggle {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: #666;
            cursor: pointer;
        }

        .error-message {
            color: #e11d48;
            font-size: 14px;
            margin-top: 5px;
            display: none;
        }

        .error-message.visible {
            display: block;
        }

        .form-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .remember-me {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .forgot-password {
            color: #4f46e5;
            text-decoration: none;
            font-size: 14px;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }

        .submit-btn {
            width: 100%;
            background-color: #4f46e5;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background-color 0.2s;
        }

        .submit-btn:hover {
            background-color: #4338ca;
        }

        .submit-btn.loading {
            opacity: 0.7;
            cursor: not-allowed;
        }

        .spinner {
            display: inline-block;
            width: 16px;
            height: 16px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            border-top-color: white;
            animation: spin 1s ease-in-out infinite;
            margin-right: 8px;
            display: none;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }

        .signup-link {
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }

        .signup-link a {
            color: #4f46e5;
            text-decoration: none;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome</h1>
        <p style="margin-bottom: 30px; color: #666;">Click the button below to open the login popup</p>
        <button id="openLoginBtn" class="btn">Open Login</button>
    </div>

    <!-- Login Modal -->
    <div id="loginModal" class="modal-overlay">
        <div class="modal">
            <button id="closeModal" class="close-btn">&times;</button>
            <h2 class="modal-title">Login</h2>
            
            <form id="loginForm">
                <div id="errorAlert" class="error-message">
                    Please fill in all fields
                </div>
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" placeholder="name@example.com" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="input-wrapper">
                        <input type="password" id="password" placeholder="••••••••" required>
                        <button type="button" id="togglePassword" class="password-toggle">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M2 12s3-7 10-7 10 7 10 7-3 7-10 7-10-7-10-7Z"></path>
                                <circle cx="12" cy="12" r="3"></circle>
                            </svg>
                        </button>
                    </div>
                </div>
                
                <div class="form-footer">
                    <div class="remember-me">
                        <input type="checkbox" id="remember">
                        <label for="remember" style="display: inline; margin: 0;">Remember me</label>
                    </div>
                    
                    <a href="#" class="forgot-password">Forgot password?</a>
                </div>
                
                <button type="submit" id="loginButton" class="submit-btn">
                    <span id="spinner" class="spinner"></span>
                    <span id="buttonText">Log in</span>
                </button>
                
                <div class="signup-link">
                    Don't have an account? <a href="#">Sign up</a>
                </div>
            </form>
        </div>
    </div>

    <script>
        // DOM Elements
        const openLoginBtn = document.getElementById('openLoginBtn');
        const loginModal = document.getElementById('loginModal');
        const closeModal = document.getElementById('closeModal');
        const loginForm = document.getElementById('loginForm');
        const emailInput = document.getElementById('email');
        const passwordInput = document.getElementById('password');
        const togglePassword = document.getElementById('togglePassword');
        const errorAlert = document.getElementById('errorAlert');
        const loginButton = document.getElementById('loginButton');
        const spinner = document.getElementById('spinner');
        const buttonText = document.getElementById('buttonText');

        // Open modal
        openLoginBtn.addEventListener('click', () => {
            loginModal.classList.add('active');
            emailInput.focus();
        });

        // Close modal when clicking the close button
        closeModal.addEventListener('click', () => {
            loginModal.classList.remove('active');
        });

        // Close modal when clicking outside the modal
        loginModal.addEventListener('click', (e) => {
            if (e.target === loginModal) {
                loginModal.classList.remove('active');
            }
        });

        // Close modal when pressing Escape key
        document.addEventListener('keydown', (e) => {
            if (e.key === 'Escape' && loginModal.classList.contains('active')) {
                loginModal.classList.remove('active');
            }
        });

        // Toggle password visibility
        togglePassword.addEventListener('click', () => {
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                togglePassword.innerHTML = `
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M9.88 9.88a3 3 0 1 0 4.24 4.24"></path>
                        <path d="M10.73 5.08A10.43 10.43 0 0 1 12 5c7 0 10 7 10 7a13.16 13.16 0 0 1-1.67 2.68"></path>
                        <path d="M6.61 6.61A13.526 13.526 0 0 0 2 12s3 7 10 7a9.74 9.74 0 0 0 5.39-1.61"></path>
                        <line x1="2" x2="22" y1="2" y2="22"></line>
                    </svg>
                `;
            } else {
                passwordInput.type = 'password';
                togglePassword.innerHTML = `
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M2 12s3-7 10-7 10 7 10 7-3 7-10 7-10-7-10-7Z"></path>
                        <circle cx="12" cy="12" r="3"></circle>
                    </svg>
                `;
            }
        });

        // Form submission
        loginForm.addEventListener('submit', (e) => {
            e.preventDefault();
            
            // Reset error state
            errorAlert.classList.remove('visible');
            
            // Validate form
            if (!emailInput.value || !passwordInput.value) {
                errorAlert.textContent = 'Please fill in all fields';
                errorAlert.classList.add('visible');
                return;
            }
            
            // Show loading state
            loginButton.classList.add('loading');
            spinner.style.display = 'inline-block';
            buttonText.textContent = 'Logging in...';
            
            // Simulate API call
            setTimeout(() => {
                // Here you would normally make an API request to authenticate
                console.log('Login attempt with:', {
                    email: emailInput.value,
                    password: passwordInput.value,
                    rememberMe: document.getElementById('remember').checked
                });
                
                // For demo purposes, let's simulate a successful login
                loginButton.classList.remove('loading');
                spinner.style.display = 'none';
                buttonText.textContent = 'Log in';
                
                // Close the modal after successful login
                loginModal.classList.remove('active');
                
                // Reset form
                loginForm.reset();
                
                // You would normally redirect or update UI here after successful login
                alert('Login successful!');
            }, 1500);
        });
    </script>
</body>
</html>