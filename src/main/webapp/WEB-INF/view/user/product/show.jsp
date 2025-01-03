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
                    <link rel="stylesheet" href="/client/css/owl.carousel.css">
                    <link rel="stylesheet" href="/client/css/font-awesome.min.css">
                    <link rel="stylesheet" href="/client/css/themify-icons.css">
                    <link rel="stylesheet" href="/client/css/nice-select.css">
                    <link rel="stylesheet" href="/client/css/nouislider.min.css">
                    <link rel="stylesheet" href="/client/css/bootstrap.css">
                    <link rel="stylesheet" href="/client/css/main.css">
                    <style>
                        /* Định dạng ảnh */
                        .zoom-image {
                            width: 300px;
                            height: auto;
                            transition: transform 0.3s ease;
                            /* Hiệu ứng chuyển đổi mượt mà */
                        }

                        /* Khi hover vào ảnh */
                        .zoom-image:hover {
                            transform: scale(1.1);
                            /* Phóng to 10% */
                        }
                    </style>
                </head>

                <body id="category">

                    <!-- Start Header Area -->
                    <jsp:include page="../layout/header.jsp" />
                    <!-- End Header Area -->

                    <!-- Start Banner Area -->
                    <section class="banner-area organic-breadcrumb">
                        <div class="container">
                            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                                <div class="col-first">
                                    <h1>Trang mua hàng</h1>
                                    <nav class="d-flex align-items-center">
                                        <a href="/">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                                        <a href="#">Shop<span class="lnr lnr-arrow-right"></span></a>
                                        <a href="/products">Sản phẩm</a>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Banner Area -->
                    <div class="container pb-5">
                        <div class="row">
                            <div class="col-xl-3 col-lg-4 col-md-5">
                                <div class="sidebar-categories">
                                    <div class="head">Bộ lọc</div>
                                    <ul class="main-categories">
                                        <li class="main-nav-list"><a href="/products"><span
                                                    class="lnr lnr-arrow-right"></span>All</a>
                                        </li>
                                        <c:forEach var="category" items="${categoryShow}">
                                            <li class="main-nav-list"><a href="/products?category=${category.id}"><span
                                                        class="lnr lnr-arrow-right"></span>${category.name}</a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>

                            </div>

                            <div class="col-xl-9 col-lg-8 col-md-7">
                                <!-- Start Filter Bar -->
                                <c:if test="${empty productShow}">
                                    <h1 class="text-primary" style="text-align: center;">
                                        <Strong>Không có sản phẩm nào</Strong>
                                    </h1>


                                </c:if>
                                <c:if test="${!empty productShow}">
                                    <div class="filter-bar d-flex flex-wrap align-items-center">
                                        <div class="sorting mr-auto">
                                            <select id="sortFilter">
                                                <option value="">Mặc định</option>
                                                <option value="1">Thấp đến cao</option>
                                                <option value="2">Cao đến thấp</option>
                                            </select>
                                        </div>
                                        <div class="pagination">

                                            <a href="/products?page=${currentPage - 1}&${queryString}"
                                                class="${1 eq currentPage ? 'prev-arrow disabled' : 'prev-arrow'} ">
                                                <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                                            </a>
                                            <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                                <a href="/products?page=${loop.index + 1}&${queryString}"
                                                    class="${(loop.index + 1) eq currentPage ? 'active' : ''}">${loop.index
                                                    +
                                                    1}</a>
                                            </c:forEach>
                                            <a href="/products?page=${currentPage + 1}&${queryString}"
                                                class="${totalPages eq currentPage ? 'next-arrow disabled' : 'next-arrow'} "><i
                                                    class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <!-- End Filter Bar -->
                                    <!-- Start Best Seller -->
                                    <section class="lattest-product-area pb-40 category-list">
                                        <div class="row">

                                            <!-- single product -->
                                            <c:forEach var="product" items="${productShow}">
                                                <div class="col-lg-4 col-md-6">
                                                    <div class="single-product">
                                                        <img class="img-fluid zoom-image"
                                                            src="/img/product/${product.avatar}"
                                                            style="min-height: 340px; object-fit: contain;" alt="">
                                                        <div class="product-details">
                                                            <h6 class="text-">${product.categoryDTO.name}</h6>

                                                            <div class="price d-flex align-items-center ">
                                                                <h6 style="color: #ffba00;">${product.code}</h6>
                                                                <fmt:formatNumber type="number"
                                                                    value="${product.product_sizeDTOs[0].price}" /> VNĐ

                                                            </div>
                                                            <div class="prd-bottom">

                                                                <a href="" class="social-info">
                                                                    <span class="ti-bag"></span>
                                                                    <p class="hover-text">add to bag</p>
                                                                </a>
                                                                <a href="/product/${product.id}" class="social-info">
                                                                    <span class="lnr lnr-move"></span>
                                                                    <p class="hover-text">view more</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>

                                            <!-- single product -->

                                        </div>
                                    </section>
                                    <!-- End Best Seller -->
                                    <!-- Start Filter Bar -->
                                    <div class="filter-bar d-flex flex-wrap align-items-center justify-content-end">
                                        <div class="pagination">

                                            <a href="/products?page=${currentPage - 1}&${queryString}"
                                                class="${1 eq currentPage ? 'prev-arrow disabled' : 'prev-arrow'} ">
                                                <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                                            </a>
                                            <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                                <a href="/products?page=${loop.index + 1}&${queryString}"
                                                    class="${(loop.index + 1) eq currentPage ? 'active' : ''}">${loop.index
                                                    +
                                                    1}</a>
                                            </c:forEach>
                                            <a href="/products?page=${currentPage + 1}&${queryString}"
                                                class="${totalPages eq currentPage ? 'next-arrow disabled' : 'next-arrow'} "><i
                                                    class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
                                        </div>

                                    </div>
                                    <!-- End Filter Bar -->


                                </c:if>

                            </div>
                        </div>
                    </div>



                    <!-- start footer Area -->
                    <jsp:include page="../layout/footer.jsp" />
                    <!-- End footer Area -->

                    <!-- Modal Quick Product View -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="container relative">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <div class="product-quick-view">
                                    <div class="row align-items-center">
                                        <div class="col-lg-6">
                                            <div class="quick-view-carousel">
                                                <div class="item" style="background: url(img/organic-food/q1.jpg);">

                                                </div>
                                                <div class="item" style="background: url(img/organic-food/q1.jpg);">

                                                </div>
                                                <div class="item" style="background: url(img/organic-food/q1.jpg);">

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="quick-view-content">
                                                <div class="top">
                                                    <h3 class="head">Mill Oil 1000W Heater, White</h3>
                                                    <div class="price d-flex align-items-center"><span
                                                            class="lnr lnr-tag"></span> <span
                                                            class="ml-10">$149.99</span>
                                                    </div>
                                                    <div class="category">Category: <span>Household</span></div>
                                                    <div class="available">Availibility: <span>In Stock</span></div>
                                                </div>
                                                <div class="middle">
                                                    <p class="content">Mill Oil is an innovative oil filled radiator
                                                        with
                                                        the most
                                                        modern technology. If you are
                                                        looking for something that can make your interior look awesome,
                                                        and
                                                        at the same
                                                        time give you the pleasant
                                                        warm feeling during the winter.</p>
                                                    <a href="#" class="view-full">View full Details <span
                                                            class="lnr lnr-arrow-right"></span></a>
                                                </div>
                                                <div class="bottom">
                                                    <div class="color-picker d-flex align-items-center">Color:
                                                        <span class="single-pick"></span>
                                                        <span class="single-pick"></span>
                                                        <span class="single-pick"></span>
                                                        <span class="single-pick"></span>
                                                        <span class="single-pick"></span>
                                                    </div>
                                                    <div class="quantity-container d-flex align-items-center mt-15">
                                                        Quantity:
                                                        <input type="text" class="quantity-amount ml-15" value="1" />
                                                        <div class="arrow-btn d-inline-flex flex-column">
                                                            <button class="increase arrow" type="button"
                                                                title="Increase Quantity"><span
                                                                    class="lnr lnr-chevron-up"></span></button>
                                                            <button class="decrease arrow" type="button"
                                                                title="Decrease Quantity"><span
                                                                    class="lnr lnr-chevron-down"></span></button>
                                                        </div>

                                                    </div>
                                                    <div class="d-flex mt-20">
                                                        <a href="#" class="view-btn color-2"><span>Add to
                                                                Cart</span></a>
                                                        <a href="#" class="like-btn"><span
                                                                class="lnr lnr-layers"></span></a>
                                                        <a href="#" class="like-btn"><span
                                                                class="lnr lnr-heart"></span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <script src="/client/js/vendor/jquery-2.2.4.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
                        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
                        crossorigin="anonymous"></script>
                    <script src="/client/js/vendor/bootstrap.min.js"></script>
                    <script src="/client/js/jquery.ajaxchimp.min.js"></script>
                    <script src="/client/js/jquery.nice-select.min.js"></script>
                    <script src="/client/js/jquery.sticky.js"></script>
                    <script src="/client/js/nouislider.min.js"></script>
                    <script src="/client/js/jquery.magnific-popup.min.js"></script>
                    <script src="/client/js/owl.carousel.min.js"></script>
                    <!--gmaps Js-->
                    <script
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
                    <script src="/client/js/gmaps.min.js"></script>
                    <script src="/client/js/main.js"></script>
                    <script src="/client/js/custom.js"></script>
                    <style>
                        a.disabled {
                            pointer-events: none;

                            color: rgb(193, 190, 190);

                            cursor: not-allowed;

                            text-decoration: none;

                        }
                    </style>

                </body>

                </html>