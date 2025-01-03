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
                                    <h1>Checkout</h1>
                                    <nav class="d-flex align-items-center">
                                        <a href="/">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                                        <a href="single-product.html">Thanh toán</a>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Banner Area -->

                    <!--================Checkout Area =================-->
                    <section class="checkout_area section_gap">
                        <div class="container">
                            <form:form class="row" id="form-1" action="/place-order" method="post"
                                modelAttribute="order" novalidate="novalidate">
                                <div class="billing_details">
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <h3>Billing Details</h3>
                                            <div class="row">
                                                <input type="hidden" name="${_csrf.parameterName}"
                                                    value="${_csrf.token}" />
                                                <div class="col-md-6 form-group p_star">
                                                    <form:input type="text" class="form-control" id="first"
                                                        path="firstName" />
                                                    <span class="placeholder" data-placeholder="Họ"></span>
                                                </div>
                                                <div class="col-md-6 form-group p_star">
                                                    <form:input type="text" class="form-control" id="last"
                                                        path="lastName" />
                                                    <span class="placeholder" data-placeholder="Tên"></span>
                                                </div>
                                                <div class="col-md-6 form-group p_star">
                                                    <form:input type="text" class="form-control " id="number"
                                                        path="phone" />
                                                    <span class="placeholder" data-placeholder="Số điện thoại"></span>
                                                </div>
                                                <div class="col-md-6 form-group p_star">
                                                    <form:input type="text" class="form-control" id="email"
                                                        path="emailAddress" />
                                                    <span class="placeholder" data-placeholder="Địa chỉ email"></span>
                                                </div>

                                                <div class="col-md-12 form-group p_star">
                                                    <form:input type="text" class="form-control" id="add1"
                                                        path="address" />
                                                    <span class="placeholder"
                                                        data-placeholder="Địa chỉ giao hàng"></span>
                                                </div>

                                                <div class="col-md-12 form-group">
                                                    <form:textarea class="form-control" path="notice" name="message"
                                                        id="message" rows="3" placeholder="Ghi chú"></form:textarea>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-lg-4">
                                            <div class="order_box">
                                                <h2>Hóa đơn</h2>
                                                <ul class="list">
                                                    <li><a href="#">Sản phẩm <span>Giá </span></a></li>
                                                    <c:forEach var="cartDetail" items="${cartDetails}">
                                                        <li>
                                                            <a href="/product/${cartDetail.id}">${cartDetail.product.code}
                                                                <span class="middle">
                                                                    ${cartDetail.sizeItem}
                                                                </span>
                                                                <span class="middle m-1">X${cartDetail.quantity}
                                                                </span>

                                                                <span>
                                                                    <fmt:formatNumber type="number" value="${cartDetail.price *
                                                                    cartDetail.quantity}" /> đ
                                                                </span>
                                                            </a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                                <ul class="list list_2">
                                                    <li><a href="#">Subtotal <span>
                                                                <fmt:formatNumber type="number" value="${totalPrice}" />
                                                                đ
                                                            </span></a></li>
                                                    <input type="text" value="${totalPrice}" name="totalPrice"
                                                        style="display: none;">
                                                    <li><a href="#">Shipping <span>0 đ</span></a></li>
                                                    <li><a href="#">Total <span>
                                                                <fmt:formatNumber type="number" value="${totalPrice}" />
                                                                đ
                                                            </span></a></li>
                                                </ul>
                                                <div class="payment_item active">
                                                    <div class="radion_btn">
                                                        <input type="radio" id="f-option5" value="COD"
                                                            name="payment_method" checked />
                                                        <label for="f-option5">Thanh toán khi nhận hàng</label>
                                                        <div class="check"></div>
                                                    </div>
                                                    <p>Xin vui lòng điền đầy đủ thông tin, địa chỉ, số điện thoại, email
                                                    </p>
                                                </div>
                                                <div class="payment_item">
                                                    <div class="radion_btn">
                                                        <input type="radio" id="f-option6" value="Vn_pay"
                                                            name="payment_method" />
                                                        <label for="f-option6">VN_PAY</label>
                                                        <img src="img/product/card.jpg" alt="">
                                                        <div class="check"></div>
                                                    </div>
                                                    <p>Bạn có thể thanh toán bằng VN_Pay, nếu chưa có tài khoản hãy
                                                        thanh toán bằng COD</p>
                                                </div>
                                                <div class="creat_account">
                                                    <input type="checkbox" id="f-option4">
                                                    <label for="f-option4">I’ve read and accept the </label>
                                                    <a href="#">terms & conditions*</a>
                                                </div>
                                                <div>
                                                    <button class="primary-btn " id="btn-thanh-toan"
                                                        style="width: 100%;">Thanh
                                                        toán</button>
                                                </div>

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
                                            Tự hào là nhà sản xuất, phân phối hợp lệ và độc quyền cho tất cả các sản
                                            phẩm mang thương hiệu POC - Power Of Creation
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
                    <script src="/client/js/validated.js"></script>
                    <script>
                        document.addEventListener('DOMContentLoaded', function () {
                            // Mong muốn của chúng ta
                            Validator({
                                form: '#form-1',
                                formGroupSelector: '.form-group',
                                errorSelector: '.form-group',
                                rules: [
                                    Validator.isRequired('#first', 'Vui lòng nhập họ của bạn'),
                                    Validator.isRequired('#last', 'Vui lòng nhập tên của bạn'),
                                    Validator.isRequired('#number'),
                                    Validator.isEmail('#email'),
                                    Validator.isRequired('#add1'),
                                ],

                            });
                        });

                        document.getElementById('f-option4').onchange = function (e) {
                            if (this.checked) {
                                const button = document.getElementById('btn-thanh-toan');
                                button.disabled = false;
                            }
                            else {
                                const button = document.getElementById('btn-thanh-toan');
                                button.disabled = true;
                            }
                        }

                    </script>
                </body>

                </html>