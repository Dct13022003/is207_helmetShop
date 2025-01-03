<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Karma shop</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

                <style>
                    body {
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        min-height: 100vh;
                        margin: 0;
                        background: #f8f9fa;
                        color: #333;
                    }

                    .error-container {
                        text-align: center;
                    }

                    .error-title {
                        font-size: 10rem;
                        font-weight: bold;
                        color: #db4d01;
                    }

                    .error-subtitle {
                        font-size: 1.5rem;
                        margin-bottom: 1rem;
                    }

                    .btn-home {
                        margin-top: 1.5rem;
                    }
                </style>
            </head>

            <body>
                <div class="container error-container">
                    <h1 class="error-title">404</h1>
                    <p class="error-subtitle">Xin lỗi, Trang không tìm thấy!
                        Trang bạn đang tìm kiếm đã được xóa hoặc đổi tên hoặc tạm thời không công khai.</p>
                    <a href="/" class="btn btn-primary btn-home">Quay về trang chủ</a>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>

            </body>

            </html>