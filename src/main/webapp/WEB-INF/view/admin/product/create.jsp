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
                                <form:form method="POST" action="/admin/product/create" modelAttribute="newProductDTO"
                                    enctype="multipart/form-data" id="form-1">
                                    <div class="d-flex justify-content-end pb-3">
                                        <button type="submit" class="btn btn-primary">Thêm mới</button>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="card shadow mb-4">
                                                <div class="card-header py-3">
                                                    <h6 class="m-0 font-weight-bold text-primary">Thông tin sản phẩm
                                                    </h6>
                                                </div>
                                                <div class="p-3">
                                                    <div class="form-group">
                                                        <div class="col-sm-12 mb-3 mb-sm-3">
                                                            <span class="form-label">Mã sản phẩm</span>
                                                            <form:input type="text" class="form-control" id="InputCode"
                                                                placeholder="code" path="code" />
                                                            <span class="form-message"></span>
                                                        </div>
                                                        <div class="col-sm-12 mb-3 mb-sm-3">
                                                            <label for="InputDescription">Mô tả ngắn</label>
                                                            <form:textarea class="form-control"
                                                                id="InputShortDescription" rows="3"
                                                                path="shortDescription" />
                                                        </div>
                                                        <div class="col-sm-12 mb-3 mb-sm-3">
                                                            <label for="InputDescription">Thông tin chi tiết</label>
                                                            <form:textarea class="form-control" id="InputDescription"
                                                                rows="3" path="description" />

                                                        </div>
                                                        <div class="col-sm-12 mb-3 mb-sm-3">
                                                            <span class="form-label">Danh mục</span>
                                                            <form:select class="form-control" id="categorySelect"
                                                                style="font-size: .8rem;height: calc(1.5em + .75rem + 2px + 0.5rem);"
                                                                path="category_id">
                                                                <option value="" label="--Please Select">
                                                                    <form:options items="${categories}" itemValue="id"
                                                                        itemLabel="name" />

                                                            </form:select>
                                                            <span class="form-message"></span>


                                                        </div>
                                                        <div class="col-sm-12 mb-3 mb-sm-3">
                                                            <span class="form-label">Tag</span>
                                                            <form:select class="form-control" id="tagSelect"
                                                                style="font-size: .8rem;height: calc(1.5em + .75rem + 2px + 0.5rem);"
                                                                path="tag">

                                                                <form:option value="Nổi bật">Nổi bật </form:option>
                                                                <form:option value="Sắp về">Sắp về</form:option>
                                                            </form:select>
                                                            <span class="form-message"></span>


                                                        </div>


                                                        <div class="col-sm-12 mb-3 mb-sm-3" id="addInputSize">

                                                        </div>
                                                        <div class="d-flex justify-content-around">
                                                            <button onclick="addInputGroupSize()" id="btnAddSize"
                                                                class="btn btn-primary">Thêm</button>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <div class="card shadow mb-4">
                                                <div class="card-header py-3">
                                                    <h6 class="m-0 font-weight-bold text-primary">Hình ảnh sản phẩm
                                                    </h6>
                                                </div>
                                                <div class="p-sm-3 p-3" id="">
                                                    <div class="row">
                                                        <div
                                                            class="d-flex col-sm-6 col-12 align-self-center justify-content-center">
                                                            <label class="btn btn-primary btn-file ">Thumbnail
                                                                <input class="form-control" id="inputImage"
                                                                    name="inputImage" type="file"
                                                                    style="display: none;" />
                                                            </label>
                                                        </div>

                                                        <div class="col-sm-6 col-12 mb-4">
                                                            <img id="imagePreview" class="p-1" src=""
                                                                alt="Ảnh được chọn" accept=".png, .JPG, .jpeg"
                                                                style="max-width: 140px; display: none;border-radius: 15px;" />
                                                        </div>


                                                    </div>

                                                    <label class="btn btn-primary btn-file">Hình ảnh chi
                                                        tiết
                                                        sản phẩm
                                                        <input class="form-control" type="file" id="inputImages"
                                                            accept=".png, .JPG, .jpeg" name="inputImages"
                                                            style="display: none;" multiple />
                                                    </label>
                                                    <div id="imagePreviewContainer"></div>
                                                </div>
                                            </div>

                                            <div class="card shadow mb-4">
                                                <div class="card-header py-3">
                                                    <h6 class="m-0 font-weight-bold text-primary">Thông số kĩ thuật
                                                    </h6>
                                                </div>
                                                <div class="p-3">
                                                    <div class="col-sm-12 mb-3 mb-sm-3" id="addInputAttribute">


                                                    </div>
                                                    <div class="d-flex justify-content-around">
                                                        <button onclick="addInputGroupAttribute()" id="btnAddAttribute"
                                                            class="btn btn-primary">Thêm</button>
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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


                <script>
                    document.getElementById('inputImage').addEventListener('change', function (event) {
                        const file = event.target.files[0];
                        if (file) {
                            const reader = new FileReader();
                            reader.onload = function (e) {
                                const imagePreview = document.getElementById('imagePreview');
                                imagePreview.src = e.target.result;
                                imagePreview.style.display = 'block';
                            };
                            reader.readAsDataURL(file);
                        }
                    });

                    document.getElementById('inputImages').addEventListener('change', function (event) {
                        const files = event.target.files;
                        const imagePreviewContainer = document.getElementById('imagePreviewContainer');
                        imagePreviewContainer.innerHTML = ''; // Xóa các ảnh cũ khi chọn file mới

                        for (const file of files) {
                            if (file.type.startsWith('image/')) {
                                const reader = new FileReader();
                                reader.onload = function (e) {
                                    const img = document.createElement('img');
                                    img.src = e.target.result;
                                    img.style.maxWidth = '140px';
                                    img.style.margin = '5px';
                                    img.style.borderRadius = '15px'
                                    imagePreviewContainer.appendChild(img);
                                };
                                reader.readAsDataURL(file);
                            }
                        }
                    });



                    function addInputGroupSize(e) {
                        event.preventDefault();
                        const addInputAttribute = document.getElementById('addInputSize');
                        const getLength = addInputAttribute.getElementsByClassName('row').length;
                        if (getLength < 5) {
                            const newRow = document.createElement('div')
                            newRow.classList.add('row')
                            newRow.classList.add('row' + getLength)
                            newRow.innerHTML = ` 
                                                                <div class="col-sm-4">
                                                                    <span class="form-label">Chọn size</span>
                                                                    <select class="form-control sizeSelect" id="sizeSelect`+ getLength + `'"
                                                                        style="font-size: .8rem;height: calc(1.5em + .75rem + 2px + 0.5rem);"
                                                                        name="sizeIds" >
                                                                        <option value="" label="--Please Select">
                                                                    </select>
                                                                    <span class="form-message"></span>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <span class="form-message">Giá bán</span>
                                                                    <input type="number" class="form-control"
                                                                         placeholder="price"
                                                                        name="prices" value="0" min="0"/>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <span class="form-message">Số lượng</span>
                                                                    <input type="number" class="form-control"
                                                                         placeholder="quality"
                                                                        name="qualities" value="1" min="1" />
                                                                </div>
                                                                <div class="col-12 pt-1">
                                                                    <button onclick="removeInputGroup()" 
                                                                class="btn btn-danger btn-sm">Xóa</button>
                                                                </div>   
                                                                
                                                            `;

                            addInputAttribute.appendChild(newRow);
                        }
                        else {
                            a = document.createElement('p');
                            a.id = "notify"
                            a.classList = "pt-2"
                            a.style.color = "red";
                            a.innerHTML = `Chỉ được thêm tối đa năm size`;
                            document.getElementById('btnAddSize').disabled = true;

                            addInputAttribute.appendChild(a);
                        }

                    }


                    function addInputGroupAttribute(e) {
                        event.preventDefault();

                        const $addInputAttribute = $('#addInputAttribute');
                        const getLength = $addInputAttribute.find('.row').length;

                        if (getLength < 7) {
                            // Tạo HTML cho một dòng mới
                            const newRow = `
                        <div class="row row`+ getLength + `">
                            <div class="col-sm-6">
                                <label class="form-message">Tên thuộc tính</label>
                                <select class="form-control attributeSelect"
                                    style="font-size: .8rem;height: calc(1.5em + .75rem + 2px + 0.5rem);"
                                    name="attributes">

                                </select>
                            </div>
                            <div class="col-sm-6">
                                <label for="InputDescriptionAttribute">Chi tiết thuộc tính</label>
                                <textarea class="form-control InputDescriptionAttribute" rows="1"
                                    name="descriptionAttributes"></textarea>
                            </div>
                            <div class="col-12 pt-1">
                                <button onclick="removeInputGroup()" class="btn btn-danger btn-sm">Xóa</button>
                            </div>
                        </div>
                    `;

                            // Thêm dòng mới vào DOM
                            $addInputAttribute.append(newRow);

                            // AJAX để lấy dữ liệu Attribute và điền vào select
                            $.ajax({
                                url: '<c:url value="/api/attributes"/>',
                                type: 'GET',

                                success: function (attributes) {

                                    let $select = $addInputAttribute.find(`.row` + getLength + ` .attributeSelect`);
                                    $select.empty(); // Xóa các option cũ
                                    $select.append('<option value="">-- Please Select --</option>');
                                    attributes.forEach(function (attribute) {
                                        console.log(attribute.title)
                                        $select.append(`<option value="` + attribute.id + `">` + attribute.title + `</option>`);
                                    });
                                },
                                error: function () {
                                    alert('Error loading attributes');
                                }
                            });
                        } else {
                            // Thông báo giới hạn
                            const notify = `
                        <p id="notify" class="pt-2" style="color: red;">Chỉ được thêm tối đa năm size</p>        `;
                            if (!$('#notify').length) {
                                $addInputAttribute.append(notify);
                            }

                            $('#btnAddAttribute').prop('disabled', true);
                        }
                    }

                    function removeInputGroup(e) {
                        event.preventDefault();
                        const element = event.target;
                        const parentElement = element.parentElement.parentElement;
                        const deleteNotify = document.getElementById('notify');
                        document.getElementById('btnAddSize').disabled = false;
                        if (deleteNotify)
                            deleteNotify.remove()
                        parentElement.remove();
                    }

                    // $(document).ready(function () {
                    //     $('#categorySelect').change(function () {

                    //         var categoryId = $(this).val();
                    //         if (categoryId) {
                    //             $.ajax({
                    //                 url: '<c:url value="/api/filters"/>',
                    //                 type: 'GET',
                    //                 data: { categoryId: categoryId },
                    //                 success: function (filters) {
                    //                     $('#filtersContainer').empty();
                    //                     $('#filtersDiv').show();
                    //                     $.each(filters, function (index, filter) {
                    //                         console.log(filter.id)
                    //                         console.log(index)
                    //                         $('#filtersContainer').append(
                    //                             '<div class="col-sm-4"><input class="filterCheck" id="filterCheck' + index + '" type="checkbox" name="filterDTOs" value="' + filter.id + '"> ' + filter.name + '</div>'
                    //                         );
                    //                     });
                    //                 }
                    //             });
                    //         } else {
                    //             $('#filtersDiv').hide();
                    //             $('#filtersContainer').empty();
                    //         }
                    //     });
                    // });
                    $(document).ready(function () {
                        $('#btnAddSize').click(function () {
                            $.ajax({
                                url: '<c:url value="/api/sizes"/>',
                                type: 'GET',

                                success: function (sizes) {

                                    $.each(sizes, function (index, size) {
                                        console.log(size.id)
                                        $('.sizeSelect').append(
                                            '<option value="' + size.id + '" label="' + size.name_size + '">'
                                        );
                                    });
                                }
                            });

                        });
                    });


                </script>
                <script>
                    document.addEventListener('DOMContentLoaded', function () {

                        Validator({
                            form: '#form-1',
                            formGroupSelector: '.form-group',
                            errorSelector: '.form-message',
                            rules: [
                                Validator.isRequired('#InputCode', 'Vui lòng nhập mã sản phẩm'),
                                Validator.isRequired('#categorySelect', 'Vui lòng không bỏ qua trường này'),
                                Validator.maxLength('#InputCode', 10),
                                Validator.isRequired('#InputSize'),

                            ],

                        });

                    });

                    document.addEventListener('DOMContentLoaded', function () {

                        Validator({
                            form: '#form-1',
                            formGroupSelector: '.form-group',
                            errorSelector: '.form-message',
                            rules: [
                                Validator.isRequired('#InputCode', 'Vui lòng nhập mã sản phẩm'),
                                Validator.isRequired('#categorySelect', 'Vui lòng không bỏ qua trường này'),
                                Validator.maxLength('#InputCode', 10),

                            ],

                        });
                    });
                </script>

            </body>

            </html>