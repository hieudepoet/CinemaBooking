<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet" />
        
        <style>
            .main-footer{
                position:relative;
                background-color:rgb(39,31,45);
            }

            .main-footer .pattern-layer-one{
                    position:absolute;
                    left:0px;
                    bottom:80px;
                    width:449px;
                    height:300px;
                    background-repeat:no-repeat;
            }

            .main-footer .pattern-layer-two{
                    position:absolute;
                    right:0px;
                    bottom:80px;
                    width:472px;
                    height:300px;
                    background-repeat:no-repeat;
            }

            .main-footer .widgets-section{
                    justify-content: center;
                    position:relative;
                    text-align:center;
                    padding:20px 0px 50px;
                    margin-left: 152px;
                    margin-right: 152px;
                    width: 80%;
            }
            
            .main-footer .logo{
                position:relative;
                margin-bottom:10;
                font-family: 'Bebas Neue', sans-serif; /* Phông chữ trẻ trung */
                font-size: 70px; /* Chữ nhỏ hơn */
                color: white; /* Màu chữ trắng */
                text-shadow: 
                    -1.5px -1.5px 0 red, 
                    1.5px -1.5px 0 red, 
                    -1.5px 1.5px 0 red, 
                    1.5px 1.5px 0 red, 
                    3px 3px 5px rgba(0, 0, 0, 0.5); /* Viền rõ hơn */
                letter-spacing: -1px; /* Chữ gần nhau hơn */
                font-weight: 900; /* Chữ dày hơn */
            }
            
            .main-footer .footer-contact{
                color: white;
                text-align: left;
                ul {
                    padding: 0;
                    margin: 0;
                    width: 260px;
                }
                li {
                    font-size: 16px;
                    text-align: left;
                }
            }

            .main-footer ul{
                    position:relative;
            }

            .main-footer ul li{
                    text-decoration: none;
                    position:relative;
                    text-align:left;
                    line-height:1.9em;
                    color:white;
                    padding-left:60;
                    margin-right:100;
                    margin-bottom:30;
                    display:block;
            }

            .main-footer ul li:last-child{
                    margin-right:0;
            }

            .main-footer ul li a{
                    position:relative;
                    display:inline-block;
                    color:white;
            }

            .main-footer ul li .icon{
                    position:absolute;
                    left:0px;
                    top:0px;
                    line-height:1em;
            }

            .main-footer ul li a:hover{
                    color:rgb(252,27,27);
            }

            .main-footer .social-box{
                    position:relative;
                    padding: 30px 0px !important;
            }

            .main-footer .social-box li{
                    position:relative;
                    margin:0px 6px;
                    display:inline-block;
            }

            .main-footer .social-box li a{
                    position:relative;

                    line-height:40px;
                    border-radius:50px;
                    display:inline-block;
                    color:white;
            }

            .main-footer .footer-bottom{
                    font-family: 'Poppins', sans-serif;
                    font-size: 15px;
                    position:relative;
                    padding:20px 0px;
                    text-align:center;
                    background-color:#010a2e;
            }

            .main-footer .footer-bottom .widgets-section a {
                text-decoration: none; /* Loại bỏ gạch chân */
                color: #337ab7;
                a:hover {
                    color: #23527c;
                }
            }

            .main-footer .footer-bottom .copyright{
                    text-align: center;
                    position:relative;
                    font-size:1em;
                    color: white;
            }

            .main-footer .footer-bottom .copyright a{
                    position:relative;
                    text-decoration: none;
                    color : red;
            }

            .main-footer .footer-bottom .copyright a:hover{
                    color:white;
            }
        </style>
    </head>
    <body>
        <footer class="main-footer">
            <div class="pattern-layer-one" style="background-image: url(/assets/images/pattern-12.png)"></div>
            <div class="pattern-layer-two" style="background-image: url(/assets/images/pattern-13.png)"></div>
            <div class="auto-container">
                <div class="widgets-section">
                    <div class="logo">
                        <a alt="scorpioncinema">SCORPION</a>
                    </div>
                    <div class="footer-contact">
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <h3>SCORPIONCINEMAS</h3>
                            <ul>
                                        <li><a href="/chinh-sach/dieu-khoan-bao-mat-1.html">&gt;&gt; ĐIỀU KHOẢN BẢO MẬT</a></li>
                                        <li><a href="/chinh-sach/dieu-khoan-chung-2.html">&gt;&gt; ĐIỀU KHOẢN CHUNG</a></li>
                                        <li><a href="/chinh-sach/dieu-khoan-giao-dich-3.html">&gt;&gt; ĐIỀU KHOẢN GIAO DỊCH</a></li>
                                        <li><a href="/chinh-sach/chinh-sach-thanh-toan-4.html">&gt;&gt; CHÍNH SÁCH THANH TOÁN</a></li>
                                        <li><a href="/chinh-sach/chinh-sach-thanh-toan-va-hoan-ve-5.html">&gt;&gt; CHÍNH SÁCH THANH TOÁN VÀ HOÀN VÉ</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <h3>GIỚI THIỆU</h3>
                            <ul>
                                <li>
                                    <a href="/gioi-thieu.html">&gt;&gt; VỀ CHÚNG TÔI</a>
                                </li>
                                <li>
                                    <a href="/tuyen-dung.html">&gt;&gt; TUYỂN DỤNG</a>
                                </li>
                            </ul>

                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <h3>HỖ TRỢ</h3>
                            <ul>
                                <li>
                                    <a href="/lien-he.html">&gt;&gt; LIÊN HỆ - GÓP Ý</a>
                                </li>
                                <li>
                                    <a href="/lien-he.html">&gt;&gt; HỐ TRỢ KHÁCH HÀNG</a>
                                </li>
                                <li>
                                    <a href="/lien-he.html">&gt;&gt; HỢP TÁC QUẢNG CÁO</a>
                                </li>
                            </ul>
                            <a href="http://online.gov.vn/Home/WebDetails/116578" target="_blank"> <img src="assets/images/bocongthuong.png" style="max-width : 240px; margin-top: 10px"></a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <h3>KẾT NỐI VỚI SCORPIONCINEMA</h3>
                            <ul class="social-box">
                                <li><a href="https://www.facebook.com/hieudepoet" target="_blank"><img src="assets/images/facebook.png" style="max-width:40px"></a></li>
                                <li><a href="https://www.youtube.com/@hieuinhviet9223" target="_blank"><img src="assets/images/youtube.png" style="max-width:40px"></a></li>
                                <li><a href="https://www.tiktok.com/@hieusesvd" target="_blank"><img src="assets/images/tiktok.png" style="max-width:40px"></a></li>
                                <li><a href="https://zalo.me" target="_blank"><img src="assets/images/zalo.png" style="max-width:40px"></a></li>
                            </ul>
                            <h3>DOWNLOAD APP</h3>
                            <ul class="social-box">
                                <li style="max-width:65%">
                                    <a href="https://apps.apple.com" target="_blank"><img src="assets/images/app-1.png" style="max-height: 40px;"></a>

                                </li>
                                <li style="max-width:65%">
                                    <a href="https://play.google.com" target="_blank"><img src="assets/images/app-2.png" style="max-height: 40px;"></a>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <!-- Social Box -->

                </div>
            </div>

            <!-- Footer Bottom -->
            <div class="footer-bottom">
                <div class="auto-container" style="background:#fff;max-width:100%">
                    <div class="widgets-section">
                        <h3 style="font-size: 20px"><b>CÔNG TY TNHH DỊCH VỤ GIẢI TRÍ HIEUDV</b></h3>
                        <p>
                            Giấy Chứng nhận đăng ký doanh nghiệp: 29102005 Ngày cấp 25/2/2025. Đăng ký thay đổi lần thứ 2 ngày 26/2/2025

                        </p>
                        <p>
                            Cơ quan cấp : Phòng Đăng ký kinh doanh - Sở Tài chính Kế hoạch Tỉnh Quảng Nam
                        </p>
                        <p>
                            Địa chỉ: 2500 Hùng Vương, Thành phố Tam Kỳ, Tỉnh Quảng Nam
                        </p>
                        <p>
                            Điện thoại : <a href="tel: 0762684794"> 0762684794</a>
                        </p>
                    </div>
                </div>
                <div class="auto-container">
                    <div class="copyright">© 2025 Scorpion Cinemas. All Rights Reserved. Designed By <a href="https://github.com/hiedepoet">hieudepoet</a></div>
                </div>
            </div>
        </footer>
    </body>
</html>
