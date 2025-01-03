<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
                        <link rel="stylesheet" href="/client/css/custom.css">
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
                                            <a href="/history-orders">Lịch sử</a>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- End Banner Area -->

                        <!-- Main Content -->
                        <div class="container py-4">
                            <!-- Order Card -->
                            <c:forEach var="order" items="${orders}">
                                <div class="order-card">
                                    <div class="order-header">
                                        Mã đơn hàng: #${order.id}
                                        <span class="float-end"> Ngày tạo đơn: ${order.create_at}</span>
                                    </div>
                                    <div class="order-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <p>Trạng thái:

                                                    <c:if test="${fn:trim(order.status) eq 'CONFIRM'}">
                                                        <span class="badge bg-success text-dark">Thành công</span>
                                                    </c:if>

                                                    <c:if test="${fn:trim(order.status) eq 'PENDING'}">
                                                        <span class="badge bg-warning text-dark ">Đang xử lí</span>

                                                    </c:if>
                                                    <c:if test="${fn:trim(order.status) eq 'DELIVERED'}">
                                                        <span class="badge bg-info text-dark ">Đang Giao</span>

                                                    </c:if>
                                                    <c:if test="${fn:trim(order.status) eq 'CANCELLED'}">
                                                        <span class="badge bg-danger text-dark ">Đã hủy</span>

                                                    </c:if>
                                                </p>
                                                <p>Phương thức thanh toán: <strong>${order.payment_method}</strong></p>
                                            </div>
                                            <div class="col-md-6 text-end">
                                                <p>Tổng tiền: <strong>
                                                        <fmt:formatNumber type="number" value="${order.totalPrice}" />đ
                                                    </strong></p>
                                                <span class="btn-details">Xem chi tiết</span>
                                            </div>
                                        </div>

                                        <!-- Order Details -->
                                        <div class="order-details mt-3">
                                            <h6>Chi tiết đơn hàng:</h6>
                                            <table class="table table-bordered table-striped">
                                                <thead class="table-dark">
                                                    <tr>
                                                        <th>#</th>
                                                        <th>Tên sản phẩm</th>
                                                        <th>Hình ảnh</th>
                                                        <th>Số lượng</th>
                                                        <th>Giá</th>
                                                        <th>Tổng cộng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="orderDetail" items="${order.orderDetails}"
                                                        varStatus="status">
                                                        <tr>
                                                            <td>${status.index+1}</td>
                                                            <td>${orderDetail.product.code}</td>
                                                            <td>
                                                                <img src="/img/product/${orderDetail.product.avatar}"
                                                                    alt="Product 1" class="rounded-circle"
                                                                    style="width: 80px; height: 80px;object-fit: cover;">
                                                            </td>
                                                            <td>${orderDetail.quantity}</td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${orderDetail.price}" />đ
                                                            </td>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${orderDetail.quantity*orderDetail.price}" />
                                                                đ
                                                            </td>
                                                        </tr>
                                                    </c:forEach>

                                                </tbody>
                                            </table>
                                            <ul>



                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>



                        </div>
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
                        <script>
                            document.querySelectorAll('.btn-details').forEach(button => {
                                button.addEventListener('click', function () {
                                    const details = this.closest('.order-body').querySelector('.order-details');
                                    if (details.style.display === 'block') {
                                        details.style.display = 'none';
                                        this.textContent = 'Xem chi tiết';
                                    } else {
                                        details.style.display = 'block';
                                        this.textContent = 'Ẩn chi tiết';
                                    }
                                });
                            });
                        </script>
                    </body>

                    </html>