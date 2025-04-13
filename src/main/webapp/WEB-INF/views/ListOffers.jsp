<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>

<!-- DataTables CSS -->
<link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
<!-- Font Awesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  .action-btn {
    padding: 4px 8px;
    margin: 0 2px;
    font-size: 13px;
  }
  .pagination .page-link {
    padding: 0.375rem 0.75rem;
  }
  .dataTables_info, .dataTables_length, .dataTables_filter {
    margin-bottom: 15px;
  }
  .dataTables_length select {
    padding: 0.375rem 2.25rem 0.375rem 0.75rem;
    font-size: 0.875rem;
    border-radius: 0.25rem;
  }
  .dataTables_filter input {
    padding: 0.375rem 0.75rem;
    font-size: 0.875rem;
    border-radius: 0.25rem;
    margin-left: 5px;
  }
  .table-responsive {
    overflow-x: auto;
  }
</style>

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
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title">
										Offers<span>/all</span>
									</h5>

                                    <div class="table-responsive">
                                        <table class="table table-hover" id="myTable">
                                            <thead>
                                                <tr>
                                                    <th>Resort name</th>
                                                    <th>City</th>
                                                    <th>Area</th>
                                                    <th>Description</th>
                                                    <th>Coupon Code</th>
                                                    <th>Valid Till</th>
                                                    <th>Price</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${offerslist}" var="o">
                                                    <tr>
                                                        <td>${o.resortName}</td>
                                                        <td>${o.city}</td>
                                                        <td>${o.area}</td>
                                                        <td>${o.description}</td>
                                                        <td>${o.couponCode}</td>
                                                        <td>${o.validTill}</td>
                                                        <td>${o.price}</td>
                                                        <td>
                                                            <%-- <a href="edituser?userId=${u.userId}" class="btn btn-primary action-btn" title="Edit">
                                                                <i class="fas fa-edit"></i> Edit
                                                            </a>
                                                            <a href="viewuser?userId=${u.userId}" class="btn btn-info action-btn" title="View">
                                                                <i class="fas fa-eye"></i> View
                                                            </a> --%>
                                                            <a href="deleteoffer?offeruserId=${o.offeruserId}" class="btn btn-danger action-btn" title="Delete" onclick="return confirm('Are you sure you want to delete this user?')">
                                                                <i class="fas fa-trash"></i> Delete
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
								</div>
							</div>
						</div>
						<!-- End Reports -->
					</div>
				</div>
				<!-- End Left side columns -->
			</div>
		</section>
	</main>
	<!-- main content end  -->

	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<!-- DataTables JS -->
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
  
	<script type="text/javascript">
	$(document).ready(function() {
		let table = new DataTable('#myTable', {
			pagingType: "full_numbers",
			lengthMenu: [[5, 10, 25, 50, 100, -1], [5, 10, 25, 50, 100, "All"]],
			pageLength: 10,
			language: {
				paginate: {
					first: '<i class="fas fa-angle-double-left"></i>',
					previous: '<i class="fas fa-angle-left"></i>',
					next: '<i class="fas fa-angle-right"></i>',
					last: '<i class="fas fa-angle-double-right"></i>'
				},
				info: "Showing _START_ to _END_ of _TOTAL_ entries",
				lengthMenu: "Show _MENU_ entries per page",
				search: "Search:",
				zeroRecords: "No matching records found",
				infoEmpty: "Showing 0 to 0 of 0 entries",
				infoFiltered: "(filtered from _MAX_ total entries)"
			},
			responsive: true,
			dom: '<"row"<"col-sm-6"l><"col-sm-6"f>>' +
				'<"row"<"col-sm-12"tr>>' +
				'<"row"<"col-sm-5"i><"col-sm-7"p>>',
			stateSave: true
		});
		
		// Make the table responsive
		$(window).resize(function() {
			table.columns.adjust().responsive.recalc();
		});
	});
	</script>

</body>
</html>