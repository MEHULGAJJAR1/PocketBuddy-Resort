<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Edit Member</title>
</head>
<body>
	<h2>Edit Member Details</h2>
	<form action="updatemember" method="post">
	    <input type="hidden" name="memberId" value="${member.memberId}" />
	    
	    <label>Name:</label>
	    <input type="text" name="memberName" value="${member.memberName}" required>
	    <br>

	    <label>Age:</label>
	    <input type="text" name="age" value="${member.age}" required>
	    <br>

	    <label>Profile:</label>
	    <input type="text" name="profilePhoto" value="${member.profilePhoto}" required>
	    <br>

	    <input type="submit" value="Update Member">
	</form>
</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Member</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .edit-container {
            max-width: 320px;
            margin: 90px auto;
            background: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            font-size: 14px;
            padding: 6px;
        }
        .btn-custom {
            width: 100%;
            font-size: 14px;
            padding: 6px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="edit-container">
            <h4 class="text-center mb-3">Edit Member</h4>

            <form action="updatemember" method="post">
                <input type="hidden" name="memberId" value="${member.memberId}" />

                <div class="mb-2">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" name="memberName" value="${member.memberName}" required>
                </div>

                <div class="mb-2">
                    <label class="form-label">Age</label>
                    <input type="number" class="form-control" name="age" value="${member.age}" required>
                </div>

                <div class="mb-2">
                    <label class="form-label">Profile Photo URL</label>
                    <input type="text" class="form-control" name="profilePhoto" value="${member.profilePhoto}" required>
                </div>

                <button type="submit" class="btn btn-primary btn-custom">Update</button>
                <a href="listmembers" class="btn btn-secondary btn-custom mt-1">Cancel</a>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .edit-container {
            max-width: 450px;
            margin: 10px auto;
            background: #fff;
            padding: 50px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-control {
            font-size: 14px;
            padding: 6px;
        }
        .btn-custom {
            width: 100%;
            font-size: 14px;
            padding: 6px;
        }
    </style>
<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List User</li>
				</ol>
			</nav>
		</div>
		 <div class="container">
        <div class="edit-container">
            <h4 class="text-center mb-3">Edit Member</h4>

            <form action="updatemember" method="post">
                <input type="hidden" name="memberId" value="${member.memberId}" />

                <div class="mb-2">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" name="memberName" value="${member.memberName}" required>
                </div>

                <div class="mb-2">
                    <label class="form-label">Age</label>
                    <input type="number" class="form-control" name="age" value="${member.age}" required>
                </div>

                <div class="mb-2">
                    <label class="form-label">Profile Photo URL</label>
                    <input type="file" class="form-control" name="profilePhoto" value="${member.profilePhoto}" required>
                </div>

                <button type="submit" class="btn btn-primary btn-custom">Update</button>
                <a href="listmembers" class="btn btn-secondary btn-custom mt-1">Cancel</a>
            </form>
        </div>
    </div>
		
		

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	

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
</html>