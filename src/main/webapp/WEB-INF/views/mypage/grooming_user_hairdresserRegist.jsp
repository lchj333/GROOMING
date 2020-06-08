<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hairdresser_regist</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	/* 체크박스 선택시 자격증 보이기 */
	function checkBox(){
	    if($('input:radio[id=gr_user]').is(':checked')){
	        $('#img-upload').slideUp(500);
	    }else{
	        $('#img-upload').slideDown(500);
	    }	
	}
	
	
	/* 파일보내기 */
	
	$(function(){
		$("#btn").click(function(){
			document.frm.action = "<c:url value='/survey/survey.ok'/>";
			document.frm.submit();
		});
		
		/* 기본세팅은 일반회원인 처음에는 안보이게 */
		$('#img-upload').hide();
	});
	
</script>

</head>
<body>

<jsp:include page="mypage_nav.jsp"></jsp:include>

 <div class="content-wrapper">
    <div class="container-fluid">
		<form action="#" name="frm">
	      <!-- Breadcrumbs-->
	      <ol class="breadcrumb">
	        <li class="breadcrumb-item">
	          	일반회원
	        </li>
	        <li class="breadcrumb-item active">미용사 등록</li>
	      </ol>
			<div class="box_general padding_bottom">
				<div class="header_box version_2">
					<h2><i class="fa fa-file"></i>미용사 등록</h2>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
								<h6><label>미용사 변경</label></h6>
							<div>
								<div>일반회원<input type="radio" name="ck" id="gr_user" value="일반회원" checked="checked" onClick="checkBox()" /></div>
								<div>미용사<input type="radio" name="ck" id="gr_hairdresser" value="미용사" onClick="checkBox()" /></div>
							</div>
						</div>
					</div>
				</div>
				<!-- /row-->
			</div>
			<!-- /box_general-->
		</form>
			
		</div>
			
			<div class="box_general padding_bottom" id="img-upload">
				<div class="header_box version_2">
					<h2><i class="fa fa-file"></i>자격증 등록</h2>
				</div>
				<div class="row">
					<div class="col-md-12">
						<h6>자격증</h6>
						<table id="pricing-list-container" style="width:100%;">
							<tr class="pricing-list-item">
								<td>
									<form name="fname">
										<div class="dropzone" id="fileDropzone"></div>
									</form>
								</td>
							</tr>
						</table>
						</div>
				</div>
				<!-- /row-->
			</div>
			<!-- /box_general-->
			<p id="myprofile-savebtn">
				<input type="button" id="btn" value="저장" class="btn_1 medium" />
			</p>
	  </div>
	  <!-- /.container-fluid-->

    <!-- /.container-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Grooming 2020</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>

	<jsp:include page="mypage_logout.jsp"></jsp:include>

    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value='/resources/mypage/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
    <!-- Core plugin JavaScript-->
    <script src="<c:url value='/resources/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
    <!-- Page level plugin JavaScript-->

	

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


	<!-- Custom dropzone -->
	<script src="<c:url value='/resources/mypage/vendor/custome_dropzone.js'/>"></script>

</body>
</html>