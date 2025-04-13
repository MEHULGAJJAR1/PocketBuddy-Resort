<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- <!DOCTYPE html> -->
<%-- <html>
<head>
<meta charset="UTF-8">
 <title>Login</title>
</head>
<body>
	<h2>Login</h2>
	<br><br>
	<form action="authenticate" method="post">
	
	Email:<input type="email" name="email"/><br><br>
	Password:<input type="password" name="password"/><br><br>
	<input type="submit" value="Login"><br><br> 
	${error }
	
	
	<a href="signup">Signup</a>
	<a href="forgetpassword">Forget Password</a>
	
</form>
</body>
</html>  --%>
<!-- <!DOCTYPE html>
Coding By CodingNepal - codingnepalweb.com
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registration </title> 
    <style>
    	@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #4070f4;
}
.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
}
.wrapper form .input-box{
  height: 52px;
  margin: 18px 0;
}
form .input-box input{
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #4070f4;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}
    </style>
   </head>
<body>
  <div class="wrapper">
    <h2>Login</h2>
    <form action="authenticate" method="post">
      
      <div class="input-box">
        <input type="text" placeholder="Enter your email" required name="email">
      </div>
      <div class="input-box">
        <input type="password" placeholder="Create password" required name="password">
      </div>
      
      <div class="policy">
        <input type="checkbox" required>
        <div class="text">
      </div>
        <h3>I accept all terms & condition</h3>
         
      </div>
      <div class="input-box button">
        <input type="submit" value="Login">
      </div>
      <div class="text">
        <h3>I Don't have any account? <a href="signup">Signup</a></h3>
      </div>
      <div class="text">
      <h3>Forget Password.  <a href="forgetpassword">Forget Password</a></h3>
      </div>
    </form>
  </div>
</body>
</html> -->
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Your Brand</title> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

      :root {
        --primary-color: #4361ee;
        --primary-dark: #3a0ca3;
        --primary-light: #7209b7;
        --secondary-color: #f72585;
        --text-color: #333;
        --text-light: #6c757d;
        --background: #f8f9fa;
        --white: #ffffff;
        --shadow: 0 10px 30px rgba(0,0,0,0.1);
        --input-border: #e0e0e0;
      }

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
      }

      body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, var(--primary-color), var(--primary-light));
        padding: 20px;
      }

      .wrapper {
        position: relative;
        max-width: 430px;
        width: 100%;
        background: var(--white);
        padding: 40px;
        border-radius: 16px;
        box-shadow: var(--shadow);
        overflow: hidden;
      }

      .wrapper::before {
        content: '';
        position: absolute;
        top: -50%;
        right: -50%;
        width: 300px;
        height: 300px;
        background: radial-gradient(var(--secondary-color), transparent 70%);
        opacity: 0.1;
        border-radius: 50%;
        z-index: 0;
      }

      .wrapper::after {
        content: '';
        position: absolute;
        bottom: -50%;
        left: -50%;
        width: 300px;
        height: 300px;
        background: radial-gradient(var(--primary-light), transparent 70%);
        opacity: 0.1;
        border-radius: 50%;
        z-index: 0;
      }

      .wrapper h2 {
        position: relative;
        font-size: 28px;
        font-weight: 600;
        color: var(--text-color);
        margin-bottom: 5px;
        z-index: 1;
      }

      .wrapper p {
        font-size: 14px;
        color: var(--text-light);
        margin-bottom: 30px;
        z-index: 1;
        position: relative;
      }

      .wrapper h2::before {
        content: '';
        position: absolute;
        left: 0;
        bottom: -8px;
        height: 4px;
        width: 40px;
        border-radius: 12px;
        background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
      }

      .wrapper form {
        position: relative;
        z-index: 1;
      }

      .wrapper form .input-box {
        position: relative;
        margin: 25px 0;
      }

      form .input-box input {
        height: 55px;
        width: 100%;
        outline: none;
        padding: 0 15px 0 45px;
        font-size: 16px;
        font-weight: 400;
        color: var(--text-color);
        border: 1.5px solid var(--input-border);
        border-radius: 8px;
        transition: all 0.3s ease;
      }

      .input-box input:focus,
      .input-box input:valid {
        border-color: var(--primary-color);
        box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.1);
      }

      .input-box i {
        position: absolute;
        top: 50%;
        left: 15px;
        transform: translateY(-50%);
        color: var(--text-light);
        transition: all 0.3s ease;
      }

      .input-box input:focus ~ i,
      .input-box input:valid ~ i {
        color: var(--primary-color);
      }

      form .policy {
        display: flex;
        align-items: center;
        margin: 15px 0 25px;
      }

      form .policy input {
        margin-right: 10px;
        accent-color: var(--primary-color);
        width: 18px;
        height: 18px;
      }

      form h3 {
        color: var(--text-light);
        font-size: 14px;
        font-weight: 500;
      }

      .input-box.button input {
        color: var(--white);
        letter-spacing: 1px;
        border: none;
        background: linear-gradient(to right, var(--primary-color), var(--primary-light));
        cursor: pointer;
        font-weight: 500;
        font-size: 16px;
        padding: 0;
        transition: all 0.3s ease;
      }

      .input-box.button input:hover {
        background: linear-gradient(to right, var(--primary-light), var(--primary-color));
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(67, 97, 238, 0.3);
      }

      form .text {
        margin-top: 20px;
        text-align: center;
      }

      form .text h3 {
        color: var(--text-color);
        width: 100%;
        font-size: 14px;
        font-weight: 400;
      }

      form .text h3 a {
        color: var(--primary-color);
        text-decoration: none;
        font-weight: 500;
        transition: all 0.3s ease;
      }

      form .text h3 a:hover {
        text-decoration: underline;
        color: var(--primary-dark);
      }

      .divider {
        display: flex;
        align-items: center;
        margin: 30px 0;
      }

      .divider::before,
      .divider::after {
        content: "";
        flex: 1;
        height: 1px;
        background-color: var(--input-border);
      }

      .divider span {
        padding: 0 15px;
        color: var(--text-light);
        font-size: 14px;
      }

      .social-login {
        display: flex;
        justify-content: center;
        gap: 15px;
        margin-bottom: 20px;
      }

      .social-btn {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 50px;
        height: 50px;
        border-radius: 50%;
        background: var(--background);
        border: 1px solid var(--input-border);
        cursor: pointer;
        transition: all 0.3s ease;
      }

      .social-btn:hover {
        background: var(--white);
        transform: translateY(-3px);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
      }

      .social-btn i {
        font-size: 20px;
      }

      .social-btn.google i {
        color: #DB4437;
      }

      .social-btn.facebook i {
        color: #4267B2;
      }

      .social-btn.twitter i {
        color: #1DA1F2;
      }

      @media (max-width: 480px) {
        .wrapper {
          padding: 30px 20px;
        }
      }
    </style>
  </head>
  <body>
    <div class="wrapper">
      <h2>Welcome Back</h2>
      <p>Please enter your details to sign in</p>
      
      <form action="authenticate" method="post">
        <div class="input-box">
          <input type="text" placeholder="Email address"  name="email">
          <i class="fas fa-envelope"></i>
        </div>
        
        <div class="input-box">
          <input type="password" placeholder="Password"  name="password">
          <i class="fas fa-lock"></i>
        </div>
        
        <div class="policy">
          <input type="checkbox" id="terms" >
          <h3>I accept all terms & conditions</h3>
        </div>
        
        <div class="input-box button">
          <input type="submit" value="Sign In">
        </div>
        
        <div class="divider">
          <span>or continue with</span>
        </div>
        
<!--         <div class="social-login">
          <div class="social-btn google">
            <i class="fab fa-google"></i>
          </div>
          <div class="social-btn facebook">
            <i class="fab fa-facebook-f"></i>
          </div>
          <div class="social-btn twitter">
            <i class="fab fa-twitter"></i>
          </div>
        </div> -->
        
        <div class="text">
          <h3>Don't have an account? <a href="signup">Sign up</a></h3>
        </div>
        
        <div class="text">
          <h3>Forgot your password? <a href="forgetpassword">Reset it here</a></h3>
        </div>
      </form>
    </div>
  </body>
</html>
