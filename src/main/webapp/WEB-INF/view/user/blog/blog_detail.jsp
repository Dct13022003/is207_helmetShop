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
                    <link rel="stylesheet" href="/client/css/blog_detail.css">
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
                    <!-- Demo styles -->
                    <style>
                        .image-container {
                            overflow: hidden;
                            width: 100%;

                        }

                        .image-container img {
                            width: 100%;
                            height: 200px;
                            object-fit: cover;
                            transition: transform 0.3s ease;
                            /* Tạo hiệu ứng mượt */
                        }

                        .image-container img:hover {
                            transform: scale(1.1);
                            /* Phóng to ảnh khi hover */
                        }

                        .swiper {
                            width: 100%;
                            height: 100%;
                        }

                        .swiper-slide {
                            text-align: center;
                            font-size: 18px;
                            background: #fff;
                            display: flex;
                            justify-content: center;
                            align-items: center;
                        }


                        .multiline-truncate {
                            display: -webkit-box;
                            /* Định nghĩa box layout */
                            -webkit-line-clamp: 2;
                            /* Giới hạn số dòng (ở đây là 2 dòng) */
                            -webkit-box-orient: vertical;
                            /* Hướng của box */
                            overflow: hidden;
                            /* Ẩn phần nội dung tràn ra */
                            text-overflow: ellipsis;
                            /* Thêm dấu "..." */
                        }
                    </style>
                </head>

                <body>
                    <header class="header_area sticky-header">
                        <div class="main_menu">
                            <nav class="navbar navbar-expand-lg navbar-light main_box">
                                <div class="container">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <a class="navbar-brand logo_h" href="index.html"><img
                                            src="/img/logo/logo-poc-helmets-2.png" alt=""></a>
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
                    <section style="padding-bottom: 30px ;">
                        <div class="banner-post left">
                            <div class="banner-post-bg">
                                <img src="/img/blog/${blog_detail.banner}" style="object-fit: fill;" alt="">
                            </div>
                            <div class="container">
                                <div class="banner-post-wrap">
                                    <div class="banner-post-content">
                                        <div class="">
                                            <h1 class="text-white"
                                                style="font-weight: 700;font-size: 40px;line-height: 1.3;">
                                                ${blog_detail.title}</h1>
                                        </div>
                                        <div style="font-size: 16px;">
                                            <p class="text-white">${blog_detail.shortDescription}</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </section style="padding-bottom: 30px ;">
                    <section>
                        <div class="container">
                            <div class="mona-content">
                                ${blog_detail.content}
                            </div>

                        </div>
                    </section>

                    <section>
                        <div class="container">
                            <h2 style="margin-left:0px">
                                <strong>Bài viết liên quan</strong>
                            </h2>
                            <div class="swiper mySwiper">
                                <div class="swiper-wrapper">
                                    <c:forEach var="blog" items="${listBlogs}">
                                        <div class="swiper-slide" style="display: block;">

                                            <div class="image-container">
                                                <a href="/blog/blog-detail/${blog.id}">
                                                    <img src="/img/blog/${blog.banner}" alt="">
                                                </a>
                                            </div>
                                            <div class="card-body">
                                                <p>${blog.created_at}</p>
                                                <p class="card-text multiline-truncate">${blog.title}</p>
                                            </div>


                                        </div>


                                    </c:forEach>


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
                            slidesPerView: 3,
                            spaceBetween: 30,
                            pagination: {
                                el: ".swiper-pagination",
                                clickable: true,
                            },
                        });
                    </script>

                </body>

                </html>