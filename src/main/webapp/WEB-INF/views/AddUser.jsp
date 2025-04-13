<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

  	<title>New Role | Expense Manager</title>
  	<meta content="" name="description">
  	<meta content="" name="keywords">
<jsp:include page="AdminCss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  	<!-- Favicons -->
  	<link href="assets/img/favicon.png" rel="icon">
  	<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  	<!-- Google Fonts -->	
  	<link href="https://fonts.gstatic.com" rel="preconnect">
  	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  	<!-- Vendor CSS Files -->
  	<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  	<link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  	<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  	<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  	<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  	<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
	
  	<!-- Template Main CSS File -->
  	<link href="assets/css/style.css" rel="stylesheet">
	
  	<!-- =======================================================
  	* Template Name: NiceAdmin
  	* Updated: Jan 29 2024 with Bootstrap v5.3.2
  	* Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  	* Author: BootstrapMade.com
  	* License: https://bootstrapmade.com/license/
  	======================================================== -->
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>
  	<!-- End Sidebar-->

  	<main id="main" class="main">

    	<div class="pagetitle">
      		<h1>New Role</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          			<li class="breadcrumb-item active">New Member</li>
        		</ol>
      		</nav>
    	</div><!-- End Page Title -->

    	<section class="section dashboard">


	
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
	</main><!-- End #main -->

  	<!-- ======= Footer ======= -->
  	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
  	<!-- End Footer -->

  	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  	<!-- Vendor JS Files -->
  	<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  	<script src="assets/vendor/chart.js/chart.umd.js"></script>
  	<script src="assets/vendor/echarts/echarts.min.js"></script>
  	<script src="assets/vendor/quill/quill.min.js"></script>
  	<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  	<script src="assets/vendor/tinymce/tinymce.min.js"></script>
  	<script src="assets/vendor/php-email-form/validate.js"></script>

  	<!-- Template Main JS File -->
  	<script src="assets/js/main.js"></script>
  	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
  
 
 

	<script type="text/javascript">

	$( document ).ready(function() {
		let table = new DataTable('#myTable',{
			 
		});
	});
	</script>


</body>
</html> --%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Pocket Buddy</title>
    
    <jsp:include page="AdminCss.jsp"></jsp:include>
    
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>
    
    <main id="main" class="main container">
        <div class="pagetitle">
            <h1>New Role</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                    <li class="breadcrumb-item active">New Member</li>
                </ol>
            </nav>
        </div>
        
        <section class="section dashboard">
            <div class="card p-4 shadow">
                <h4 class="mb-3">Add New Member</h4>
                <form action="saveuser" method="post" enctype="multipart/form-data" class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label">First Name</label>
                        <input type="text" name="firstName" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Last Name</label>
                        <input type="text" name="lastName" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Gender</label><br>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="male" >
                            <label class="form-check-label">Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="female" >
                            <label class="form-check-label">Female</label>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Contact No</label>
                        <input type="text" name="contactNum" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Born Year</label>
                        <input type="text" name="born" class="form-control" >
                    </div>
                    <div class="col-md-12">
                        <label class="form-label">Profile Photo</label>
                        <input type="file" name="profilePics" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" >
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label">Password</label>
                        <input type="password" name="Password" class="form-control">
                    </div>
                    
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">Signup</button>
                        <a href="login" class="btn btn-link">I already have an account</a>
                    </div>
                </form>
            </div>
        </section>
    </main>

    <jsp:include page="AdminFooter.jsp"></jsp:include>
    <jsp:include page="AdminJs.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            let table = new DataTable('#myTable');
        });
    </script>
</body>
</html>
 --%>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>New Role | Expense Manager</title>
    
    <jsp:include page="AdminCss.jsp"></jsp:include>
    
    <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    
    <style>
        body {
            background: linear-gradient(135deg, #1e1e2f, #2a2a40);
            color: #fff;
            font-family: 'Poppins', sans-serif;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: rgba(0, 0, 0, 0.8);
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.2);
        }
        input, button {
            border-radius: 5px;
        }
        .btn-primary {
            width: 100%;
        }
        #photoPreview {
            display: none;
            width: 100px;
            border-radius: 5px;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <jsp:include page="AdminSidebar.jsp"></jsp:include>
    
    <main id="main" class="main">
        <div class="form-container">
            <h2 class="text-center">Add New User</h2>
            <form action="saveuser" method="post" enctype="multipart/form-data" class="row g-3">
                <div class="col-12">
                    <label class="form-label">First Name</label>
                    <input type="text" name="firstName" class="form-control" >
                </div>
                
                <div class="col-12">
                    <label class="form-label">Last Name</label>
                    <input type="text" name="lastName" class="form-control" >
                </div>
                
                <div class="col-12">
    				<label class="form-label">Gender</label>
    					<select name="gender" class="form-select">
      						  <option value="" disabled selected>Select Gender</option>
      						  <option value="male">Male</option>
     						   <option value="female">Female</option>
        					<option value="other">Other</option>
    					</select>
				</div>

                
                <div class="col-12">
                    <label class="form-label">Birth Year</label>
                    <input type="number" name="born" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Contect No</label>
                    <input type="number" name="contactNum" class="form-control">
                </div>
                
                <div class="col-12"> 
                    <label class="form-label">Email</label>
                    <input type="email" name="email" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Password</label>
                    <input type="number" name="password" class="form-control">
                </div>
                
                <div class="col-12">
                    <label class="form-label">Profile Photo</label>
                    <input type="file" name="profilePic" class="form-control" id="profilePhoto" accept="image/*">
                    <img id="photoPreview"/>
                </div>
                
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Save Member</button>
                </div>
            </form>
        </div>
    </main>

    <jsp:include page="AdminJs.jsp"></jsp:include>
    
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#profilePhoto').change(function(event) {
                let reader = new FileReader();
                reader.onload = function(e) {
                    $('#photoPreview').attr('src', e.target.result).show();
                }
                reader.readA    sDataURL(event.target.files[0]);
            });
        });
    </script>
</body>
</html>
 
