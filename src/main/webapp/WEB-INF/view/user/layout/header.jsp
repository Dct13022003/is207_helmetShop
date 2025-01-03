<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <header class="header_area sticky-header">
                <div class="main_menu">
                    <nav class="navbar navbar-expand-lg navbar-light main_box">
                        <div class="container">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <a class="navbar-brand logo_h" href="/"><img src="/img/logo/logo-poc-helmets-2.png" alt=""
                                    style="width: 120px;height: 50px; transition: all .3s ease;"></a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                                <ul class="nav navbar-nav menu_nav ml-auto">
                                    <li class="nav-item "><a class="nav-link" href="/">Trang chủ</a></li>
                                    <li class="nav-item "><a class="nav-link" href="/products">Shop</a></li>
                                    <li class="nav-item "><a class="nav-link" href="/blog">Tin tức</a></li>

                                    <li class="nav-item"><a class="nav-link" href="/contact">Liên hệ</a></li>
                                </ul>
                                <c:if test="${not empty pageContext.request.userPrincipal}">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="nav-item"><a href="/cart" class="cart"><span
                                                    class="ti-bag"></span></a>
                                        </li>
                                        <li class="nav-item">
                                            <button class="search"><span class="lnr lnr-magnifier"
                                                    id="search"></span></button>
                                        </li>
                                        <li class="nav-item submenu dropdown align-items-center d-flex ">
                                            <a href="#" class="nav-link dropdown-toggle " data-toggle="dropdown"
                                                role="button" aria-haspopup="true" aria-expanded="false">
                                                <i class="fa fa-user-o" aria-hidden="true"></i>
                                            </a>
                                            <ul class="dropdown-menu" style="left: -280px; top:85px">
                                                <li class="d-flex align-items-center flex-column"
                                                    style="min-width: 300px;">
                                                    <img style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden;"
                                                        src="/img/avatar/${sessionScope.avatar}" />
                                                    <div class="text-center my-3">
                                                        <c:out
                                                            value="${sessionScope.firstName} ${sessionScope.lastName}" />
                                                    </div>
                                                </li>
                                                <li class="nav-item"><a class="nav-link" href="/profile">Thông tin người
                                                        dùng</a></li>
                                                <li class="nav-item"><a class="nav-link" href="/history-orders">Lịch sử
                                                        mua hàng</a></li>
                                                <li class="nav-item">
                                                    <form method="post" action="/logout">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                        <button class="primary-btn"
                                                            style="width: 100%;border: none;border-radius:0px;">Đăng
                                                            xuất</button>
                                                    </form>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>


                                </c:if>
                                <c:if test="${empty pageContext.request.userPrincipal}">
                                    <a href="/login" class="a-login position-relative me-4 my-auto ml-5 color-gray">
                                        Đăng nhập
                                    </a>
                                </c:if>

                            </div>
                        </div>
                    </nav>
                </div>
                <div class="search_input" id="search_input_box">
                    <div class="container">
                        <form class="d-flex justify-content-between">
                            <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                            <button type="submit" class="btn" id="btn-searchButton"></button>
                            <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
                        </form>
                    </div>
                </div>
            </header>