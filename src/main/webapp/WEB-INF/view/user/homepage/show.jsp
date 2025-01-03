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
          <link rel="stylesheet" href="/client/css/font-awesome.min.css">
          <link rel="stylesheet" href="/client/css/themify-icons.css">
          <link rel="stylesheet" href="/client/css/bootstrap.css">
          <link rel="stylesheet" href="/client/css/owl.carousel.css">
          <link rel="stylesheet" href="/client/css/nice-select.css">
          <link rel="stylesheet" href="/client/css/nouislider.min.css">
          <link rel="stylesheet" href="/client/css/ion.rangeSlider.css" />
          <link rel="stylesheet" href="/client/css/ion.rangeSlider.skinFlat.css" />
          <link rel="stylesheet" href="/client/css/magnific-popup.css">
          <link rel="stylesheet" href="/client/css/main.css">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

          <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
          <style>
            .banner {
              transition: filter 0.3s ease-in-out, opacity 0.3s ease-in-out;
              /* Hiệu ứng mượt mà */
            }

            /* Hiệu ứng khi hover vào banner */
            .banner:hover {
              filter: brightness(0.5);
              /* Làm ảnh sáng và đậm hơn */
              opacity: 0.9;
              /* Làm ảnh mờ một chút (tùy chỉnh) */
            }

            /* Định dạng ảnh */
            .zoom-image {
              width: 300px;
              height: auto;
              transition: transform 0.3s ease;
              /* Hiệu ứng chuyển đổi mượt mà */
            }

            /* Khi hover vào ảnh */
            .zoom-image:hover {
              transform: scale(1.1);
              /* Phóng to 10% */
            }
          </style>
          <style>
            .swiper {
              width: 100%;
              height: 560px
            }

            .swiper-slide {
              position: relative;
              text-align: center;
              font-size: 18px;
              background: #fff;
              display: flex;
              justify-content: center;
              align-items: center;

            }

            .swiper-slide img {
              display: block;
              width: 100%;
              height: auto;
              object-fit: cover;
            }

            .caption {
              position: absolute;
              left: 50px;
              max-width: 300px;
              color: white;
            }

            .caption h2 {
              font-weight: 550;
              font-size: 2rem;
              margin-bottom: 10px;
            }

            .buttons .btn {
              padding: 10px 20px;
              margin-right: 10px;
              font-size: 1rem;
              text-decoration: none;
              /* Loại bỏ gạch chân */
              border: none;
            }

            .btn-buy {
              background-color: #febe10;
            }

            .btn-more {
              background-color: black;
              color: white;
            }
          </style>
        </head>

        <body>

          <!-- Start Header Area -->
          <jsp:include page="../layout/header.jsp" />
          <!-- End Header Area -->

          <!-- start banner Area -->
          <section>
            <!-- Slider main container -->
            <div class="swiper mySwiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <img src="/img/slider/silder_1.png" alt="">
                  <div class="wrap-content">
                    <div class="caption">
                      <h2 class="lh-base">TỰ TIN, CÁ TÍNH, VI VU KHẮP PHỐ</h2>
                      <div class="buttons">
                        <a href="/product/2" class="btn btn-warning">Mua ngay</a>
                        <a href="/products" class="btn btn-dark">Xem thêm</a>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <img src="/img/slider/silder_2.png" alt="">
                  <div class="caption">
                    <h2 class="text-white">VƯỢT MỌI THỬ THÁCH, THEO ĐUỔI ĐAM MÊ</h2>
                    <div class="buttons">
                      <a href="" class="btn btn-warning">Mua ngay</a>
                      <a href="/products" class="btn btn-dark">Xem thêm</a>
                    </div>
                  </div>
                </div>
                <div class="swiper-slide">
                  <img src="/img/slider/silder_3.png" alt="">
                  <div class="caption">
                    <h2>NÓN BẢO HIỂM MỚI DÀNH CHO XE MÁY</h2>
                    <div class="buttons">
                      <a href="/product/3" class="btn btn-warning">Mua ngay</a>
                      <a href="/products?category=2" class="btn btn-dark">Xem thêm</a>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </section>
          <!-- End banner Area -->

          <!-- start features Area -->
          <section class="features-area section_gap">
            <div class="container">
              <div class="row features-inner">
                <!-- single features -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-features">
                    <div class="f-icon">
                      <img src="/client/img/features/f-icon1.png" alt="">
                    </div>
                    <h6>Free Delivery</h6>
                    <p>Free Shipping on all order</p>
                  </div>
                </div>
                <!-- single features -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-features">
                    <div class="f-icon">
                      <img src="/client/img/features/f-icon2.png" alt="">
                    </div>
                    <h6>Return Policy</h6>
                    <p>Free Shipping on all order</p>
                  </div>
                </div>
                <!-- single features -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-features">
                    <div class="f-icon">
                      <img src="/client/img/features/f-icon3.png" alt="">
                    </div>
                    <h6>24/7 Support</h6>
                    <p>Free Shipping on all order</p>
                  </div>
                </div>
                <!-- single features -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                  <div class="single-features">
                    <div class="f-icon">
                      <img src="/client/img/features/f-icon4.png" alt="">
                    </div>
                    <h6>Secure Payment</h6>
                    <p>Free Shipping on all order</p>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <!-- end features Area -->



          <!-- start product Area -->
          <section>
            <!-- single product slide -->
            <div class="single-product-slider">
              <div class="container">
                <div class="row justify-content-center">
                  <div class="col-lg-6 text-center">
                    <div class="section-title">
                      <h1 style="font-weight: 500;">Sản phẩm nổi bật</h1>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <c:forEach var="product" items="${productNBs}">
                    <!-- single product -->
                    <div class="col-lg-3 col-md-6">

                      <div class="single-product">

                        <img class="img-fluid zoom-image" src="/img/product/${product.avatar}"
                          style="object-fit: cover;min-height: 340px" alt="">

                        <div class="product-details">
                          <h6>${product.category.name}</h6>



                          <div class="price">
                            <h6 style="color: rgb(253, 114, 8);">${product.code}</h6>
                            <c:if test="${product.product_sizes[0].price !=null}">
                              <fmt:formatNumber type="number" value="${product.product_sizes[0].price}" /> VNĐ
                            </c:if>
                          </div>

                          <div class="prd-bottom">

                            <a href="" class="social-info">
                              <span class="ti-bag"></span>
                              <p class="hover-text">add to bag</p>
                            </a>

                            <a href="/product/${product.id}" class="social-info">
                              <span class="lnr lnr-move"></span>
                              <p class="hover-text">view more</p>
                            </a>
                          </div>

                        </div>

                      </div>

                    </div>
                  </c:forEach>
                </div>
              </div>
              <!-- single product slide -->

          </section>
          <!-- end product Area -->
          <!-- Start category Area -->
          <section class="category-area">
            <div class="container">
              <div class="row justify-content-center">
                <div class="col-lg-6 text-center">
                  <div class="section-title">
                    <h1>Danh mục sản phẩm</h1>
                  </div>
                </div>
                <div class="col-lg-12">
                  <div class="row">
                    <c:forEach var="category" items="${categories}">
                      <div class="col-lg-3 col-md-6">
                        <div class="single-deal">
                          <div class="overlay"></div>
                          <a href="/products?category=${category.id}">
                            <img class="img-fluid w-100" src="/img/category/${category.thumbnail}" alt="">
                            <div class="deal-details">
                              <h6 class="deal-title">${category.name}</h6>
                            </div>
                          </a>


                        </div>
                      </div>
                    </c:forEach>
                  </div>

                </div>
              </div>
            </div>
          </section>
          <!-- End category Area -->
          <section>
            <div class="row">
              <div class="col-12" style="position: relative;">
                <a href="/policy">
                  <span>
                    <img class="banner" src="/img/slider/banner.png" style="display: block;
                      width: 100%;
                      height: auto;
                      object-fit: cover;
                      " alt="">
                  </span>
                  <span
                    style="position: absolute;top: 80%; left: 50%; transform: translate(-50%, -50%); text-align: center;">
                    <h2 class=" text-white">An toàn, niềm tin &amp; chất lượng</h2> <button class="btn">
                      <span class="btn"> Xem thêm </span> </button>
                  </span>
                </a>
              </div>
              <div class="col-6 pt-2 pr-1 pb-2" style="position: relative;">
                <a href="/gioi-thieu-chung">
                  <span>
                    <img class="banner" src="/img/slider/banner2.png" style="display: block;
                      width: 100%;
                      height: auto;
                      object-fit: cover;
                      " alt="">
                  </span>
                  <span
                    style="position: absolute;top: 80%; left: 50%; transform: translate(-50%, -50%); text-align: center;">
                    <h2 class=" text-white">Giới thiệu chung</h2> <button class="btn">
                      <span class="btn"> Xem thêm </span> </button>
                  </span>
                </a>
              </div>
              <div class="col-6 pt-2 pr-1 pb-2" style="position: relative;">
                <a href="/qua-trinh-phat-trien">
                  <span>
                    <img class="banner" src="/img/slider/banner3.png" style="display: block;
                      width: 100%;
                      height: auto;
                      object-fit: cover;
                      " alt="">
                  </span>
                  <span
                    style="position: absolute;top: 80%; left: 50%; transform: translate(-50%, -50%); text-align: center;">
                    <h2 class=" text-white">Quá trình phát triển</h2> <button class="btn">
                      <span class="btn"> Xem thêm </span> </button>
                  </span>
                </a>
              </div>
            </div>

          </section>

          <!-- Start brand Area -->

          <!-- End brand Area -->



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
          <script src="/client/js/countdown.js"></script>
          <script src="/client/js/jquery.magnific-popup.min.js"></script>
          <script src="/client/js/owl.carousel.min.js"></script>
          <!--gmaps Js-->
          <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
          <script src="/client/js/gmaps.min.js"></script>
          <script src="/client/js/main.js"></script>
          <!-- Swiper JS -->
          <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

          <script>
            var swiper = new Swiper(".mySwiper", {
              loop: true, autoplay: {
                delay: 4000, // 2 giây
                disableOnInteraction: false,
              }
            });

          </script>
        </body>

        </html>