<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mypage/css/grooming_qnaboard_customlist.css" />
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
    .menu #gr_qna_a{cursor:pointer;}
    .menu .hide{display:none;}
</style>
<script type="text/javascript">
// html dom 이 다 로딩된 후 실행된다.
$(document).ready(function(){
    // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
    $(".menu>#gr_qna_a").click(function(){
        var submenu = $(this).next("ul");
        // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
        if( submenu.is(":visible") ){
            submenu.slideUp();
        }else{
            submenu.slideDown();
        }
    });
});
</script>
</head>
<body>
<div id="page">
<jsp:include page="../mypage/mypage_nav.jsp"></jsp:include>
<!-- contents -->
	<input type="hidden" value="${a.in_num }" />
	<form action="#" id="grooming_qnaboard_customlist_form">
		<div id="grooming_qnaboard_customlist_div">
			<div id="grooming_qnaboard_customlist_section">
				<div id="grooming_qnaboard_customlist_articlelist">
					<div id="grooming_qnaboard_customlist_maintitle">1:1문의(관리자페이지)</div>
					<div id="grooming_qnaboard_customlist_tablediv">
						<ul id="gr_qna_ul">
							<c:forEach var="a" items="${list}">
								<li class="menu" id="gr_qna_li">
									<div id="gr_qna_a">
										<!-- 제목 -->
										<div id="gr_qna_title"><c:out value="${a.in_title }"/> 
										</div>
										<!-- 날짜 -->
										<div id="gr_qna_regdate" >
											<fmt:formatDate value="${a.in_nowdate }" pattern="YY.MM.dd"/>
										</div>
									</div> 
									<ul class="hide" id="gr_qna_slideul">
										<li id="gr_qna_slideli">
										<c:set var="a" value="${a.in_con }"/>
										<c:set var="b" value="${fn:replace(a,'<p>','')}"/>
										<c:set var="c" value="${fn:replace(b,'</p>','</br>')}"/>
										<c:set var="d" value="${fn:replace(c,'&nbsp;','
										')}"/>
										<c:set var="e" value="${fn:replace(d,'<br>','')}"/> 
										${e }
		  								</li>
									</ul>
								</li>
							</c:forEach>
						</ul>
					</div>			
				</div>
				<a href="inquiryInsert"><input type="button" value="문의하기" class="btn_1 medium" /></a>
			</div>
		</div>
	</form>
</div>
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