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
                    <link rel="stylesheet" href="/client/css/gioi_thieu_chung.css">
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
                                        <img src="/img/slider/banner3.png" alt="">
                                        <div class="container text-white" style="position: absolute;">

                                        </div>
                                    </div>
                                    <div class="swiper-slide about_us" role="group">
                                        <div class="" style="position: absolute;">
                                            <div class="container">
                                                <div class="about_us--wrap">
                                                    <div class="about_us--content">
                                                        <h1 style="color: #febe10;">GIỚI THIỆU CHUNG</h1>
                                                        <p style="color: #febe10;font-size: 16px;">
                                                            POC (Power of Creation) là tên tuổi nổi bật trong ngành nón
                                                            bảo hiểm tại thị trường Việt Nam. Thương hiệu chuyên cung
                                                            cấp các dòng sản phẩm cao cấp với tính năng vượt trội cùng
                                                            thiết kế tối ưu. Ra đời vào tháng 8/2019, công ty đã nhanh
                                                            chóng tạo được chỗ đứng vững chắc trên thị trường.

                                                        </p>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="swiper-slide" style="flex-direction: column;" role="group">
                                        <div class="fp-overflow">
                                            <div class="container">
                                                <div class="about_action--wrap d-wrap">
                                                    <div class="about_action--lf d-item">
                                                        <div class="about_action--lf-wrap">
                                                            <h1 style="font-size: x-large;font-weight: 700;">LĨNH VỰC
                                                                HOẠT ĐỘNG</h1>
                                                            <p>
                                                                Thành lập từ tháng 8/2019, POC (Power of Creation) đã
                                                                gây được tiếng vang trong ngành nón bảo hiểm với nhiều
                                                                dòng sản phẩm an toàn, đẳng cấp và mang đậm dấu ấn sáng
                                                                tạo.
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="about_action--rt d-item">
                                                        <div class="about_action--rt-wrap">
                                                            <div class="about_action--rt-img"> <img loading="lazy"
                                                                    width="800" height="825"
                                                                    src="https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc.png"
                                                                    class="attachment-full size-full lazyloaded"
                                                                    alt="Lĩnh vực hoạt động poc helmets"
                                                                    decoding="async"
                                                                    sizes="(max-width: 800px) 100vw, 800px"
                                                                    srcset="https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc.png 800w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-291x300.png 291w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-768x792.png 768w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-766x790.png 766w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-400x413.png 400w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-582x600.png 582w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-388x400.png 388w"
                                                                    data-ll-status="loaded"><noscript><img
                                                                        loading="lazy" width="800" height="825"
                                                                        src="https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc.png"
                                                                        class="attachment-full size-full"
                                                                        alt="Lĩnh vực hoạt động poc helmets"
                                                                        decoding="async"
                                                                        srcset="https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc.png 800w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-291x300.png 291w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-768x792.png 768w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-766x790.png 766w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-400x413.png 400w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-582x600.png 582w, https://poc-helmet.com/wp-content/uploads/2024/01/linh-vuc-hoat-dong-poc-388x400.png 388w"
                                                                        sizes="(max-width: 800px) 100vw, 800px" /></noscript>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="swiper-slide" role="group">
                                        <div class="container">
                                            <div class="about_see--wrap">
                                                <div class="about_see--list">
                                                    <div class="about_see--item">
                                                        <h1>Tầm nhìn</h1>
                                                        <p> Trở thành thương
                                                            hiệu quốc gia uy tín hàng đầu trong ngành nón
                                                            bảo hiểm thể thao và xe máy cao cấp tại Việt
                                                            Nam, hướng tới chinh phục thị trường quốc
                                                            tế.<br>
                                                        </p>
                                                    </div>
                                                    <div class="about_see--item">
                                                        <div class="title-sm3 fw-7 t-up"> SỨ MỆNH</div>
                                                        <div class="note-text fl-Segoe"> Thương hiệu POC cam
                                                            kết cung cấp những dòng nón bảo hiểm xe máy và
                                                            thể thao chất lượng, an toàn, đáp ứng tốt thị
                                                            hiếu khách hàng, vươn lên trở thành một trong
                                                            những công ty hàng đầu Việt Nam, qua đó góp phần
                                                            phát triển kinh tế đất nước.</div>
                                                    </div>
                                                    <div class="about_see--item">
                                                        <div class="title-sm3 fw-7 t-up"> TRIẾT LÝ KINH
                                                            DOANH</div>
                                                        <div class="note-text fl-Segoe"> 1. Sử dụng nguyên
                                                            liệu chất lượng cao, kiểm soát quy trình sản
                                                            xuất chặt chẽ<br> 2. Tối ưu hóa giá trị sản phẩm
                                                            về chất lượng, kiểu dáng, tính năng, phù hợp với
                                                            nhu cầu sử dụng của người dùng<br> 3. Lợi ích
                                                            của khách hàng là ưu tiên trong mọi ưu tiên, tạo
                                                            nên sự hài lòng từ dịch vụ bán hàng đến chất
                                                            lượng sản phẩm<br> 4. Duy trì đạo đức kinh
                                                            doanh, sử dụng uy tín thương hiệu là lợi thế
                                                            cạnh tranh<br> 5. Tạo mối quan hệ hợp tác win -
                                                            win với các đối tác, khách hàng để cùng nhau
                                                            phát triển và đạt được thành công chung</div>
                                                    </div>
                                                    <div class="about_see--item">
                                                        <div class="title-sm3 fw-7 t-up"> VĂN HÓA DOANH
                                                            NGHIỆP</div>
                                                        <div class="note-text fl-Segoe"> Mọi thành viên của
                                                            POC đều tin tưởng vào sức mạnh của sự sáng tạo.
                                                            Trong hành trình phát triển của công ty, chúng
                                                            tôi cùng đoàn kết hướng về mục tiêu chung là hết
                                                            lòng phục vụ khách hàng, từ đó vững tâm thực
                                                            hiện sứ mệnh thương hiệu.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

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