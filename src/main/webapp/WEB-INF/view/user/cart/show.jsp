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
                                    <h1>Giỏ hàng</h1>
                                    <nav class="d-flex align-items-center">
                                        <a href="/">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
                                        <a href="/cart">Giỏ hàng</a>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Banner Area -->

                    <!--================Cart Area =================-->
                    <section class="cart_area">
                        <div class="container">
                            <div class="cart_inner">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" style="width: 300.333px">Sản phẩm</th>
                                                <th scope="col" style="width: 33.333px">Size</th>
                                                <th scope="col" style="width: 133.333px">Giá</th>
                                                <th scope="col" style="width: 33.333px">Số lượng</th>
                                                <th scope="col" style="width: 133.333px">Tổng tiền</th>
                                                <th scope="col" style="width: 133.333px">Xử lí</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:if test="${ empty cartDetails}">
                                                <tr>
                                                    <td colspan="6">
                                                        Không có sản phẩm trong giỏ hàng
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <c:forEach var="cartDetail" items="${cartDetails}" varStatus="status">
                                                <tr>

                                                    <td>
                                                        <div class="media">
                                                            <div class="d-flex">
                                                                <img src="/img/product/${cartDetail.product.avatar}"
                                                                    class="img-fluid me-5 rounded-circle"
                                                                    style="width: 80px; height: 80px;" alt="">
                                                            </div>
                                                            <div class="media-body">
                                                                <p>${cartDetail.product.code}</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <h5>${cartDetail.sizeItem}</h5>
                                                    </td>
                                                    <td>
                                                        <fmt:formatNumber type="number" value="${cartDetail.price}" /> đ
                                                    </td>
                                                    <td>
                                                        <div class="product_count">
                                                            <input type="text" name="qty" id="sst" maxlength="12"
                                                                value="${cartDetail.quantity}"
                                                                data-cart-detail-id="${cartDetail.id}"
                                                                data-cart-detail-price="${cartDetail.price}"
                                                                data-cart-detail-index="${status.index}"
                                                                title="Quantity:" class="input-text qty">
                                                            <button class="increase items-count" type="button"><i
                                                                    class="lnr lnr-chevron-up"></i></button>
                                                            <button class="reduced items-count" type="button"><i
                                                                    class="lnr lnr-chevron-down"></i></button>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0 mt-4" data-cart-detail-id="${cartDetail.id}">
                                                            <fmt:formatNumber type="number"
                                                                value="${cartDetail.price * cartDetail.quantity}" /> đ
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <form method="post"
                                                            action="/delete-cart-product/${cartDetail.id}">
                                                            <input type="hidden" name="${_csrf.parameterName}"
                                                                value="${_csrf.token}" />
                                                            <button
                                                                class="btn btn-md rounded-circle bg-light border mt-4">
                                                                <i class="fa fa-times text-danger"></i>
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                        </tbody>

                                    </table>
                                    <c:if test="${not empty cartDetails}">
                                        <div class="mt-5 row g-4 justify-content-start">
                                            <div class="col-12 col-md-8">
                                                <div class="bg-light rounded">
                                                    <div class="p-4">
                                                        <h1 class="mb-4">Thông Tin Đơn
                                                            Hàng
                                                        </h1>
                                                        <div class="d-flex justify-content-between mb-4">
                                                            <h5 class="mb-0 me-4">Tạm tính:</h5>
                                                            <p class="mb-0" data-cart-total-price="${totalPrice}">
                                                                <fmt:formatNumber type="number" value="${totalPrice}" />
                                                                đ
                                                            </p>
                                                        </div>
                                                        <div class="d-flex justify-content-between">
                                                            <h5 class="mb-0 me-4">Phí vận chuyển:</h5>
                                                            <div class="">
                                                                <p class="mb-0">0 đ</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="p-4 mb-4 border-top border-bottom d-flex justify-content-between">
                                                        <h5 class="mb-0 ps-4 me-4">Tổng tiền</h5>
                                                        <p class="mb-0 pe-4" data-cart-total-price="${totalPrice}">
                                                            <fmt:formatNumber type="number" value="${totalPrice}" /> đ
                                                        </p>
                                                    </div>
                                                    <form:form action="/confirm-checkout" method="post"
                                                        id="checkout_form" modelAttribute="cart">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                        <div style="display: none;">
                                                            <c:forEach var="cartDetail" items="${cart.cartDetails}"
                                                                varStatus="status">
                                                                <div class="mb-3">
                                                                    <div class="form-group">
                                                                        <label>Id:</label>
                                                                        <form:input class="form-control" type="text"
                                                                            value="${cartDetail.id}"
                                                                            path="cartDetails[${status.index}].id" />
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Productid:</label>
                                                                        <form:input class="form-control" type="text"
                                                                            value="${cartDetail.product.id}"
                                                                            path="cartDetails[${status.index}].product.id" />
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label>Size:</label>
                                                                        <form:input class="form-control" type="text"
                                                                            value="${cartDetail.sizeItem}"
                                                                            path="cartDetails[${status.index}].sizeItem" />
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Quantity:</label>
                                                                        <form:input class="form-control" type="text"
                                                                            value="${cartDetail.quantity}"
                                                                            path="cartDetails[${status.index}].quantity" />
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                        <div
                                                            class="checkout_btn_inner d-flex align-items-center justify-content-center">
                                                            <a class="gray_btn mr-3" href="/products">Tiếp tục mua
                                                                hàng</a>
                                                            <button class="primary-btn" id="checkout_btn">Xác nhận thanh
                                                                toán</button>
                                                        </div>
                                                    </form:form>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!--================End Cart Area =================-->

                    <!-- start footer Area -->
                    <footer class="footer-area section_gap">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-3  col-md-6 col-sm-6">
                                    <div class="single-footer-widget">
                                        <h6>About Us</h6>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                            tempor
                                            incididunt
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
                                    This
                                    template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
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
                        $('.items-count').on('click', function () {
                            let change = 0;

                            var button = $(this);
                            var oldValue = button.parent().find('input').val();
                            console.log('xxxx: ', oldValue)
                            if (button.hasClass('increase')) {
                                var newVal = parseFloat(oldValue) + 1;
                                change = 1;
                            } else {
                                if (oldValue > 1) {
                                    var newVal = parseFloat(oldValue) - 1;
                                    change = -1;
                                } else {
                                    newVal = 1;
                                }
                            }
                            const input = button.parent().find('input');
                            input.val(newVal);

                            //set form index
                            const index = input.attr("data-cart-detail-index")
                            const el = document.getElementById(`cartDetails` + index + `.quantity`);
                            $(el).val(newVal);



                            //get price
                            const price = input.attr("data-cart-detail-price");
                            const id = input.attr("data-cart-detail-id");
                            console.log('id : ', id)
                            const priceElement = $(`p[data-cart-detail-id=` + id + `]`);
                            console.log(priceElement)
                            if (priceElement) {
                                const newPrice = +price * newVal;
                                console.log(newPrice)
                                priceElement.text(formatCurrency(newPrice.toFixed(2)) + " đ");
                            }

                            //update total cart price
                            const totalPriceElement = $(`p[data-cart-total-price]`);

                            if (totalPriceElement && totalPriceElement.length) {
                                const currentTotal = totalPriceElement.first().attr("data-cart-total-price");
                                let newTotal = +currentTotal;
                                if (change === 0) {
                                    newTotal = +currentTotal;
                                } else {
                                    newTotal = change * (+price) + (+currentTotal);
                                }

                                //reset change
                                change = 0;

                                //update
                                totalPriceElement?.each(function (index, element) {
                                    //update text
                                    $(totalPriceElement[index]).text(formatCurrency(newTotal.toFixed(2)) + " đ");

                                    //update data-attribute
                                    $(totalPriceElement[index]).attr("data-cart-total-price", newTotal);
                                });
                            }
                        });

                        function formatCurrency(value) {
                            // Use the 'vi-VN' locale to format the number according to Vietnamese currency format
                            // and 'VND' as the currency type for Vietnamese đồng
                            const formatter = new Intl.NumberFormat('vi-VN', {
                                style: 'decimal',
                                minimumFractionDigits: 0, // No decimal part for whole numbers
                            });

                            let formatted = formatter.format(value);
                            // Replace dots with commas for thousands separator
                            formatted = formatted.replace(/\./g, ',');
                            return formatted;
                        }
                    </script>
                </body>

                </html>