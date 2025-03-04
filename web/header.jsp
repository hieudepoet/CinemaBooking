<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Header</title>
<!--    <link href="${pageContext.request.contextPath}/assets/css/jquery-ui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/global.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/header.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/footer.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/icofont.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/flaticon.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/owl.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/linearicons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/custom-animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/jquery.fancybox.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/jquery.sweet-modal.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">-->

    <script src="${pageContext.request.contextPath}/assets/js/scroll-header.js"></script>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%; /* Đảm bảo chiều cao đầy đủ */
            overflow-x: hidden; /* Ngăn cuộn ngang nếu không cần */
        }
        
        .content-fluid {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-family: Arial, sans-serif;
            height: 50px;
        }

        .contact-info {
            width : 50%;
            display : flex;
            justify-content: center;
            gap: 30px;
            font-size: 14px;
        }
        .info{
            display: flex;
            list-style: none;
            gap: 30px;
            a{
                text-decoration: none;
                color: black;
            }
        }

        .social-links {
            height: 100%;
            width: 50%;
            background-color: #ff0000;
            display: flex;
            justify-content: center;
            gap: 20px;
            align-items: center;
            border-radius: 30px 0 0 30px;
        }

        .social-links a {
            color: white;
            text-decoration: none;
        }

        .social-links img {
            width: 40px; /* Kích thước biểu tượng mạng xã hội */
            height: 40px;
        }

        .app-links img {
            width: 120px; /* Kích thước biểu tượng App Store/Google Play */
            height: 40px;
        }
        
/*        header-lower */

        .header-container {
            position: relative;
        }

        .header-lower {
            width: 100%;
            height: 105px;
            background: rgb(39,31,45);
            padding: 0px;
            transition: all 0.3s ease-in-out; /* Hiệu ứng mượt mà */
        }

        .fixed-header {
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
            width: 100%;
        }

        .logo-box{
                padding-left: 50px;
                text-align: center;
        }
        .logo{
                position:relative;
                margin-bottom:10;
                font-family: 'Bebas Neue', sans-serif; /* Phông chữ trẻ trung */
                font-size: 65px; /* Chữ nhỏ hơn */
                a {
                    color: white; /* Màu chữ trắng */
                }
                text-shadow: 
                    -1.5px -1.5px 0 red, 
                    1.5px -1.5px 0 red, 
                    -1.5px 1.5px 0 red, 
                    1.5px 1.5px 0 red, 
                    3px 3px 5px rgba(0, 0, 0, 0.5); /* Viền rõ hơn */
                letter-spacing: -1px; /* Chữ gần nhau hơn */
                font-weight: 900; /* Chữ dày hơn */
        }

        .a2 {
            position: sticky;
            top: 0;
            width: 100%;
            height: 100%;
            margin: 0 auto;
            display: flex;
            justify-content: center;
        }

        .logo-box {
            position: relative;
        }

        .logo-box img {
            height: 50px;
        }

        .nav-outer {
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 20px;
            margin-left: 150px;
            gap: 20px;
        }
        
        .main-menu {
            height: 100%;
            align-items: center;
            justify-content: center;
            .navigation {
                height: 100%;
                justify-content: center;
                align-items: center; 
            }
        }
        .main-menu ul {
            display: flex;
            height: 100%;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .main-menu ul li {
            height: 100%;
            position: relative;
            height: 100%;
        }

        .main-menu ul li a {
            display: flex;
            height: 100%;
            color: white;
            padding: 10px 15px;
            align-items: center; /* Căn giữa theo chiều dọc */
            justify-content: center;
            text-decoration: none;
        }
        
/*        .main-menu ul .dropdown ul li a {
            height: 5%;
        }*/
        
        .dropdown{
            ul {
                height: 100%;
                li {
                    height: 50%;
                    a {
                        justify-content: flex-start;
                    }
                }
            }
        }

        .dropdown ul {
            width: 200px;
            display: none;
            position: absolute;
            background: red;
            padding-top: 10px;
            padding-bottom: 10px;
            margin-top: 0px;
            list-style: none;
        }

        .dropdown:hover ul {
            display: block;
        }
        
        .outer-box {
            height: 100%;
        }

        .cart-box {
            position: relative;
            height: 100%;
        }

        .cart-box-btn {
            background: none;
            height: 100%;
            border: none;
            cursor: pointer;
            font-size: 20px;
        }

        .cart-panel {
            display: none;
            height: 100%;
            position: absolute;
            right: 0;
            top: 100%;
            background: red;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 150px;
            justify-content: flex-start;
            li {
                list-style: none;
                a {
                    width: 100%;
                    justify-content: flex-start;
                    color: white;
                    text-decoration: none;
                    padding-left: 10px;
                }
            }
        }

        .cart-box:hover .cart-panel {
            display: block;
        }
        
        .btns-boxed{
            width: 100%;
            height: 100%;
            margin: 0px;
            padding: 0px;
            padding-top: 10px;
            padding-bottom: 10px;
            justify-content: center;
            text-align: center;
            li {
                    height: 50%;
                    a {
                        justify-content: flex-start;
                        text-align: left;
                        padding: 10 15;
                    }
                }
        }

        .btns-boxed a {
            display: block;
            text-align: center;
            text-decoration: none;
            color: black;
        }
        
        .flaticon-user {
            img{
                width: 40px;
            }
        }
    </style>
    <link rel="icon" type="image/png" href="<%=request.getContextPath()%>/assets/images/favicon.png" />
</head>
<body>
    <div class="header-container">
        <div class="content-fluid">
            <div class="contact-info">
                <ul class="info">
                    <li><a href="tel:0762 684 794"><img src="assets/images/phone.png" style="width: 20px; margin-right: 15px"></img>Call: 0762684794</a></li>
                    <li><a href="mailto:dinhviethieu2910@gmail.com"><img src="assets/images/mail.png" style="width: 20px; margin-right: 15px"></img>dinhviethieu2910@gmail.com</a></li>
                    
                </ul>
            </div>
            <div class="social-links">
                <a href="https://www.facebook.com/hieudepoet" target="_blank">
                    <img src="assets/images/facebook.png" alt="Facebook" />
                </a>
                <a href="https://www.youtube.com/@hieuinhviet9223" target="_blank">
                    <img src="assets/images/youtube.png" alt="YouTube" />
                </a>
                <a href="https://www.tiktok.com/@hieusesvd" target="_blank">
                    <img src="assets/images/tiktok.png" alt="TikTok" />
                </a>
                <a href="https://zalo.me" target="_blank">
                    <img src="assets/images/zalo.png" alt="Zalo" />
                </a>
                <div class="app-links">
                    <a href="https://apps.apple.com" target="_blank">
                        <img src="assets/images/app-1.png" alt="App Store" />
                    </a>
                    <a href="https://play.google.com" target="_blank">
                        <img src="assets/images/app-2.png" alt="Google Play" />
                    </a>
                </div>
            </div>
        </div>
        
        
        <!--header lower-->
        <!---------------->
        <div class="header-lower">
            <div class="auto-container a2">
                <div class="logo-box">
                    <div class="logo">
                        <a href="<%=request.getContextPath()%>/">SCORPION</a>
                    </div>
                </div>
                <div class="nav-outer">
                    <nav class="main-menu">
                        <ul class="navigation">
                            <li><a href="<%=request.getContextPath()%>/home.jsp">Trang chủ</a></li>
                            <li class="dropdown">
                                <a href="#">Phim</a>
                                <ul>
                                    <li><a href="<%=request.getContextPath()%>/phim.html">Phim đang chiếu</a></li>
                                    <li><a href="<%=request.getContextPath()%>/phim-sap-chieu.html">Phim sắp chiếu</a></li>
                                </ul>
                            </li>
                            <li><a href="<%=request.getContextPath()%>/lich-chieu.html">Lịch chiếu</a></li>
                            <li><a href="<%=request.getContextPath()%>/uu-dai.html">Ưu đãi</a></li>
                            <li><a href="<%=request.getContextPath()%>/cine.html">Hỗ trợ khách hàng</a></li>
                            <li><a href="<%=request.getContextPath()%>/lien-he.html">Liên hệ</a></li>
                            <li><a href="<%=request.getContextPath()%>/thanh-vien.html">Thành viên</a></li>
                        </ul>
                    </nav>
                    <div class="outer-box">
                        <div class="cart-box">
                            <button class="cart-box-btn"><span class="flaticon-user"><img src="assets/images/user.png" alt="user"></span></button>
                            <div class="cart-panel">
                                <ul class="btns-boxed">
                                    <li><a href="/signup.jsp">Đăng ký</a></li>
                                    <li><a href="/CinemaBooking/login.jsp">Đăng nhập</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>