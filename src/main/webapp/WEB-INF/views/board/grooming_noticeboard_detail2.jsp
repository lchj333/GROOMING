<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/main_resources/css/grooming_noticeboard_detail.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 최상단 메뉴 icon --><!-- =======================================================================================================================================================================================================================  -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_72.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_114.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/main_resources/img/Grooming_icon_144.png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
 <!-- =======================================================================================================================================================================================================================  -->
</head>
<body>
<div id="page">
<!-- header -->
<!-- header end -->

<!-- contents -->
<div id="gr_noticeboard_detail_maindiv">
	<div id="notice_maindiv2">
		<div id="notice_maindiv3">
			<div id="gr_noticeboard_detail_title"><span><c:out value="${inform.nt_title }"></c:out></span></div>
			<div id="gr_noticeboard_detail_datehits">
				<span>등록일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<span><fmt:formatDate value="${inform.nt_regdate }"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<span>조회수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<span><c:out value="${inform.nt_hits }"></c:out></span>
			</div>
			<div id="gr_noticeboard_detail_contents">
				<c:set var="a" value="${inform.nt_con }"/>
				<c:set var="b" value="${fn:replace(a,'<p>','')}"/>
				<c:set var="c" value="${fn:replace(b,'</p>','</br>')}"/>
				<c:set var="d" value="${fn:replace(c,'&nbsp;','
				')}"/>
				<c:set var="e" value="${fn:replace(d,'<br>','')}"/>
				${e }
			</div>      
			<p id="notice_button">
				<a href="noticeListPage2?num=${pn }" class="btn_1 medium">목록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="noticeUpdate?nt_no=${inform.nt_no }" class="btn_1 medium">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="noticeDelete?nt_no=${inform.nt_no }" class="btn_1 medium">삭제</a>
			</p>
		</div>
	</div>
</div>
<!-- footer -->
<jsp:include page="../mypage/mypage_nav.jsp" />
</div>
<!-- footer end -->
<!-- 로그아웃 버튼 -->
<jsp:include page="../mypage/mypage_logout.jsp"></jsp:include>
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
</body>
</html>