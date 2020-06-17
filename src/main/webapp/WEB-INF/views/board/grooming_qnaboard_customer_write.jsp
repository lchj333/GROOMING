<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function (e){
    $("input[type='file']").change(function(e){

      //div 내용 비워주기
      $('#preview').empty();

      var files = e.target.files;
      var arr =Array.prototype.slice.call(files);
      
      //업로드 가능 파일인지 체크
      for(var i=0;i<files.length;i++){
        if(!checkExtension(files[i].name,files[i].size)){
          return false;
        }
      }
      
      preview(arr);
      
    });//file change
    
    function checkExtension(fileName,fileSize){

      var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
      var maxSize = 20971520;  //20MB
      
      if(fileSize >= maxSize){
        alert('파일 사이즈 초과');
        $("input[type='file']").val("");  //파일 초기화
        return false;
      }
      
      if(regex.test(fileName)){
        alert('업로드 불가능한 파일이 있습니다.');
        $("input[type='file']").val("");  //파일 초기화
        return false;
      }
      return true;
    }
    
    function preview(arr){
      arr.forEach(function(f){
        
        //파일명이 길면 파일명...으로 처리
        var fileName = f.name;
        if(fileName.length > 10){
          fileName = fileName.substring(0,7)+"...";
        }
        
        //div에 이미지 추가
        var str = '<div style="display: inline-flex; padding: 10px;"><li>';
        str += '<span>'+fileName+'</span><br>';
        
        //이미지 파일 미리보기
        if(f.type.match('image.*')){
          var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
          reader.onload = function (e) { //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
            //str += '<button type="button" class="delBtn" value="'+f.name+'" style="background: red">x</button><br>';
            str += '<img src="'+e.target.result+'" title="'+f.name+'" width=270 height=270 />';
            str += '</li></div>';
            $(str).appendTo('#preview');
          } 
          reader.readAsDataURL(f);
        }else{
          str += '<img src="/resources/img/fileImg.png" title="'+f.name+'" width=300 height=300 />';
          $(str).appendTo('#preview');
        }
      });//arr.forEach
    }
  });
</script>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Ansonika">
  <title>1:1 문의 작성</title>
	

  <!-- GOOGLE WEB FONT -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">
	
  <!-- Bootstrap core CSS-->
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Main styles -->
  <link href="${pageContext.request.contextPath}/resources/mypage/css/admin.css" rel="stylesheet">
  <!-- Icon fonts-->
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Plugin styles -->
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/mypage/vendor/dropzone.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/mypage/css/date_picker.css" rel="stylesheet">
  <!-- WYSIWYG Editor -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/mypage/js/editor/summernote-bs4.css">
  <!-- Your custom styles -->
  <link href="${pageContext.request.contextPath}/resources/mypage/css/custom.css" rel="stylesheet">
	
</head>

<body class="fixed-nav sticky-footer" id="page-top">
<%-- <jsp:include page="../header.jsp"></jsp:include> --%>
  <jsp:include page="../mypage/mypage_nav.jsp"></jsp:include>
  
  <div class="content-wrapper">
    <form action="inquiryInsert" name="frm" enctype="multipart/form-data" method="post">
		<input type="hidden" name="mb_id" value="${login.mb_id }" />
    <div class="container-fluid">
      <!-- Breadcrumbs-->
		<div class="box_general padding_bottom">
			<div class="header_box version_2">
				<h2><i class="fa fa-file"></i>1:1 문의하기</h2>
			</div>
			<div class="row">
				<div class="col-md-5">
					<div class="form-group">
						<div class="styled-select">
						<select name="in_category">
							<option value="미용사 문의하기">미용사 문의하기</option>
							<option value="사용자 문의하기">사용자 문의하기</option>
						</select>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>제목</label>
						<input type="text" class="form-control" name="in_title" placeholder="제목을 입력하세요.">
					</div>
				</div>
			</div>
			<!-- /row-->

			<!-- /row-->
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
						<label>문의내용</label>
						<textarea class="editor" name="in_con" placeholder="내용을 입력하세요"> </textarea>
					</div>
				</div>
			</div>
			<!-- 파일첨부 -->
			<table id="imageDetail-table">
				<tr>
					<td>
						<input type="file" id="uploadFile" name="files" accept="image/*" title="이미지 파일만 가능" multiple>
						<div id="preview"></div>
					</td>
				</tr>
			</table>
			<!-- /row-->
		</div>
		<!-- /box_general-->
		<p><input type="submit" class="btn_1 medium" value="문의하기" /></p>
	  	</div>
		</form>
	  <!-- /.container-fluid-->
   	</div>
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <!-- 로그아웃 버튼 -->
<jsp:include page="../mypage/mypage_logout.jsp"></jsp:include>
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/resources/mypage/vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery.selectbox-0.2.js"></script>
	<script src="${pageContext.request.contextPath}/resources/mypage/vendor/retina-replace.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/mypage/vendor/jquery.magnific-popup.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/mypage/js/admin.js"></script>
	<!-- Custom scripts for this page-->
	<script src="${pageContext.request.contextPath}/resources/mypage/vendor/dropzone.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/mypage/vendor/bootstrap-datepicker.js"></script>
	<script>$('input.date-pick').datepicker();</script>
  <!-- WYSIWYG Editor -->
	<script src="${pageContext.request.contextPath}/resources/mypage/js/editor/summernote-bs4.min.js"></script>
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
        placeholder: '내용을 입력하세요.',
        tabsize: 2,
        height: 500
      });
    </script>
</body>
</html>