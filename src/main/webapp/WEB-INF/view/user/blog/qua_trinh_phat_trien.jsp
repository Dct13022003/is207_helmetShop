<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="zxx" class="no-js">

                <head>
                    <!-- Mobile Specific Meta -->
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <!-- Favicon-->
                    <link rel="shortcut icon" href="img/fav.png">
                    <!-- Author Meta -->
                    <meta name="author" content="CodePixar">
                    <!-- Meta Description -->
                    <meta name="description" content="">
                    <!-- Meta Keyword -->
                    <meta name="keywords" content="">
                    <!-- meta character set -->
                    <meta charset="UTF-8">
                    <!-- Site Title -->
                    <title>Karma Shop</title>
                    <!--
    CSS
    ============================================= -->
                    <link rel="stylesheet" href="/client/css/linearicons.css">
                    <link rel="stylesheet" href="/client/css/font-awesome.min.css">
                    <link rel="stylesheet" href="/client/css/themify-icons.css">
                    <link rel="stylesheet" href="/client/css/bootstrap.css">
                    <link rel="stylesheet" href="/client/css/owl.carousel.css">
                    <link rel="stylesheet" href="/client/css/nice-select.css">
                    <link rel="stylesheet" href="/client/css/nouislider.min.css">
                    <link rel="stylesheet" href="/client/css/ion.rangeSlider.css" />
                    <link rel="stylesheet" href="/client/css/ion.rangeSlider.skinFlat.css" />
                    <link rel="stylesheet" href="/client/css/magnific-popup.css">
                    <link rel="stylesheet" href="/client/css/main.css">
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

                    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

                    <!-- Demo styles -->
                    <style>
                        html,
                        body {

                            height: 100%;
                        }

                        .swiper {
                            width: 100%;
                            height: 100%;
                        }

                        .swiper-slide {
                            position: relative;
                            text-align: center;
                            font-size: 18px;
                            background: #fff;
                            display: flex;
                            justify-content: center;
                            align-items: center;
                        }

                        .swiper-slide img {
                            display: block;
                            width: 100%;
                            height: 100%;
                            object-fit: cover;
                        }
                    </style>
                </head>

                <body>
                    <header class="header_area sticky-header">
                        <div class="main_menu">
                            <nav class="navbar navbar-expand-lg navbar-light main_box">
                                <div class="container">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <a class="navbar-brand logo_h" href="index.html"><img src="img/logo.png" alt=""></a>
                                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <!-- Collect the nav links, forms, and other content for toggling -->
                                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                                        <ul class="nav navbar-nav menu_nav ml-auto">
                                            <li class="nav-item "><a class="nav-link" href="/">Trang chủ</a></li>
                                            <li class="nav-item "><a class="nav-link" href="/products">Shop</a></li>
                                            <li class="nav-item "><a class="nav-link" href="/blog">Tin tức</a></li>
                                            <li class="nav-item"><a class="nav-link" href="/contact">Liên hệ</a></li>
                                        </ul>
                                        <c:if test="${not empty pageContext.request.userPrincipal}">
                                            <ul class="nav navbar-nav navbar-right">
                                                <li class="nav-item"><a href="/cart" class="cart"><span
                                                            class="ti-bag"></span></a>
                                                </li>
                                                <li class="nav-item">
                                                    <button class="search"><span class="lnr lnr-magnifier"
                                                            id="search"></span></button>
                                                </li>
                                                <li class="nav-item submenu dropdown align-items-center d-flex ">
                                                    <a href="#" class="nav-link dropdown-toggle " data-toggle="dropdown"
                                                        role="button" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fa fa-user-o" aria-hidden="true"></i>
                                                    </a>
                                                    <ul class="dropdown-menu" style="left: -280px; top:85px">
                                                        <li class="d-flex align-items-center flex-column"
                                                            style="min-width: 300px;">
                                                            <img style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden;"
                                                                src="/img/avatar/${sessionScope.avatar}" />
                                                            <div class="text-center my-3">
                                                                <c:out
                                                                    value="${sessionScope.firstName} ${sessionScope.lastName}" />
                                                            </div>
                                                        </li>
                                                        <li class="nav-item"><a class="nav-link" href="/profile">Thông
                                                                tin người
                                                                dùng</a></li>
                                                        <li class="nav-item"><a class="nav-link"
                                                                href="/history-orders">Lịch sử
                                                                mua hàng</a></li>
                                                        <li class="nav-item">
                                                            <form method="post" action="/logout">
                                                                <input type="hidden" name="${_csrf.parameterName}"
                                                                    value="${_csrf.token}" />
                                                                <button class="primary-btn"
                                                                    style="width: 100%;border: none;border-radius:0px;">Đăng
                                                                    xuất</button>
                                                            </form>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>


                                        </c:if>
                                        <c:if test="${empty pageContext.request.userPrincipal}">
                                            <a href="/login"
                                                class="a-login position-relative me-4 my-auto ml-5 color-gray">
                                                Đăng nhập
                                            </a>
                                        </c:if>

                                    </div>
                                </div>
                            </nav>
                        </div>
                        <div class="search_input" id="search_input_box">
                            <div class="container">
                                <form class="d-flex justify-content-between">
                                    <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                                    <button type="submit" class="btn" id="btn-searchButton"></button>
                                    <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
                                </form>
                            </div>
                        </div>
                    </header>
                    <!-- Swiper -->
                    <section style="height: 100%;">
                        <div class="wrap-content" style="height: 100%;">
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide" role="group">
                                        <img src="/client/img/blog/qua_trinh/qt1.jpg" alt="">
                                        <div class="container text-white" style="position: absolute;">
                                            <h1 class="text-white">2015</h1>
                                            <p>
                                                POC Helmets có tiền thân là một cửa hàng bán lẻ nón bảo hiểm tại Thành
                                                phố Hồ Chí Minh. Cửa hàng chuyên kinh doanh các mặt hàng nón bảo hiểm an
                                                toàn và đạt chuẩn chất lượng, bao gồm: nón bảo hiểm dành cho xe máy
                                                (Fullface, 3/4, 1/2), nón bảo hiểm thể thao và các phụ kiện khác. Và từ
                                                đây, ý tưởng về một thương hiệu nón bảo hiểm chất lượng cao dành cho
                                                người dùng Việt được ra đời.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide" role="group">
                                        <img src="/client/img/blog/qua_trinh/qt2.jpg" alt="">
                                        <div class="container text-white" style="position: absolute;">
                                            <h1 class="text-white">2019</h1>
                                            <p>
                                                Sau nhiều năm ấp ủ, thương hiệu POC - Power of Creation (Dịch: Sức mạnh
                                                của sự sáng tao) chính thức được thành lập vào năm 2019. POC ra đời với
                                                sứ mệnh cung cấp các sản phẩm nón bảo hiểm chất lượng, thời trang và
                                                luôn đề cao trải nghiệm của người dùng.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide" role="group">
                                        <img src="/client/img/blog/qua_trinh/qt3.jpg" alt="">
                                        <div class="container text-white" style="position: absolute;">
                                            <h1 class="text-white">2021</h1>
                                            <p>
                                                Trên đà phát triển, POC mở rộng quy mô phân phối ra khắp các quận của
                                                TP. Hồ Chí Minh, khu vực các tỉnh miền Đông Nam Bộ, Tây Nam Bộ và khu
                                                vực miền Trung. Thương hiệu nón bảo hiểm POC đã trở nên phổ biến và tạo
                                                được cho mình một chỗ đứng vững chắc trong ngành.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/client/img/blog/qua_trinh/qt4.jpg" alt="">
                                        <div class="container text-white" style="position: absolute;">
                                            <h1 class="text-white">2022</h1>
                                            <p>
                                                Thành lập công ty sản xuất nón bảo hiểm POC - Power of Creation, khởi
                                                đầu chuỗi phát triển quy mô kinh doanh. Xưởng sản xuất được đầu tư với
                                                công nghệ tiên tiến, máy móc hiện đại, nhân lực tận tâm, cam kết sự phát
                                                triển bền vững của doanh nghiệp.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/client/img/blog/qua_trinh/dinh-huong-phat-trien-poc-helmets.jpg"
                                            alt="">
                                        <div class="container text-white" style="position: absolute;">
                                            <h1 class="text-white">2023</h1>
                                            <p>
                                                Tháng 7 năm 2023 POC cho ra mắt mẫu nón bảo hiểm xe máy 1/2 mang tên POC
                                                Creation - sản phẩm đầu tiên được sản xuất và hoàn thiện tại cơ sở sản
                                                xuất của POC Helmets. POC Creation đánh dấu cột mốc quan trọng trong
                                                hành trình chinh phục thị trường trong nước và quốc tế.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="/client/img/blog/qua_trinh/ra-mat-poc-creation-1.jpg" alt="">
                                        <div class="container text-white" style="position: absolute;">
                                            <h1 class="text-white">Định hướng phát triển</h1>
                                            <p>
                                                Với tầm nhìn trở thành thương hiệu quốc gia uy tín hàng đầu trong ngành
                                                nón bảo hiểm và hướng đến thị trường quốc tế, POC Helmets sẽ tiếp tục
                                                kiên trì theo đuổi triết lý trung thực, sáng tạo và tận tâm với khách
                                                hàng, tạo ra nhiều giá trị thiết thực, bền vững cho cộng đồng.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-pagination"></div>



                            </div>
                        </div>

                    </section>






                    <!-- start footer Area -->
                    <jsp:include page="../layout/footer.jsp" />
                    <!-- End footer Area -->

                    <script src="/client/js/vendor/jquery-2.2.4.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
                        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
                        crossorigin="anonymous"></script>
                    <script src="/client/js/vendor/bootstrap.min.js"></script>
                    <script src="/client/js/jquery.ajaxchimp.min.js"></script>
                    <script src="/client/js/jquery.nice-select.min.js"></script>
                    <script src="/client/js/jquery.sticky.js"></script>
                    <script src="/client/js/nouislider.min.js"></script>
                    <script src="/client/js/countdown.js"></script>
                    <script src="/client/js/jquery.magnific-popup.min.js"></script>
                    <script src="/client/js/owl.carousel.min.js"></script>
                    <!--gmaps Js-->
                    <script
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
                    <script src="/client/js/gmaps.min.js"></script>
                    <script src="/client/js/main.js"></script>
                    <!-- Swiper JS -->
                    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>


                    <!-- Initialize Swiper -->
                    <script>
                        var swiper = new Swiper(".mySwiper", {
                            direction: "vertical",
                            mousewheel: true,
                        });
                    </script>
                </body>

                </html>