<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <%@include file="vendor/head.jsp"%>
    </head>
    <body>
    <%@include file="vendor/navbar.jsp"%>
        <div class="container">
            <div class="row mt-5">
                <div class="col-sm-6 offset-3">
                    <h4 class="mb-4">
                        LOGIN TO SYSTEM
                    </h4>
                    <%
                        String passError = request.getParameter("passworderror");
                        if (passError != null) {
                    %>
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            Incorrect password
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    <%
                        }
                    %>
                    <%
                        String emailError = request.getParameter("emailerror");
                        if (emailError != null) {
                    %>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        Incorrect email
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <%
                        }
                    %>
                    <form action="/auth" method="post">
                        <div class="form-group">
                            <label>Email:</label>
                            <input type="email" required class="form-control" name="email">
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                            <input type="password" required class="form-control" name="password">
                        </div>
                        <div class="form-group">
                            <button class="btn btn-success">LOGIN</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
