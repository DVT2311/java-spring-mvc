<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="/css/styles.css" rel="stylesheet" />
        <script
            src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
            crossorigin="anonymous"
        ></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="../layout/header.jsp" />

        <div id="layoutSidenav">
            <jsp:include page="../layout/sidebar.jsp" />
            <div id="layoutSidenav_content">
                <main>
                    <div class="container mt-5">
                        <div class="d-flex justify-content-between">
                            <h3>Product Detail with id: ${id}</h3>
                        </div>
                        <hr />
                        <div class="card" style="width: 30%">
                            <div class="col-12 mb-3">
                                <img
                                    class="card-img-top"
                                    src="/images/product/${product.image}"
                                />
                            </div>
                            <div class="card-header">Product information</div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    ID: ${product.id}
                                </li>
                                <li class="list-group-item">
                                    Name: ${product.name}
                                </li>
                                <li class="list-group-item">
                                    Price: ${product.price}
                                </li>
                            </ul>
                        </div>
                        <a href="/admin/product" class="btn btn-success mt-3"
                            >Back</a
                        >
                    </div>
                </main>

                <jsp:include page="../layout/footer.jsp" />
            </div>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"
        ></script>
        <script src="/js/scripts.js"></script>
    </body>
</html>
