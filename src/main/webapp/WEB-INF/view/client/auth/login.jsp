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
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SB Admin</title>
        <link href="/css/styles.css" rel="stylesheet" />
        <script
            src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
            crossorigin="anonymous"
        ></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div
                                    class="card shadow-lg border-0 rounded-lg mt-5"
                                >
                                    <div class="card-header">
                                        <h3
                                            class="text-center font-weight-light my-4"
                                        >
                                            Login
                                        </h3>
                                    </div>
                                    <div class="card-body">
                                        <form action="/login" method="post">
                                            <c:if test="${param.error != null}">
                                                <div
                                                    class="my-2"
                                                    style="color: red"
                                                >
                                                    Invalid email or password.
                                                </div>
                                            </c:if>

                                            <c:if
                                                test="${param.logout != null}"
                                            >
                                                <div
                                                    class="my-2"
                                                    style="color: green"
                                                >
                                                    Logout success.
                                                </div>
                                            </c:if>

                                            <div class="form-floating mb-3">
                                                <input
                                                    class="form-control"
                                                    placeholder="name@example.com"
                                                    name="username"
                                                />
                                                <label for="inputEmail"
                                                    >Email address</label
                                                >
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input
                                                    class="form-control"
                                                    type="password"
                                                    placeholder="Password"
                                                    name="password"
                                                />
                                                <label for="inputPassword"
                                                    >Password</label
                                                >
                                            </div>
                                            <div>
                                                <!-- checkbox remember me -->
                                                <input
                                                    type="checkbox"
                                                    name="remember-me"
                                                    id="remember-me"
                                                />
                                                <label for="remember-me"
                                                    >Remember Me</label
                                                >
                                            </div>
                                            <div>
                                                <input
                                                    type="hidden"
                                                    name="${_csrf.parameterName}"
                                                    value="${_csrf.token}"
                                                />
                                            </div>

                                            <div
                                                class="d-flex justify-content-center mt-4 mb-0"
                                            >
                                                <button
                                                    class="btn btn-primary btn-block"
                                                >
                                                    Login
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small">
                                            <a href="/register"
                                                >Need an account? Sign up!</a
                                            >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"
        ></script>
        <script src="/js/scripts.js"></script>
    </body>
</html>
