<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">HELMETSHOP <sup>2</sup></div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="/admin">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Chức năng chính
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="/admin/category">
                        <i class="fas fa-list"></i>
                        <span>Danh mục sản phẩm</span>
                    </a>
                </li>
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                        aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fab fa-product-hunt"></i>
                        <span>Sản phẩm</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <!-- <h6 class="collapse-header">Danh mục sản phẩm :</h6> -->
                            <a class="collapse-item" href="/admin/product">Danh sách sản phẩm</a>
                            <a class="collapse-item" href="/admin/product/size">Thêm kích thước</a>
                            <a class="collapse-item" href="/admin/product/attribute">Thêm thông số kĩ thuật</a>
                        </div>
                    </div>
                </li>
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="/admin/user">
                        <i class="fas fa-user-tie"></i>
                        <span>Người dùng</span>
                    </a>
                </li>
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="/admin/order">
                        <i class="fas fa-shopping-cart"></i>
                        <span>Đơn hàng</span>
                    </a>

                </li>
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="/admin/blog">
                        <i class="fas fa-edit"></i>
                        <span>Blog</span>
                    </a>

                </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

                <!-- Sidebar Message -->
                <!-- <div class="sidebar-card d-none d-lg-flex">
<img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
<p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components,
    and more!</p>
<a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to
    Pro!</a>
</div> -->

            </ul>