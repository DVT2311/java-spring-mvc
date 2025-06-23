<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="form"
uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />
        <title>Create Product - SB Admin</title>
        <link href="/css/styles.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
            $(document).ready(() => {
                $("#avatarFile").change(function (e) {
                    const imgURL = URL.createObjectURL(e.target.files[0]);
                    $("#avatarPreview")
                        .attr("src", imgURL)
                        .css("display", "block");
                });
            });
            // $(document).ready(function () {
            //     $("input[name='price']").val("");
            //     $("input[name='quantity']").val("");
            // });
        </script>
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
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Manage Product</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item">Dashboard</li>
                            <li class="breadcrumb-item active">
                                Create Product
                            </li>
                        </ol>
                        <div class="mt-5">
                            <div class="row">
                                <div class="col-md-6 col-12 mx-auto">
                                    <h3>Create a Product</h3>
                                    <hr />
                                    <form:form
                                        method="post"
                                        action="/admin/product/create"
                                        modelAttribute="newProduct"
                                        enctype="multipart/form-data"
                                    >
                                        <div class="row g-3">
                                            <div class="col mb-3">
                                                <c:set var="errorName">
                                                    <form:errors
                                                        path="name"
                                                        cssClass="invalid-feedback"
                                                    />
                                                </c:set>
                                                <label class="form-label"
                                                    >Name:</label
                                                >
                                                <form:input
                                                    type="text"
                                                    class="form-control ${not empty errorName ? 'is-invalid':''}"
                                                    path="name"
                                                />
                                                ${errorName}
                                            </div>
                                            <div class="col mb-3">
                                                <c:set var="errorPrice">
                                                    <form:errors
                                                        path="price"
                                                        cssClass="invalid-feedback"
                                                    />
                                                </c:set>
                                                <label class="form-label"
                                                    >Price:</label
                                                >
                                                <form:input
                                                    type="text"
                                                    class="form-control ${not empty errorPrice ? 'is-invalid':''}"
                                                    path="price"
                                                />
                                                ${errorPrice}
                                            </div>
                                        </div>

                                        <div class="mb-3">
                                            <c:set var="errorDetailDESC">
                                                <form:errors
                                                    path="detailDesc"
                                                    cssClass="invalid-feedback"
                                                />
                                            </c:set>
                                            <label class="form-label"
                                                >Detail description:</label
                                            >
                                            <form:textarea
                                                class="form-control ${not empty errorDetailDESC ? 'is-invalid':''}"
                                                path="detailDesc"
                                                rows="3"
                                            />
                                            ${errorDetailDESC}
                                        </div>

                                        <div class="row g-3">
                                            <div class="col mb-3">
                                                <c:set var="errorShortDESC">
                                                    <form:errors
                                                        path="shortDesc"
                                                        cssClass="invalid-feedback"
                                                    />
                                                </c:set>
                                                <label class="form-label"
                                                    >Short description:</label
                                                >
                                                <form:input
                                                    type="text"
                                                    class="form-control ${not empty errorShortDESC ? 'is-invalid':''}"
                                                    path="shortDesc"
                                                />
                                                ${errorShortDESC}
                                            </div>
                                            <div class="col mb-3">
                                                <c:set var="errorQuantity">
                                                    <form:errors
                                                        path="quantity"
                                                        cssClass="invalid-feedback"
                                                    />
                                                </c:set>
                                                <label class="form-label"
                                                    >Quantity:</label
                                                >
                                                <form:input
                                                    type="text"
                                                    class="form-control ${not empty errorQuantity ? 'is-invalid':''}"
                                                    path="quantity"
                                                />
                                                ${errorQuantity}
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div
                                                class="col mb-3 col-12 col-md-6"
                                            >
                                                <label class="form-label"
                                                    >Factory:</label
                                                >
                                                <form:select
                                                    class="form-select"
                                                    path="factory"
                                                >
                                                    <form:option value="Apple"
                                                        >Apple
                                                        (Macbook)</form:option
                                                    >
                                                    <form:option value="Asus"
                                                        >Asus</form:option
                                                    >
                                                    <form:option value="Lenovo"
                                                        >Lenovo</form:option
                                                    >
                                                    <form:option value="Dell"
                                                        >Dell</form:option
                                                    >
                                                    <form:option value="LG"
                                                        >LG</form:option
                                                    >
                                                    <form:option value="Acer"
                                                        >Acer</form:option
                                                    >
                                                </form:select>
                                                <form:errors
                                                    path="factory"
                                                    cssClass="text-danger"
                                                />
                                            </div>

                                            <div
                                                class="col mb-3 col-12 col-md-6"
                                            >
                                                <label class="form-label"
                                                    >Target:</label
                                                >
                                                <form:select
                                                    class="form-select"
                                                    path="target"
                                                >
                                                    <form:option value="Gaming"
                                                        >Gaming</form:option
                                                    >
                                                    <form:option
                                                        value="Sinh Viên - Văn Phòng"
                                                        >Sinh Viên - Văn
                                                        Phòng</form:option
                                                    >
                                                    <form:option
                                                        value="Thiết kế đồ họa"
                                                        >Thiết kế đồ
                                                        họa</form:option
                                                    >
                                                    <form:option
                                                        value="Mỏng nhẹ"
                                                        >Mỏng nhẹ</form:option
                                                    >
                                                    <form:option
                                                        value="Doanh nhân"
                                                        >Doanh nhân</form:option
                                                    >
                                                </form:select>
                                                <form:errors
                                                    path="target"
                                                    cssClass="text-danger"
                                                />
                                            </div>
                                        </div>

                                        <div class="col mb-3 col-12 col-md-6">
                                            <label
                                                for="avatarFile"
                                                class="form-label"
                                                >Image:</label
                                            >
                                            <input
                                                class="form-control"
                                                type="file"
                                                id="avatarFile"
                                                name="hoidanitFile"
                                                accept=".png, .jpg, .jpeg"
                                            />
                                        </div>

                                        <div class="col-12 mb-3">
                                            <img
                                                style="
                                                    max-height: 250px;
                                                    display: none;
                                                "
                                                alt="avatar preview"
                                                id="avatarPreview"
                                            />
                                        </div>

                                        <div class="col-12 mb-5">
                                            <button
                                                type="submit"
                                                class="btn btn-primary"
                                            >
                                                Create
                                            </button>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
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
