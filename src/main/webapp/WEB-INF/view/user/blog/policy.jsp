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
                    <style>
                        /* Định dạng nền */


                        .banner-section {
                            background: url('/img/slider/banner.png') no-repeat center center/cover;
                            /* Đổi 'image.png' thành ảnh của bạn */
                            color: white;
                            padding: 100px 20px;
                            position: relative;
                            min-height: 100vh;
                            /* Chiều cao full màn hình */
                        }

                        /* Tạo overlay mờ */
                        .banner-section::before {
                            content: "";
                            position: absolute;
                            top: 0;
                            left: 0;
                            width: 100%;
                            height: 100%;
                            background-color: rgba(0, 0, 0, 0.6);
                            /* Màu đen mờ */
                            z-index: 1;
                        }

                        /* Nội dung bên trong */
                        .content {
                            position: relative;
                            top: 40px;
                            z-index: 2;
                            max-width: 100%;

                        }

                        /* Tùy chỉnh chữ */
                        .highlight {
                            color: #fcb900;
                            /* Màu vàng */
                            font-weight: bold;
                        }

                        h1 {

                            font-size: calc(1rem + 2vw);
                            font-weight: 700;
                        }

                        h2 {
                            margin-top: 30px;
                            font-size: 2rem;
                        }

                        p {
                            font-size: 1.2rem;
                            line-height: 1.8;
                        }
                    </style>

                </head>

                <body>

                    <!-- Start Header Area -->
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
                    <!-- End Header Area -->
                    <section>
                        <div class="banner-section d-flex align-items-center">
                            <div class="container">
                                <div class="content">
                                    <h1 class="text-white d-flex justify-content-center">AN TOÀN, NIỀM TIN &amp; CHẤT
                                        LƯỢNG</h1>
                                    <p>
                                        <span class="highlight">POC Helmets</span> – Thương hiệu có uy tín tại thị
                                        trường Việt Nam trong ngành nón bảo hiểm.
                                        Chúng tôi luôn tự hào là doanh nghiệp cung cấp những sản phẩm mũ bảo hiểm có
                                        chất lượng cao.
                                        Với slogan “Power of creation”, chúng tôi không ngừng nghiên cứu và sản xuất nên
                                        những sản phẩm mang tính đột phá, đậm chất thương hiệu.
                                    </p>
                                    <h2 class="text-white">An toàn</h2>
                                    <p>
                                        Sức khỏe và sự an toàn của người dùng luôn được <span class="highlight">POC
                                            Helmets</span> chú trọng và đặt lên hàng đầu.
                                        Nón bảo hiểm POC được thiết kế và sản xuất với nhiệm vụ bảo vệ vùng đầu người
                                        dùng khi tham gia giao thông và chơi thể thao.
                                        Dù bạn tham gia chơi thể thao hay di chuyển bằng các phương tiện giao thông 2
                                        bánh thì nón bảo hiểm là trang bị cần thiết.
                                        Các tình huống va chạm có thể xảy ra bất cứ lúc nào và không có sự báo trước. Do
                                        đó, đội mũ bảo hiểm là điều cần được chú trọng khi
                                        di chuyển bằng các phương tiện giao thông hoặc chơi thể thao. Hãy bảo vệ sức
                                        khỏe và nâng cao an toàn bằng cách sử dụng nón bảo hiểm.
                                    </p>
                                    <h2 class="text-white">Niềm tin</h2>
                                    <p>
                                        POC tự tin là một thương hiệu đáng tin cậy trong lĩnh vực sản xuất và phân phối
                                        mũ bảo hiểm, mũ bảo hiểm thể thao, mũ bảo hiểm xe máy. Từ ngày ra mắt đến nay,
                                        POC đã vinh hạnh nhận được sự tín nhiệm cũng như sự yêu thích của người tiêu
                                        dùng. Niềm tin của quý khách hàng chính là động lực giúp POC tiếp tục hướng về
                                        phía trước và không ngừng phát triển
                                    </p>
                                    <h2 class="text-white">Chất lượng</h2>
                                    <p>
                                        Tự hào là thương hiệu cung cấp các sản phẩm nón bảo hiểm có chất lượng cao. POC
                                        luôn không ngừng cải tiến công nghệ vào quá trình sản xuất nhằm nâng cao chất
                                        lượng sản phẩm. Các sản phẩm của POC trải qua hàng loạt quy trình kiểm định và
                                        đạt được chứng nhận chất lượng theo tiêu chuẩn CE En 1078 dành cho xe đạp và
                                        tiêu chuẩn QCVN 2:2008/BKHCN dành cho xe máy.
                                        Hiện tại và trong tương lai, POC luôn cống hiến hết mình vì sự an toàn của người
                                        dùng. Chúng tôi cam kết sẽ không ngừng cải tiến, nâng cấp chất lượng chất sản
                                        phẩm cũng như mang lại những giá trị tốt nhất cho cộng đồng…
                                    </p>
                                </div>
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

                    <script>
                        var swiper = new Swiper(".mySwiper", {
                            loop: true, autoplay: {
                                delay: 4000, // 2 giây
                                disableOnInteraction: false,
                            }
                        });

                    </script>
                </body>

                </html>