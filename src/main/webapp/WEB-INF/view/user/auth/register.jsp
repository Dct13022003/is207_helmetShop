<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <meta name="_csrf" content="${_csrf.token}" />
                <!-- default header name is X-CSRF-TOKEN -->
                <meta name="_csrf_header" content="${_csrf.headerName}" />
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


                <section class="login_box_area section_gap">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6">
                                <img class="img-fluid" src="/img/logo/logo1.jpg" alt="">
                            </div>
                            <div class="col-lg-6">
                                <div class="login_form_inner">
                                    <h3 style="font-weight: 600; font-size: x-large;">Tạo tài khoản</h3>
                                    <div class="col-md-12">
                                        <c:if test="${message != null}">
                                            <div class="alert alert-danger alert-dismissible d-flex align-items-center"
                                                role="alert">

                                                <span class="d-flex justify-content-center ">Email đã tồn tại.</span>

                                            </div>
                                        </c:if>
                                    </div>

                                    <form:form class="row login_form" id="form-1" action="/register" method="post"
                                        modelAttribute="registerUser" novalidate="novalidate">

                                        <div class="col-md-12 form-group">
                                            <form:input type="text" class="form-control" id="firstName" path="firstName"
                                                placeholder="Họ của bạn" onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Họ của bạn'" />
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <form:input type="text" class="form-control" id="lastName" path="lastName"
                                                placeholder="Tên của bạn" onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Tên của bạn'" />
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <form:input type="email" class="form-control" id="email" path="email"
                                                placeholder="Email" onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Email'" />
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <form:input type="text" class="form-control" id="phone"
                                                onkeypress="return event.charCode >= 48 && event.charCode <= 57"
                                                path="phone" placeholder="Số điện thoại" onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Số điện thoại'" />
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <form:input type="text" class="form-control" id="address" path="address"
                                                placeholder="Địa chỉ" onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Địa chỉ'" />
                                            <span class="form-message"></span>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <form:input type="password" class="form-control" id="password"
                                                path="password" placeholder="Mật khẩu" onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Mật khẩu'" />
                                            <span class="form-message"></span>
                                        </div>

                                        <div>
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                                        </div>

                                        <div class="col-md-12 form-group">
                                            <button type="submit" value="submit" class="primary-btn">Đăng kí</button>
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <p>Bạn đã có tài khoản? <a href="/login"
                                                    style="font-weight: bold;display: inline;">Đăng
                                                    nhập</a></p>
                                        </div>
                                    </form:form>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--================End Login Box Area =================-->

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
                <script src="/client/js/jquery.magnific-popup.min.js"></script>
                <script src="/client/js/owl.carousel.min.js"></script>
                <!--gmaps Js-->
                <script
                    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
                <script src="/client/js/gmaps.min.js"></script>
                <script src="/client/js/main.js"></script>
                <script src="/js/validated.js"></script>
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        // Mong muốn của chúng ta
                        Validator({
                            form: '#form-1',
                            formGroupSelector: '.form-group',
                            errorSelector: '.form-message',
                            rules: [
                                Validator.isRequired('#firstName', 'Vui lòng nhập họ của bạn'),
                                Validator.isRequired('#lastName', 'Vui lòng nhập tên của bạn'),
                                Validator.isRequired('#address'),
                                Validator.isEmail('#email'),
                                Validator.isPhoneVietNamese('#phone'),
                                Validator.minLength('#password', 8),
                            ],

                        });
                    });

                </script>
            </body>

            </html>