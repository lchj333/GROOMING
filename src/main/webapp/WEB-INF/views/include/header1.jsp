<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>Panagea | Premium site template for travel agencies, hotels and restaurant listing.</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="${pageContext.request.contextPath}/resources/main_resources/image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/main_resources/img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/main_resources/img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/main_resources/img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/main_resources/img/apple-touch-icon-144x144-precomposed.png">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/style.css" rel="stylesheet">
   <link href="${pageContext.request.contextPath}/resources/main_resources/css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/resources/main_resources/css/custom.css" rel="stylesheet">

    <style>
        html,
        body {
            height: 100%;
        }
    </style>

</head>

<body>

   <div id="page">
      <header class="header map_view menu_fixed">
         <div id="preloader"><div data-loader="circle-side"></div></div><!-- /Page Preload -->
         <div id="logo">
            <a href="index.html">
               <img src="${pageContext.request.contextPath}/resources/main_resources//img/Grooming_logo_main.png" width="150" height="36" data-retina="true" alt="">
            </a>
         </div>
         <ul id="top_menu">
            <!-- 회원별로 -->
   
            <!-- 비로그인시 -->
            <li></li>
            <li><a href="cart-1.html" class="cart-menu-btn" title="login"></a></li>
            <li><a href="#sign-in-dialog" id="sign-in" class="login" title="Sign In"></a></li>
            <!-- <li><a href="wishlist.html" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li> -->
   
            <%-- </c:if> --%>
   
            <%--
            <!-- 사용자 로그인시 -->
            <c:if test="">
               <li><a href="cart-1.html" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>
               <li><a href="#sign-in-dialog" id="sign-in" class="login" title="Sign In">Sign In</a></li>
               <li><a href="wishlist.html" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li>
            </c:if>
   
            <!-- 판매자 로그인시 -->
            <c:if test="">
               <li><a href="cart-1.html" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>
               <li><a href="#sign-in-dialog" id="sign-in" class="login" title="Sign In">Sign In</a></li>
               <li><a href="wishlist.html" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li>
            </c:if>
   
            <!-- 관리자 로그인시 -->
            <c:if test="">
               <li><a href="cart-1.html" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>
               <li><a href="#sign-in-dialog" id="sign-in" class="login" title="Sign In">Sign In</a></li>
               <li><a href="wishlist.html" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li>
            </c:if>
             --%>
   
         </ul>
         <!-- /top_menu -->
         <a href="#menu" class="btn_mobile">
            <div class="hamburger hamburger--spin" id="hamburger">
               <div class="hamburger-box">
                  <div class="hamburger-inner"></div>
               </div>
            </div>
         </a>
         <nav id="menu" class="main-menu">
            <ul>
               <li><span><a href="#0">커뮤니티</a></span>
                  <ul>
                     <li><a href="index.html">menu</a></li>
                     <li><a href="index.html">menu</a></li>
                     <li><a href="index.html">menu</a></li>
                  </ul>
               </li>
               <li><span><a href="#0">리얼후기</a></span>
                  <ul>
                     <li><a href="index.html">menu</a></li>
                     <li><a href="index.html">menu</a></li>
                     <li><a href="index.html">menu</a></li>
                  </ul>
               </li>
               <li><span><a href="#0">소식</a></span>
                  <ul>
                     <li><a href="index.html">menu</a></li>
                     <li><a href="index.html">menu</a></li>
                     <li><a href="index.html">menu</a></li>
                  </ul>
               </li>
               <li><span><a href="#0">고객센터</a></span>
                  <ul>
                     <li><a href="index.html">menu</a></li>
                     <li><a href="index.html">menu</a></li>
                     <li><a href="index.html">menu</a></li>
                  </ul>
               </li>
            </ul>
         </nav>
      </header>
      <!-- /header -->
   </div>
</body>
</html>