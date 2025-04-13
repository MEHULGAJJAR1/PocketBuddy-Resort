<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

	<h1>Signup</h1> 
	
	<form action="saveuser" method="post">
	First name: <input type="text"name="firstName"/><br><br>
	Last Name:<input type="text" name="lastName"/><br><br>
	Gender: Male<input type="radio" name="gender"value="male">
	        Female<input type="radio" name="gender"value="female"><br><br>
	
	Contact No:<input type="text" name="contactNum"/><br><br>  
	Born Year: <input type="text" name="born">	<br><br>
	Email:<input type="email" name="email"/><br><br>
	Password:<input type="password" name="Password"/><br><br>
	<input type="submit" value="Signup">	

	<a href="login">I already have account</a>
	
	</form>
	
</body>
</html> --%>
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
form .input-box input,
form .input-box select {
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
.input-box input:valid,
.input-box select:focus,
.input-box select:valid {
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
    <h2>Registration</h2>
    <form action="saveuser" method="post" enctype="multipart/form-data">
      <div class="input-box">
        <input type="text" placeholder="First Name"  name="firstName">
      </div>
      <div class="input-box">
        <input type="text" placeholder="Last Name"  name="lastName">
      </div>
      
      <div class="input-box">
        <select name="gender" >
          <option value="" disabled selected>Select Gender</option>
          <option value="male">Male</option>
          <option value="female">Female</option>
          <option value="other">Other</option>
        </select>
      </div>
      <div class="input-box">
        <input type="number" placeholder="Enter your birth year"  name="born">
      </div>
      <div class="input-box">
        <input type="tel" placeholder="Enter your contact number"  name="contactNum">
      </div>
      
      <div class="input-box">
        <input type="text" placeholder="Enter your email"  name="email">
      </div>
      
      <div class="input-box">
        <input type="password" placeholder="Create password"  name="password">
      </div>
      
        <input type="file" placeholder="Upload-photo"  name="profilePic"><br>
     
      
      <div class="policy">
        <input type="checkbox" >
        <h3>I accept all terms & condition</h3>
      </div>
      <div class="input-box button">
        <input type="submit" value="Register Now">
      </div>
      <div class="text">
        <h3>Already have an account? <a href="login">Login now</a></h3>
      </div>
    </form>
  </div>
</body>
</html> 	 -->
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration | Your Brand</title> 
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
        max-width: 800px;
        width: 100%;
        background: var(--white);
        padding: 30px;
        border-radius: 16px;
        box-shadow: var(--shadow);
        overflow: hidden;
        display: flex;
      }

      .left-panel {
        flex: 1;
        padding-right: 30px;
        position: relative;
        z-index: 1;
      }

      .right-panel {
        flex: 1;
        position: relative;
        z-index: 1;
        display: flex;
        flex-direction: column;
        justify-content: center;
      }

      .decoration {
        position: absolute;
        width: 300px;
        height: 300px;
        background: radial-gradient(var(--secondary-color), transparent 70%);
        opacity: 0.1;
        border-radius: 50%;
        z-index: 0;
      }

      .decoration-1 {
        top: -150px;
        right: -150px;
      }

      .decoration-2 {
        bottom: -150px;
        left: -150px;
        background: radial-gradient(var(--primary-light), transparent 70%);
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
        margin-bottom: 20px;
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

      .form-row {
        display: flex;
        gap: 15px;
        margin-bottom: 15px;
      }

      .form-col {
        flex: 1;
      }

      .input-box {
        position: relative;
        margin-bottom: 15px;
      }

      .input-box input,
      .input-box select {
        height: 45px;
        width: 100%;
        outline: none;
        padding: 0 15px 0 40px;
        font-size: 15px;
        font-weight: 400;
        color: var(--text-color);
        border: 1.5px solid var(--input-border);
        border-radius: 8px;
        transition: all 0.3s ease;
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
      .input-box input:valid ~ i,
      .input-box select:focus ~ i,
      .input-box select:valid ~ i {
        color: var(--primary-color);
      }

      .input-box input:focus,
      .input-box input:valid,
      .input-box select:focus,
      .input-box select:valid {
        border-color: var(--primary-color);
        box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.1);
      }

      .file-input {
        margin: 10px 0 15px;
      }

      .file-input label {
        display: flex;
        align-items: center;
        gap: 10px;
        padding: 10px 15px;
        background: var(--background);
        border-radius: 8px;
        border: 1.5px dashed var(--input-border);
        cursor: pointer;
        transition: all 0.3s ease;
      }

      .file-input label:hover {
        border-color: var(--primary-color);
        background: rgba(67, 97, 238, 0.05);
      }

      .file-input label i {
        color: var(--primary-color);
        font-size: 20px;
      }

      .file-input label span {
        font-size: 14px;
        color: var(--text-light);
      }

      .file-input input[type="file"] {
        display: none;
      }

      .policy {
        display: flex;
        align-items: center;
        margin: 15px 0;
      }

      .policy input {
        margin-right: 10px;
        accent-color: var(--primary-color);
        width: 18px;
        height: 18px;
      }

      .policy h3 {
        color: var(--text-light);
        font-size: 14px;
        font-weight: 500;
      }

      .button input {
        height: 45px;
        width: 100%;
        color: var(--white);
        letter-spacing: 1px;
        border: none;
        background: linear-gradient(to right, var(--primary-color), var(--primary-light));
        cursor: pointer;
        font-weight: 500;
        font-size: 16px;
        border-radius: 8px;
        transition: all 0.3s ease;
      }

      .button input:hover {
        background: linear-gradient(to right, var(--primary-light), var(--primary-color));
        transform: translateY(-2px);
        box-shadow: 0 5px 15px rgba(67, 97, 238, 0.3);
      }

      .text {
        margin-top: 15px;
        text-align: center;
      }

      .text h3 {
        color: var(--text-color);
        width: 100%;
        font-size: 14px;
        font-weight: 400;
      }

      .text h3 a {
        color: var(--primary-color);
        text-decoration: none;
        font-weight: 500;
        transition: all 0.3s ease;
      }

      .text h3 a:hover {
        text-decoration: underline;
        color: var(--primary-dark);
      }

      .right-content {
        text-align: center;
        padding: 20px;
      }

      .right-content img {
        max-width: 80%;
        margin-bottom: 20px;
      }

      .right-content h3 {
        font-size: 22px;
        color: var(--text-color);
        margin-bottom: 15px;
      }

      .right-content p {
        color: var(--text-light);
        margin-bottom: 20px;
      }

      .features {
        text-align: left;
        margin-top: 20px;
      }

      .feature-item {
        display: flex;
        align-items: center;
        margin-bottom: 15px;
      }

      .feature-item i {
        color: var(--primary-color);
        margin-right: 10px;
        font-size: 18px;
      }

      .feature-item span {
        font-size: 14px;
        color: var(--text-color);
      }

      @media (max-width: 768px) {
        .wrapper {
          flex-direction: column;
          max-width: 430px;
        }
        
        .left-panel {
          padding-right: 0;
        }
        
        .right-panel {
          display: none;
        }
      }
    </style>
  </head>
  <body>
    <div class="wrapper">
      <div class="decoration decoration-1"></div>
      <div class="decoration decoration-2"></div>
      
      <div class="left-panel">
        <h2>Create Account</h2>
        <p>Join our community today</p>
        
        <form action="saveuser" method="post" enctype="multipart/form-data">
          <div class="form-row">
            <div class="form-col">
              <div class="input-box">
                <input type="text" placeholder="First Name" name="firstName" required>
                <i class="fas fa-user"></i>
              </div>
            </div>
            <div class="form-col">
              <div class="input-box">
                <input type="text" placeholder="Last Name" name="lastName" required>
                <i class="fas fa-user"></i>
              </div>
            </div>
          </div>
          
          <div class="form-row">
            <div class="form-col">
              <div class="input-box">
                <select name="gender" required>
                  <option value="" disabled selected>Select Gender</option>
                  <option value="male">Male</option>
                  <option value="female">Female</option>
                  <option value="other">Other</option>
                </select>
                <i class="fas fa-venus-mars"></i>
              </div>
            </div>
            <div class="form-col">
              <div class="input-box">
                <input type="number" placeholder="Birth Year" name="born" required>
                <i class="fas fa-calendar-alt"></i>
              </div>
            </div>
          </div>
          
          <div class="input-box">
            <input type="tel" placeholder="Contact Number" name="contactNum" required>
            <i class="fas fa-phone"></i>
          </div>
          
          <div class="input-box">
            <input type="email" placeholder="Email Address" name="email" required>
            <i class="fas fa-envelope"></i>
          </div>
          
          <div class="input-box">
            <input type="password" placeholder="Create Password" name="password" required>
            <i class="fas fa-lock"></i>
          </div>
          
          <div class="file-input">
            <label for="profile-pic">
              <i class="fas fa-cloud-upload-alt"></i>
              <span>Upload Profile Picture</span>
            </label>
            <input type="file" id="profile-pic" name="profilePic">
          </div>
          
          <!-- <div class="policy">
            <input type="checkbox" id="terms" required>
            <h3>I accept all terms & conditions</h3>
          </div> -->
          
          <div class="button">
            <input type="submit" value="Register Now">
          </div>
          
          <div class="text">
            <h3>Already have an account? <a href="login">Login now</a></h3>
          </div>
          <div class="text">
            <h3>Home <a href="home">home</a></h3>
          </div>
        </form>
      </div>
      
      <div class="right-panel">
        <div class="right-content">
          <img src="https://cf.bstatic.com/xdata/images/hotel/max1024x768/547999783.jpg?k=1a86f73399308853f8bd9a4487fb2edc234b2acea4fd38d989ecbe3d66f2f9f7&o=&hp=1" alt="Registration">
          <h3>Join Our Community</h3>
          <p>Create an account and enjoy all the benefits</p>
          
          <div class="features">
            <div class="feature-item">
              <i class="fas fa-check-circle"></i>
              <span>Access to exclusive content</span>
            </div>
            <div class="feature-item">
              <i class="fas fa-check-circle"></i>
              <span>Connect with other members</span>
            </div>
            <div class="feature-item">
              <i class="fas fa-check-circle"></i>
              <span>Get personalized recommendations</span>
            </div>
            <div class="feature-item">
              <i class="fas fa-check-circle"></i>
              <span>Save your preferences</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>