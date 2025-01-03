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

                                <img class="img-fluid" src="/img/logo/logo1.jpg" style="background-color: black;"
                                    alt="">


                            </div>
                            <div class="col-lg-6">
                                <div class="login_form_inner">
                                    <h3>Log in to enter</h3>
                                    <form class="row login_form" action="/login" method="post" id="contactForm"
                                        novalidate="novalidate">
                                        <c:if test="${param.error != null}">
                                            <div class="my-2" style="color: red;">Invalid email or password.
                                            </div>
                                        </c:if>
                                        <c:if test="${param.logout != null}">
                                            <div class="my-2" style="color: green;">Logout success.
                                            </div>
                                        </c:if>
                                        <div class="col-md-12 form-group">
                                            <input type="text" class="form-control" id="name" name="username"
                                                placeholder="Email" onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Username'">
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <input type="password" class="form-control" id="name" name="password"
                                                placeholder="Password" onfocus="this.placeholder = ''"
                                                onblur="this.placeholder = 'Password'">
                                        </div>
                                        <div>
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <button type="submit" value="submit" class="primary-btn">Log In</button>
                                            <p class="pt-2">Bạn chưa có tài khoản? <a href="/register"
                                                    style="font-weight: bold;display: inline;">Đăng
                                                    kí</a></p>
                                        </div>
                                    </form>
                                    <div>
                                        <div style="text-align: center"><span>Hoặc sử dụng</span></div>
                                        <div class="d-ex justify-content-center align-items-center my-3"
                                            style="gap: 20px">
                                            <a href="/oauth2/authorization/google" title="Đăng nhập với Google">
                                                <img height="40" width="40" src="/client/img/default-google.png" />
                                            </a>

                                        </div>
                                    </div>
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
                <script src="/js/validate.js"></script>
            </body>

            </html>