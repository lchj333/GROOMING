<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Ansonika">
  <title>accept</title>

 <!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	/* 이건 안보이게 */
	$(function(){
		$(".text-num").css("display", "none");
		$("#btn").click(function(){
			document.frm.action = "<c:url value='registShop'/>";
			document.frm.submit();
		});


		/* 데이터 */
		$(".tr-button").click(function(){
			var str = "";
			var tdArr = new Array();
			var button = $(this);

			/* 현재 클릭된 버튼의 tr들 */
			var tr = button.parent().parent();
			var td = tr.children();
			var num = td.eq(0).text();
			var yes = td.eq(3).children().children("input:radio[class=yes]");
			var no = td.eq(3).children().children("input:radio[class=no]");


 			if(yes.is(':checked')==true){
 				location.href = "designerAgree?de_licencenum="+num;
			}else if(yes.is(':checked')==false){
				location.href = "ewqew?no=1&we=false";
			}
		});
	});

	/* 이미지 팝업창 */
	function popimage(imagesrc,winwidth,winheight){
	    var look='width='+winwidth+',height='+winheight+','
	        popwin=window.open("","",look)
	        popwin.document.open()
	        popwin.document.write('<title>Image Window</title><body topmargin=0 leftmargin=0><img style=cursor:hand; onclick="self.close()" src="'+imagesrc+'"></body>')
	        popwin.document.close()
	}
</script>



<body class="fixed-nav sticky-footer" id="page-top">

<jsp:include page="mypage_nav.jsp"></jsp:include>

  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="#">미용사</a>
        </li>
        <li class="breadcrumb-item active">미용사 </li>
      </ol>
		<!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i>신청목록</div>
	        <div class="card-body">
	          <div class="table-responsive">  
		            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		              <thead>
		                <tr>
		                  <th style="width: 10%;">번호</th>
		                  <th style="width: 20%">실명</th>
		                  <th style="width: 30%">이미지파일</th>
		                  <th style="width: 40%">확인여부</th>
		                </tr>
		              </thead>
		              <tfoot>
		                <tr>
		                  <th>번호</th>
		                  <th>실명</th>
		                  <th>이미지파일</th>
		                  <th>확인여부</th>
		                </tr>
		              </tfoot>
		              <tbody>
			          	<c:forEach var="list" items="${list }">
				               	<tr>
				                  <td style="text-align: center;"><c:out value="${list.de_licencenum}"></c:out></td>         
				                  <td><c:out value="${list.mb_name }"></c:out></td>
				                  <td>
				                  	<a href="#" onClick="popimage('<c:url value="/resources/licence/${list.de_licence}"/>',1000,600);return false">
				                  		<img src="<c:url value="/resources/licence/${list.de_licence}"/>" alt="이미지" style="width: 100px; height: 30px" />
				                  	</a>
				                  </td>
				                  <td>
				                  	<div id="radio-outline">
					                  	<input type="radio" name="radio${list }" class="yes" value="Y" checked="checked" />YES
					                  	<%-- <input type="radio" name="radio${list }" class="no" value="N" />NO --%>
				                  	</div>
				                  	<%-- <c:if test="${list.de_approval eq 'Y' }">
				                  		<div id="present-condition1">현재승인여부: yes</div>
				                  	</c:if> --%>
				                  	<c:if test="${list.de_approval eq 'N'  }">
				                  		<div id="present-condition2">현재승인여부: no</div>
				                  	</c:if>
					                <div class="tr-button">저장</div>
				                  </td>
				                </tr>
			          	</c:forEach>
		              </tbody>
		            </table>
	          </div>
	        </div>
      </div>
	  <!-- /tables-->
	  </div>
	  <!-- /container-fluid-->
   	</div>
    <!-- /container-wrapper-->
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

    <!-- Logout Modal-->
    <jsp:include page="mypage_logout.jsp"></jsp:include>


    <script src="<c:url value='/resources/mypage/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
    <!-- Core plugin JavaScript-->
    <script src="<c:url value='/resources/mypage/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
    
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
