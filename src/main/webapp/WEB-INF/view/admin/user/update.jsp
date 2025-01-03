<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <form:form class="user" method="POST" action="/admin/user/update"
                                    modelAttribute="userUpdate" enctype="multipart/form-data" id="form-1">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="card text-center">
                                                <div class="card-body" style="overflow: hidden">
                                                    <c:if test="${userUpdate.avatar == ''}">
                                                        <img src='https://via.placeholder.com/150'
                                                            class="rounded-circle mb-3" id="previewAvatar"
                                                            alt="Profile Picture" style="width: 100%;
                                                    height: auto;
                                                    object-fit: cover;">
                                                    </c:if>
                                                    <c:if test="${userUpdate.avatar != ''}">
                                                        <img src="/img/avatar/${userUpdate.avatar}"
                                                            class="rounded-circle mb-3" id="previewAvatar"
                                                            alt="Profile Picture" style="width: 100%;
                                                     height: auto;
                                                     object-fit: cover;">
                                                    </c:if>
                                                    <p class="text-muted">JPG or PNG no larger than 5 MB</p>
                                                    <label class="btn btn-primary btn-file">
                                                        Sửa ảnh <input type="file" style="display: none;"
                                                            id="avatarFile" accept=".png, .JPG, .jpeg"
                                                            name="avatarFile" />
                                                    </label>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="card shadow mb-4">
                                                <div class="card-header py-3">
                                                    <h6 class="m-0 font-weight-bold text-primary">Thông tin người dùng
                                                    </h6>
                                                </div>
                                                <div class="p-5">
                                                    <div class="text-center">
                                                        <h1 class="h4 text-gray-900 mb-4 text-primary">Thông tin người
                                                            dùng
                                                        </h1>
                                                    </div>

                                                    <div class="form-group row">
                                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                                            <!-- <c:set var="firstNameError">
                                                                <form:errors path="firstName"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set> -->
                                                            <form:input type="hidden" id="custId" path="id" />
                                                            <form:input type="text"
                                                                class="form-control form-control-user"
                                                                id="exampleInputFirstName" placeholder="First Name"
                                                                path="firstName" />
                                                            <span class="form-message"></span>
                                                            <!-- ${firstNameError} -->

                                                        </div>
                                                        <div class="col-sm-6">
                                                            <!-- <c:set var="lastNameError">
                                                                <form:errors path="lastName"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set> -->
                                                            <form:input type="text"
                                                                class="form-control form-control-user"
                                                                id="exampleInputLastName" placeholder="Last Name"
                                                                path="lastName" />
                                                            <span class="form-message"></span>
                                                            <!-- ${lastNameError} -->

                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <!-- <c:set var="addressError">
                                                            <form:errors path="address" cssClass="invalid-feedback" />
                                                        </c:set> -->
                                                        <form:input type="text" class="form-control form-control-user "
                                                            id="exampleInputAddress" placeholder="Address"
                                                            path="address" />
                                                        <span class="form-message"></span>
                                                        <!-- ${addressError} -->
                                                    </div>

                                                    <div class="form-group row">
                                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                                            <!-- <c:set var="emailError">
                                                                <form:errors path="email" cssClass="invalid-feedback" />
                                                            </c:set> -->
                                                            <input type="email" class="form-control-user form-control "
                                                                id="exampleInputEmail" placeholder="${userUpdate.email}"
                                                                disabled>
                                                            <span class="form-message"></span>
                                                            <!-- ${emailError} -->

                                                        </div>
                                                        <div class="col-sm-6">
                                                            <form:input type="tel"
                                                                class="form-control form-control-user"
                                                                id="exampleInputPhone" placeholder="Phone Number"
                                                                path="phone" />
                                                            <span class="form-message"></span>

                                                        </div>
                                                    </div>

                                                    <div class="form-group row">
                                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                                            <!-- <c:set var="passwordError">
                                                                <form:errors path="password"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set> -->
                                                            <input type="password"
                                                                class="form-control form-control-user "
                                                                id="exampleInputPassword" placeholder="*********"
                                                                disabled readonly>
                                                            <!-- ${passwordError} -->
                                                            <span class="form-message"></span>
                                                            <!-- <i class="fas fa-eye" onclick="changeTypePassword1()"></i>
                                                            <i class="fas fa-eye-slash"
                                                                onclick="changeTypePassword1()"></i> -->
                                                        </div>
                                                        <div class="col-sm-6 mb-3 mb-sm-0">
                                                            <select path="role.name" class="form-control"
                                                                style="font-size: .8rem;
                                                            border-radius: 10rem; height: calc(1.5em + .75rem + 2px + 1.15rem);" disabled>
                                                                <option value="">${userUpdate.role.name}</option>
                                                                <select>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex justify-content-center pt-5">
                                                        <button type="submit" class="btn btn-primary">Cập nhật</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>

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
                <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">Select "Logout" below if you are ready to end your current session.
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
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

            </html>