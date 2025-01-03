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
                <link rel="stylesheet" href="/css/style.css">
                <link rel="stylesheet" href="https://cdn.ckeditor.com/ckeditor5/44.1.0/ckeditor5.css" crossorigin>

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
                                <form:form method="POST" action="/admin/blog/create" enctype="multipart/form-data"
                                    modelAttribute="newBlog" id="form-1">
                                    <div class="d-flex justify-content-end pb-3">
                                        <button type="submit" class="btn btn-primary">Thêm mới</button>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 m-auto">
                                            <div class="card shadow mb-4">
                                                <div class="card-header py-3">
                                                    <h6 class="m-0 font-weight-bold text-primary">Thông tin bài viết
                                                    </h6>
                                                </div>
                                                <div class="p-3">
                                                    <div class="form-group">
                                                        <div class="col-sm-12 mb-3 mb-sm-3">
                                                            <span class="form-message">Tiêu đề</span>
                                                            <form:input type="text" class="form-control" id="InputName"
                                                                path="title" placeholder="Tiêu đề" />
                                                        </div>
                                                        <div class="p-sm-3 p-3">
                                                            <label for="formFileLg" class="form-label">Hình ảnh</label>
                                                            <input class="form-control" id="inputImageBanner"
                                                                name="inputImageBanner" type="file"
                                                                onchange="handleChange(event)" />
                                                            <img id="imagePreview1" src="" alt="Ảnh được chọn"
                                                                style="max-width: 200px; display: none;" />

                                                        </div>
                                                        <div class="col-sm-12 mb-3 mb-sm-3">
                                                            <span class="form-message">Mô tả ngắn</span>
                                                            <form:input type="text" class="form-control" id="InputName"
                                                                path="shortDescription" placeholder="Nội dung" />
                                                        </div>
                                                        <div class="col-sm-12 mb-3 mb-sm-3">
                                                            <span class="form-label">Danh mục</span>
                                                            <form:select class="form-control" id="categorySelect"
                                                                style="font-size: .8rem;height: calc(1.5em + .75rem + 2px + 0.5rem);"
                                                                path="blogCategory.name">
                                                                <option value="" label="--Please Select">
                                                                    <form:option value="Thông tin sự kiện">Thông tin sự
                                                                        kiện</form:option>
                                                                    <form:option value="Thông tin nón bảo hiểm">Thông
                                                                        tin nón bảo hiểm</form:option>
                                                            </form:select>
                                                            <span class="form-message"></span>


                                                        </div>
                                                        <div class="main-container col-sm-12 mb-3 mb-sm-3">
                                                            <div class="editor-container editor-container_classic-editor"
                                                                id="editor-container">
                                                                <div class="editor-container__editor">
                                                                    <form:textarea name="content" id="editor" rows="3"
                                                                        path="content" />

                                                                </div>
                                                            </div>
                                                        </div>


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
                <script src="https://cdn.ckeditor.com/4.25.0-lts/standard/ckeditor.js"></script>

                <!-- Core plugin JavaScript-->
                <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

                <!-- Custom scripts for all pages-->
                <script src="/js/sb-admin-2.min.js"></script>
                <script src="/js/custom.js"></script>
                <script src="/js/validated.js"></script>>
                <script src="https://cdn.ckeditor.com/ckeditor5/44.1.0/ckeditor5.umd.js" crossorigin></script>
                <script src="https://cdn.ckbox.io/ckbox/2.6.1/ckbox.js" crossorigin></script>
                <script src="/js/main_ckeditor.js"></script>



            </body>

            </html>