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
                    <link rel="stylesheet" href="/client/css/themify-icons.css">
                    <link rel="stylesheet" href="/client/css/font-awesome.min.css">
                    <link rel="stylesheet" href="/client/css/nice-select.css">
                    <link rel="stylesheet" href="/client/css/nouislider.min.css">
                    <link rel="stylesheet" href="/client/css/bootstrap.css">
                    <link rel="stylesheet" href="/client/css/main.css">
                </head>

                <body>

                    <!-- Start Header Area -->
                    <jsp:include page="../layout/header.jsp" />
                    <!-- End Header Area -->

                    <!-- Start Banner Area -->
                    <section class="banner-area organic-breadcrumb">
                        <div class="container">
                            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                                <div class="col-first">
                                    <h1>Thông tin người dùng</h1>
                                    <nav class="d-flex align-items-center">
                                        <a href="/">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                                        <a href="single-product.html">Thanh toán</a>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Banner Area -->

                    <section class="checkout_area section_gap">
                        <div class="container">
                            <form:form class="row contact_form" action="/profile/update" method="post"
                                modelAttribute="inforUser" novalidate="novalidate" enctype="multipart/form-data">
                                <div class="billing_details">
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <h3>Thông tin người dùng</h3>
                                            <div class="row">
                                                <form:input type="hidden" path="id" />
                                                <input type="hidden" name="${_csrf.parameterName}"
                                                    value="${_csrf.token}" />
                                                <div class="col-md-6 form-group p_star">
                                                    <form:input type="text" class="form-control" id="first"
                                                        path="firstName" onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Nhập họ '" />

                                                </div>
                                                <div class="col-md-6 form-group p_star">
                                                    <form:input type="text" class="form-control" id="last"
                                                        path="lastName" onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Nhập têm '" />

                                                </div>
                                                <div class="col-md-6 form-group p_star">
                                                    <form:input type="text" class="form-control" id="number"
                                                        path="phone" onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Nhập số điện thoại '" />

                                                </div>
                                                <div class="col-md-6 form-group p_star">
                                                    <form:input type="text" class="form-control" id="email" path="email"
                                                        onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Nhập email '" />

                                                </div>

                                                <div class="col-md-12 form-group p_star">
                                                    <form:input type="text" class="form-control" id="add1"
                                                        path="address" onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Nhập địa chỉ '" />
                                                    <!-- <span class="placeholder" data-placeholder="Address"></span> -->
                                                </div>
                                                <div class="col-md-12 form-group p_star">
                                                    <input type="text" class="form-control" id="add1" path="address"
                                                        placeholder="Không thể sửa đổi mật khẩu" disabled />
                                                    <!-- <span class="placeholder" data-placeholder="Address"></span> -->
                                                </div>
                                                <div class="col-md-4 form-group p_star">
                                                    <button class="primary-btn">Cập nhật thông tin</button>
                                                </div>

                                            </div>

                                        </div>
                                        <div class="col-lg-4">
                                            <div class="order_box">
                                                <c:if test="${inforUser.avatar == ''}">
                                                    <img src='https://via.placeholder.com/150'
                                                        class="rounded-circle mb-3" id="previewAvatar"
                                                        alt="Profile Picture" style="width: 100%;
                                                height: auto;
                                                object-fit: cover;">
                                                </c:if>
                                                <c:if test="${inforUser.avatar != ''}">
                                                    <img src="/img/avatar/${inforUser.avatar}"
                                                        class="rounded-circle mb-3" id="previewAvatar"
                                                        alt="Profile Picture" style="width: 100%;
                                                 height: auto;
                                                 object-fit: cover;">
                                                </c:if>
                                                <p class="text-muted">JPG or PNG no larger than 5 MB</p>
                                                <label class="btn btn-primary btn-file">
                                                    Sửa ảnh <input class="" type="file" style="display: none;"
                                                        id="avatarFile" accept=".png, .JPG, .jpeg" name="avatarFile" />
                                                </label>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </section>
                    <!--================End Checkout Area =================-->

                    <!-- start footer Area -->
                    <footer class="footer-area section_gap">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-3  col-md-6 col-sm-6">
                                    <div class="single-footer-widget">
                                        <h6>About Us</h6>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt
                                            ut labore dolore
                                            magna aliqua.
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-4  col-md-6 col-sm-6">
                                    <div class="single-footer-widget">
                                        <h6>Newsletter</h6>
                                        <p>Stay update with our latest</p>
                                        <div class="" id="mc_embed_signup">

                                            <form target="_blank" novalidate="true"
                                                action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                                method="get" class="form-inline">

                                                <div class="d-flex flex-row">

                                                    <input class="form-control" name="EMAIL" placeholder="Enter Email"
                                                        onfocus="this.placeholder = ''"
                                                        onblur="this.placeholder = 'Enter Email '" required=""
                                                        type="email">


                                                    <button class="click-btn btn btn-default"><i
                                                            class="fa fa-long-arrow-right"
                                                            aria-hidden="true"></i></button>
                                                    <div style="position: absolute; left: -5000px;">
                                                        <input name="b_36c4fd991d266f23781ded980_aefe40901a"
                                                            tabindex="-1" value="" type="text">
                                                    </div>

                                                    <!-- <div class="col-lg-4 col-md-4">
													<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
												</div>  -->
                                                </div>
                                                <div class="info"></div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3  col-md-6 col-sm-6">
                                    <div class="single-footer-widget mail-chimp">
                                        <h6 class="mb-20">Instragram Feed</h6>
                                        <ul class="instafeed d-flex flex-wrap">
                                            <li><img src="img/i1.jpg" alt=""></li>
                                            <li><img src="img/i2.jpg" alt=""></li>
                                            <li><img src="img/i3.jpg" alt=""></li>
                                            <li><img src="img/i4.jpg" alt=""></li>
                                            <li><img src="img/i5.jpg" alt=""></li>
                                            <li><img src="img/i6.jpg" alt=""></li>
                                            <li><img src="img/i7.jpg" alt=""></li>
                                            <li><img src="img/i8.jpg" alt=""></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-6 col-sm-6">
                                    <div class="single-footer-widget">
                                        <h6>Follow Us</h6>
                                        <p>Let us be social</p>
                                        <div class="footer-social d-flex align-items-center">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <a href="#"><i class="fa fa-dribbble"></i></a>
                                            <a href="#"><i class="fa fa-behance"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
                                <p class="footer-text m-0">
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>document.write(new Date().getFullYear());</script> All rights reserved |
                                    This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
                                        href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>
                    </footer>
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
                    <script src="/client/js/jquery.magnific-popup.min.js"></script>
                    <script src="/client/js/owl.carousel.min.js"></script>
                    <!--gmaps Js-->
                    <script
                        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
                    <script src="/client/js/gmaps.min.js"></script>
                    <script src="/client/js/main.js"></script>
                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#avatarFile");
                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#previewAvatar").attr("src", imgURL);
                            });
                        });
                    </script>
                </body>

                </html>