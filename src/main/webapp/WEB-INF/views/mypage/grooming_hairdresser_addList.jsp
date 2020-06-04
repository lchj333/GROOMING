<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addlist</title>
</head>
<body>

<jsp:include page="mypage_nav.jsp"></jsp:include>

 <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Add listing</li>
      </ol>
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-file"></i>Basic info</h2>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Listing Title</label>
						<input type="text" class="form-control" placeholder="Hotel Mariott">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Category</label>
						<div class="styled-select">
						<select>
							<option>Tour</option>
							<option>Hotel</option>
							<option>Restaurant</option>
							<option>Bar</option>
						</select>
						</div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Keywords</label>
						<input type="text" class="form-control" placeholder="Keywords should be separated by commas">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label>Description</label>
						<div class="editor"></div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<label>Phone (Optional)</label>
						<input type="text" class="form-control">
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<label>Web site (Optional)</label>
						<input type="text" class="form-control">
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<label>Email (Optional)</label>
						<input type="text" class="form-control">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-4">
					<div class="form-group">
						<label>Facebook link (Optional)</label>
						<input type="text" class="form-control">
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<label>Twitter link (Optional)</label>
						<input type="text" class="form-control">
					</div>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<label>Google + (Optional)</label>
						<input type="text" class="form-control">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-12">
<!-- 					<div class="form-group">
						<label>Photos</label>
						<form action="addShopimgs" method="post" class="dropzone" enctype="multipart/form-data">
							<input type="hidden" name="de_licencenum" value="9000"/>
							<input type="submit" value="전송"/>
						</form> 
					</div>
					-->
					<div class="form-group">
						<label>Photos</label>
						<form action="/file-upload" class="dropzone"></form>
					</div>
				</div>
			</div>
			<!-- /row-->
		</div>
		<!-- /box_general-->
		
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-map-marker"></i>Location</h2>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Select City</label>
						<div class="styled-select">
						<select>
							<option>Miami</option>
							<option>New York</option>
							<option>Los Angeles</option>
							<option>San Francisco</option>
						</select>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Address</label>
						<input type="text" class="form-control" placeholder="ex. 250, Fifth Avenue...">
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>State</label>
						<input type="text" class="form-control">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
						<label>Zip Code</label>
						<input type="text" class="form-control">
					</div>
				</div>
			</div>
			<!-- /row-->
		</div>
		<!-- /box_general-->
		
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-clock-o"></i>Opening</h2>
			</div>
			<div class="row">
				<div class="col-md-2">
					<label class="fix_spacing">월요일</label>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>오픈시간</option>
							<c:forEach var="i" begin="1" end="24">
								<option>${i}시</option>
							</c:forEach>
						</select>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Closing Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-2">
					<label class="fix_spacing">Tuesday</label>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Opening Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Closing Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-2">
					<label class="fix_spacing">Wednesday</label>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Opening Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Closing Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-2">
					<label class="fix_spacing">Thursday</label>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Opening Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Closing Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
			</div>
						<!-- /row-->
			<div class="row">
				<div class="col-md-2">
					<label class="fix_spacing">Thursday</label>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Opening Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Closing Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
			</div>
						<!-- /row-->
			<div class="row">
				<div class="col-md-2">
					<label class="fix_spacing">Thursday</label>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Opening Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Closing Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<div class="row">
				<div class="col-md-2">
					<label class="fix_spacing">Thursday</label>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Opening Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select>
							<option>Closing Time</option>
							<option>Closed</option>
							<option>1 AM</option>
							<option>2 AM</option>
							<option>3 AM</option>
							<option>4 AM</option>
							<option>5 AM</option>
							<option>6 AM</option>
							<option>7 AM</option>
							<option>8 AM</option>
							<option>9 AM</option>
							<option>10 AM</option>
							<option>11 AM</option>
							<option>12 AM</option>	
							<option>1 PM</option>
							<option>2 PM</option>
							<option>3 PM</option>
							<option>4 PM</option>
							<option>5 PM</option>
							<option>6 PM</option>
							<option>7 PM</option>
							<option>8 PM</option>
							<option>9 PM</option>
							<option>10 PM</option>
							<option>11 PM</option>
							<option>12 PM</option>
						</select>
						</div>
					</div>
				</div>
			</div>
			<!-- /row-->
			
			
		</div>
		<!-- /box_general-->
		
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-dollar"></i>Pricing</h2>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6>Item</h6>
					<table id="pricing-list-container" style="width:100%;">
						<tr class="pricing-list-item">
							<td>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Title">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="Description">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<input type="text" class="form-control"  placeholder="Price">
										</div>
									</div>
									<div class="col-md-2">
										<div class="form-group">
											<a class="delete" href="#"><i class="fa fa-fw fa-remove"></i></a>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
					<a href="#0" class="btn_1 gray add-pricing-list-item"><i class="fa fa-fw fa-plus-circle"></i>Add Item</a>
					</div>
			</div>
			<!-- /row-->
		</div>
		<!-- /box_general-->
		<p><a href="#0" class="btn_1 medium">Save</a></p>
	  </div>
	  <!-- /.container-fluid-->
   	</div>
    <!-- /.container-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © PANAGEA 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    
    <script src="<c:url value='/resources/mypage/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="<c:url value='/resources/mypage/vendor/chart.js/Chart.min.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/datatables/jquery.dataTables.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/datatables/dataTables.bootstrap4.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/jquery.selectbox-0.2.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/retina-replace.min.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/jquery.magnific-popup.min.js'/>"></script>
    <!-- Custom scripts for all pages-->
    <script src="<c:url value='/resources/mypage/js/admin.js'/>"></script>
	<!-- Custom scripts for this page-->
	<script src="<c:url value='/resources/mypage/vendor/dropzone.min.js'/>"></script>
	<script src="<c:url value='/resources/mypage/vendor/bootstrap-datepicker.js'/>"></script>
	<script>$('input.date-pick').datepicker();</script>
  <!-- WYSIWYG Editor -->
  <script src="<c:url value='/resources/mypage/js/editor/summernote-bs4.min.js'/>"></script>
  <script>
      $('.editor').summernote({
    fontSizes: ['10', '14'],
    toolbar: [
      // [groupName, [list of button]]
      ['style', ['bold', 'italic', 'underline', 'clear']],
      ['font', ['strikethrough']],
      ['fontsize', ['fontsize']],
      ['para', ['ul', 'ol', 'paragraph']]
      ],
        placeholder: 'Write here your description....',
        tabsize: 2,
        height: 200
      });
    </script>
	
</body>
</html>