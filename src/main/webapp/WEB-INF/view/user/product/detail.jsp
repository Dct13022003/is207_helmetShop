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
                    <link rel="stylesheet" href="/client/css/themify-icons.css">
                    <link rel="stylesheet" href="/client/css/bootstrap.css">
                    <link rel="stylesheet" href="/client/css/font-awesome.min.css">
                    <link rel="stylesheet" href="/client/css/owl.carousel.css">
                    <link rel="stylesheet" href="/client/css/nice-select.css">
                    <link rel="stylesheet" href="/client/css/nouislider.min.css">
                    <link rel="stylesheet" href="/client/css/ion.rangeSlider.css" />
                    <link rel="stylesheet" href="/client/css/ion.rangeSlider.skinFlat.css" />
                    <link rel="stylesheet" href="/client/css/main.css">
                    <link rel="stylesheet" href="/client/css/custom.css">
                    <style>
                        .size-label.active {
                            border-color: #d84804;
                            /* Màu viền bạn muốn */
                            border-radius: 20px;
                            /* Tùy chỉnh bo góc */
                        }
                    </style>
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
                                    <h1>Product Details Page</h1>
                                    <nav class="d-flex align-items-center">
                                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                                        <a href="#">Shop<span class="lnr lnr-arrow-right"></span></a>
                                        <a href="single-product.html">product-details</a>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Banner Area -->

                    <!--================Single Product Area =================-->
                    <div class="product_image_area">
                        <div class="container">
                            <div class="row s_product_inner">
                                <div class="col-lg-6">
                                    <div class="s_Product_carousel">
                                        <div class="single-prd-item">
                                            <img class="img-fluid" src="/img/product/${productDetail.avatar}" alt="">
                                        </div>
                                        <c:forEach var="image" items="${productDetail.imageDTOs}">
                                            <div class="single-prd-item">
                                                <img class="img-fluid" src="/img/product/${image.name_image}" alt="">
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="col-lg-5 offset-lg-1">
                                    <div class="s_product_text">
                                        <h3>${productDetail.code}</h3>
                                        <ul class="list">
                                            <li><a class="active" href="#"><span>Danh mục</span> :
                                                    ${productDetail.categoryDTO.name}</a></li>
                                            <li><a href="#"><span>Tình trạng</span> : Còn hàng</a></li>
                                        </ul>
                                        <p>${productDetail.shortDescription}</p>
                                        <form method="post" action="/add-product-to-cart/${productDetail.id}"
                                            modelAttribute="cartDetail">
                                            <div id="size-selector">
                                                <input type="hidden" name="cartDetail.product.id"
                                                    value="${productDetail.id}">
                                                <span>Size</span>
                                                <div class="size-container">
                                                    <c:forEach var="product" items="${productDetail.product_sizeDTOs}">
                                                        <label class="size-label"
                                                            id="size-label--${product.sizeDTO.name_size}">
                                                            <input type="radio" name="sizeItem"
                                                                value=" ${product.sizeDTO.name_size}"
                                                                data-price="${product.price}"
                                                                data-quantity="${product.quantity}">
                                                            <span style=" color:
                                                                black">${product.sizeDTO.name_size}</span>

                                                        </label>
                                                    </c:forEach>
                                                </div>
                                                <span style=" margin-right: 20px;">Giá:</span>
                                                <span id="price-display"></span>
                                                <input type="hidden" value="" name="price" id="PriceSubmit">

                                                <span style=" margin-right: 20px;margin-left: 20px;">Số lượng: </span>
                                                <span id="quantity-display"></span>
                                                <input type="hidden" value="" id="quantitySubmit">
                                            </div>

                                            <div class="product_count">
                                                <label for="quantity">Quantity:</label>
                                                <input type="number" name="quantity" id="sst" value="1"
                                                    title="Quantity:" class="input-text qty"
                                                    oninput="checkMaxQuantity(this)">
                                                <button
                                                    onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                                    class="increase items-count" type="button"><i
                                                        class="lnr lnr-chevron-up"></i></button>
                                                <button
                                                    onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                                    class="reduced items-count" type="button"><i
                                                        class="lnr lnr-chevron-down"></i></button>
                                            </div>
                                            <div>
                                                <input type="hidden" name="${_csrf.parameterName}"
                                                    value="${_csrf.token}" />

                                            </div>
                                            <div class="card_area d-flex align-items-center">
                                                <button class="primary-btn">Add to Cart</a>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--================End Single Product Area =================-->

                    <!--================Product Description Area =================-->
                    <section class="product_description_area">
                        <div class="container">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab"
                                        aria-controls="home" aria-selected="true">Description</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                                        aria-controls="profile" aria-selected="false">Specification</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review"
                                        role="tab" aria-controls="review" aria-selected="false">Reviews</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                                    <p>${productDetail.description}</p>
                                </div>
                                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <tbody>
                                                <c:forEach var="product" items="${productDetail.product_attributeDTOs}">
                                                    <tr>
                                                        <td>
                                                            <h5>${product.attributeDTO.code}</h5>
                                                        </td>
                                                        <td>
                                                            <h5>${product.attributeDTO.title}</h5>
                                                        </td>
                                                        <td>
                                                            <h5>${product.description}</h5>
                                                        </td>
                                                    </tr>
                                                </c:forEach>


                                            </tbody>

                                        </table>
                                    </div>
                                </div>

                                <div class="tab-pane fade show active" id="review" role="tabpanel"
                                    aria-labelledby="review-tab">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="row total_rate">
                                                <div class="col-6">
                                                    <div class="box_total">
                                                        <h5>Overall</h5>
                                                        <h4>4.0</h4>
                                                        <h6>(03 Reviews)</h6>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="rating_list">
                                                        <h3>Based on 3 Reviews</h3>
                                                        <ul class="list">
                                                            <li><a href="#">5 Star <i class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i>
                                                                    01</a></li>
                                                            <li><a href="#">4 Star <i class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i>
                                                                    01</a></li>
                                                            <li><a href="#">3 Star <i class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i>
                                                                    01</a></li>
                                                            <li><a href="#">2 Star <i class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i>
                                                                    01</a></li>
                                                            <li><a href="#">1 Star <i class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i><i
                                                                        class="fa fa-star"></i>
                                                                    01</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="review_list">
                                                <div class="review_item">
                                                    <div class="media">
                                                        <div class="d-flex">
                                                            <img src="img/product/review-1.png" alt="">
                                                        </div>
                                                        <div class="media-body">
                                                            <h4>Blake Ruiz</h4>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                        eiusmod tempor
                                                        incididunt ut labore et
                                                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                                        exercitation ullamco
                                                        laboris nisi ut aliquip ex ea
                                                        commodo</p>
                                                </div>
                                                <div class="review_item">
                                                    <div class="media">
                                                        <div class="d-flex">
                                                            <img src="img/product/review-2.png" alt="">
                                                        </div>
                                                        <div class="media-body">
                                                            <h4>Blake Ruiz</h4>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                        eiusmod tempor
                                                        incididunt ut labore et
                                                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                                        exercitation ullamco
                                                        laboris nisi ut aliquip ex ea
                                                        commodo</p>
                                                </div>
                                                <div class="review_item">
                                                    <div class="media">
                                                        <div class="d-flex">
                                                            <img src="img/product/review-3.png" alt="">
                                                        </div>
                                                        <div class="media-body">
                                                            <h4>Blake Ruiz</h4>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                                        eiusmod tempor
                                                        incididunt ut labore et
                                                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                                        exercitation ullamco
                                                        laboris nisi ut aliquip ex ea
                                                        commodo</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="review_box">
                                                <h4>Add a Review</h4>
                                                <p>Your Rating:</p>
                                                <ul class="list">
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                                <p>Outstanding</p>
                                                <form class="row contact_form" action="contact_process.php"
                                                    method="post" id="contactForm" novalidate="novalidate">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="name"
                                                                name="name" placeholder="Your Full name"
                                                                onfocus="this.placeholder = ''"
                                                                onblur="this.placeholder = 'Your Full name'">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="email" class="form-control" id="email"
                                                                name="email" placeholder="Email Address"
                                                                onfocus="this.placeholder = ''"
                                                                onblur="this.placeholder = 'Email Address'">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="number"
                                                                name="number" placeholder="Phone Number"
                                                                onfocus="this.placeholder = ''"
                                                                onblur="this.placeholder = 'Phone Number'">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <textarea class="form-control" name="message" id="message"
                                                                rows="1" placeholder="Review"
                                                                onfocus="this.placeholder = ''"
                                                                onblur="this.placeholder = 'Review'"></textarea></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12 text-right">
                                                        <button type="submit" value="submit" class="primary-btn">Submit
                                                            Now</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!--================End Product Description Area =================-->
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


                        document.querySelectorAll('.size-label').forEach(label => {
                            label.addEventListener('click', function () {
                                // Xóa lớp 'active' khỏi tất cả các label
                                document.querySelectorAll('.size-label').forEach(label => {
                                    label.classList.remove('active');
                                });

                                // Thêm lớp 'active' vào label được chọn
                                this.classList.add('active');
                                const input = label.querySelector('input');
                                // console.log(input)
                                updatePrice(input);
                            });
                        });
                        function updatePrice(input) {
                            // Lấy giá từ thuộc tính data-price
                            const price = input.getAttribute("data-price");
                            const quantity = input.getAttribute("data-quantity");
                            const inputPrice = document.getElementById("PriceSubmit");
                            const inputQuantity = document.getElementsByName("quantitySubmit")
                            inputPrice.value = price;
                            inputQuantity.value = quantity;
                            document.getElementById("quantity-display").textContent = quantity;
                            // Hiển thị giá vào span #price
                            document.getElementById("price-display").textContent = new Intl.NumberFormat('vi-VN', {
                                style: 'currency',
                                currency: 'VND'
                            }).format(price);


                        }
                        function checkMaxQuantity(input) {
                            maxQuantity = parseInt(document.getElementById("quantity-display").innerText)
                            console.log(maxQuantity)

                            if (input.value > maxQuantity) {
                                input.value = maxQuantity;
                                btn = document.getElementsByClassName("increase")
                                console.log(btn)
                                btn.disable = true;
                            }
                        }
                        

                    </script>
                </body>

                </html>