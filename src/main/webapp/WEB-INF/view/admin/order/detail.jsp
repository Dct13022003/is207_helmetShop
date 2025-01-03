<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>

                    <meta charset="utf-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <meta name="description" content="">
                    <meta name="author" content="">

                    <title>Helmet-Shop</title>

                    <!-- Custom fonts for this template-->
                    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
                    <link
                        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                        rel="stylesheet">

                    <!-- Custom styles for this template-->
                    <link href="/css/sb-admin-2.min.css" rel="stylesheet">
                    <link rel="stylesheet" href="/css/custom.css">

                </head>

                <body id="page-top">

                    <!-- Page Wrapper -->
                    <div id="wrapper">

                        <!-- Sidebar -->
                        <jsp:include page="../layout/sidebar.jsp" />
                        <!-- End of Sidebar -->

                        <!-- Content Wrapper -->
                        <div id="content-wrapper" class="d-flex flex-column">

                            <!-- Main Content -->
                            <div id="content">

                                <jsp:include page="../layout/header.jsp" />

                                <!-- Begin Page Content -->
                                <div class="container-fluid">
                                    <form action="" class="user">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="card shadow mb-4">
                                                    <div class="card-header py-3">
                                                        <h6 class="m-0 font-weight-bold text-primary">Danh sách sản phẩm
                                                        </h6>
                                                    </div>
                                                    <div class="container">
                                                        <table class="table table-bordered dataTable">
                                                            <thead>
                                                                <tr>
                                                                    <th>Sản phẩm </th>
                                                                    <th>Mã sản phẩm </th>
                                                                    <th>Số lượng</th>
                                                                    <th>Đơn giá</th>
                                                                    <th>Tổng tiền</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>

                                                                <c:forEach var="detail"
                                                                    items="${orderDetail.orderDetails}">
                                                                    <tr>
                                                                        <td class="product-info">
                                                                            <img src="/img/product/${detail.product.avatar}"
                                                                                alt="Product Image"
                                                                                class="product-image"
                                                                                style="max-width: 100px;border-radius: 10px;" />
                                                                            <span
                                                                                class="product-name">${detail.product.code}</span>
                                                                        </td>
                                                                        <td><span
                                                                                class="quantity">${detail.sizeItem}</span>
                                                                        </td>
                                                                        <td><span
                                                                                class="quantity">${detail.quantity}</span>
                                                                        </td>
                                                                        <td><span class="unit-price"></span>
                                                                            <fmt:formatNumber type="number"
                                                                                value="${detail.price}" /> đ
                                                                            </span>
                                                                        </td>
                                                                        <td><span class="total-price">

                                                                                <fmt:formatNumber type="number" value="${detail.price *
                                                                                    detail.quantity}" /> đ
                                                                            </span></td>
                                                                    </tr>
                                                                </c:forEach>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="card shadow mb-4">
                                                    <div class="card-header py-3">
                                                        <h6 class="m-0 font-weight-bold text-primary">Thông tin đặt hàng
                                                        </h6>
                                                    </div>
                                                    <div class="p-5">
                                                        <div class="container-infor">
                                                            <div class="info-row">
                                                                <label>Họ tên</label>
                                                                <span>${orderDetail.firstName }
                                                                    ${orderDetail.lastName}</span>
                                                            </div>
                                                            <div class="info-row">
                                                                <label>Email</label>
                                                                <span>${orderDetail.emailAddress}</span>
                                                            </div>
                                                            <div class="info-row">
                                                                <label>Số điện thoại</label>
                                                                <span>${orderDetail.phone}</span>
                                                            </div>
                                                            <div class="info-row">
                                                                <label>Địa chỉ</label>
                                                                <span>${orderDetail.address}</span>
                                                            </div>

                                                            <div class="info-row">
                                                                <label>Phương thức thanh toán</label>
                                                                <span>${orderDetail.payment_method}</span>
                                                            </div>
                                                            <div class="info-row">
                                                                <label>Chú thích</label>
                                                                <span>${orderDetail.notice}</span>
                                                            </div>
                                                            <div class="info-row">
                                                                <label>Tình trạng</label>
                                                                <span class="status-btn">${orderDetail.status}</span>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>



                                        </div>


                                        <!-- /.container-fluid -->

                                </div>
                                <!-- End of Main Content -->

                                <!-- Footer -->
                                <jsp:include page="../layout/footer.jsp" />
                                <!-- End of Footer -->

                            </div>
                            <!-- End of Content Wrapper -->

                        </div>
                        <!-- End of Page Wrapper -->

                        <!-- Scroll to Top Button-->
                        <a class="scroll-to-top rounded" href="#page-top">
                            <i class="fas fa-angle-up"></i>
                        </a>

                        <!-- Logout Modal-->
                        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">Select "Logout" below if you are ready to end your
                                        current
                                        session.
                                    </div>
                                    <div class="modal-footer">
                                        <button class="btn btn-secondary" type="button"
                                            data-dismiss="modal">Cancel</button>
                                        <a class="btn btn-primary" href="login.html">Logout</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Bootstrap core JavaScript-->
                        <script src="/vendor/jquery/jquery.min.js"></script>
                        <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                        <!-- Core plugin JavaScript-->
                        <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

                        <!-- Custom scripts for all pages-->
                        <script src="/js/sb-admin-2.min.js"></script>
                        <script src="/js/custom.js"></script>
                        <script src="/js/validated.js"></script>
                        <script>
                            document.addEventListener('DOMContentLoaded', function () {
                                // Mong muốn của chúng ta
                                Validator({
                                    form: '#form-1',
                                    formGroupSelector: '.form-group',
                                    errorSelector: '.form-message',
                                    rules: [
                                        Validator.isRequired('#exampleInputFirstName', 'Vui lòng nhập họ của bạn'),
                                        Validator.isRequired('#exampleInputLastName', 'Vui lòng nhập tên của bạn'),
                                        Validator.isRequired('#exampleInputAddress'),
                                        Validator.isEmail('#exampleInputEmail'),
                                        Validator.minLength('#exampleInputPassword', 8),
                                        Validator.isPhoneVietNamese('#exampleInputPhone')
                                    ],

                                });
                            });

                        </script>
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
                <style>
                    .info-row {
                        display: flex;
                        justify-content: space-between;
                        margin-bottom: 12px;
                        padding-bottom: 8px;
                        border-bottom: 1px solid #f0f0f0;
                    }

                    label {
                        font-weight: bold;
                        color: #555;
                    }



                    .status-btn {
                        display: inline-block;
                        background-color: #4CAF50;
                        color: #ffffff;
                        font-size: 14px;
                        font-weight: bold;
                        padding: 5px 12px;
                        border-radius: 5px;
                        text-transform: uppercase;
                        cursor: pointer;
                    }
                </style>

                </html>