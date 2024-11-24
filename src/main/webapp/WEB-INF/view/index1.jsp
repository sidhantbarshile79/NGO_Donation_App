<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>



<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Login - Contact Application</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
    <div class="container mt-5">
        <header>
            <%-- Header --%>
            <jsp:include page="include/header.jsp"/>
        </header>

        <nav>
            <%-- Menu --%>
            <jsp:include page="include/menu.jsp"/>
        </nav>

        <main class="mt-4">
            <h3>User Login</h3>
            <c:if test="${not empty err}">
                <p class="error">${err}</p>
            </c:if>
            <c:if test="${param.act eq 'lo'}">
                <p class="success">Logout Successfully! Thanks for using the contact application.</p>
            </c:if>
            <c:if test="${param.act eq 'reg'}">
                <p class="success">Registered Successfully!</p>
            </c:if>

            <f:form action="login" modelAttribute="command">
                <div class="form-group">
                    <label for="loginName">Username</label>
                    <f:input path="loginName" id="loginName" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <f:password path="password" id="password" class="form-control"/>
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
                <br/>
                <a href="#" class="mt-2">New User Registration</a>
            </f:form>
        </main>

        <footer class="mt-5">
            <%-- Footer --%>
            <jsp:include page="include/footer.jsp"/>
        </footer>
    </div>
</body>
</html>