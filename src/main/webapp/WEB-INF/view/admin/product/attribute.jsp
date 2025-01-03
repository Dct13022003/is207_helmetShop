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
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


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

                                <div class="row">
                                    <form:form action="${pageContext.request.contextPath}/admin/product/attribute/save"
                                        modelAttribute="Attribute" method="post" class="col-sm-6">

                                        <div class="card shadow mb-4">
                                            <div class="card-header py-3">
                                                <h6 class="m-0 font-weight-bold text-primary">Thông tin thuộc tính
                                                </h6>
                                            </div>
                                            <div class="m-4">
                                                <form:input type="hidden" path="id"></form:input>
                                                <label for="fieldName">Code:</label>
                                                <form:input path="code" id="fieldName" class="form-control"
                                                    required="true" />
                                                <label for="fieldName">Title:</label>
                                                <form:input path="title" id="fieldName" class="form-control"
                                                    required="true" />

                                            </div>

                                            <button class="btn btn-primary m-4" type="submit">Lưu</button>
                                        </div>

                                    </form:form>
                                    <div class="col-sm-6">
                                        <div class="card shadow mb-4">
                                            <div class="card-header py-3">
                                                <h6 class="m-0 font-weight-bold text-primary">Danh sách thuộc tính
                                                </h6>
                                            </div>
                                            <div class="col-sm-12">
                                                <table class="table table-bordered dataTable" id="dataTable"
                                                    width="100%" cellspacing="0" role="grid"
                                                    aria-describedby="dataTable_info" style="width: 100%;">
                                                    <thead>
                                                        <tr role="row">
                                                            <th class="sorting sorting_asc" tabindex="0"
                                                                aria-controls="dataTable" rowspan="1" colspan="1"
                                                                aria-label="Name: activate to sort column descending"
                                                                aria-sort="ascending" style="width: 33.333px;">
                                                                Name</th>
                                                            <th class="sorting sorting_asc" tabindex="0"
                                                                aria-controls="dataTable" rowspan="1" colspan="1"
                                                                aria-label="Name: activate to sort column descending"
                                                                aria-sort="ascending" style="width: 33.333px;">
                                                                title</th>
                                                            <th class="sorting" tabindex="0" aria-controls="dataTable"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Position: activate to sort column ascending"
                                                                style="width: 77.333px;">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <!-- <tfoot>
                                                            <tr>
                                                                <th rowspan="1" colspan="1">ID</th>
                                                                <th rowspan="1" colspan="1">Action</th>
                                                            </tr>
                                                        </tfoot> -->
                                                    <tbody>
                                                        <c:forEach var="attribute" items="${Attributes}">
                                                            <tr class="odd">
                                                                <td class="">${attribute.code}</td>
                                                                <td class="">${attribute.title}</td>
                                                                <td>

                                                                    <a
                                                                        href="/admin/product/attribute/edit/${attribute.id}">
                                                                        <i class="fas fa-edit"></i>
                                                                    </a>
                                                                    <form id="deleteForm${attribute.id}"
                                                                        action="${pageContext.request.contextPath}/admin/product/attribute/delete/${attribute.id}"
                                                                        method="post" style="display: inline;">
                                                                        <input type="hidden"
                                                                            name="${_csrf.parameterName}"
                                                                            value="${_csrf.token}" />
                                                                        <button type="submit"
                                                                            style="border: none; background-color:#f8f9fc;"
                                                                            onclick="confirmDelete(event,'deleteForm${attribute.id}')">
                                                                            <a href="">
                                                                                <i class=" far fa-trash-alt"></i>
                                                                            </a>
                                                                        </button>
                                                                    </form>

                                                                </td>

                                                            </tr>
                                                        </c:forEach>

                                                    </tbody>
                                                </table>
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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>




            </body>

            </html>