<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <h2>User Details</h2>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">${user.name}</h5>
                <p class="card-text">
                    <strong>Email:</strong> ${user.email}<br>
                    <strong>Phone:</strong> ${user.phone}<br>
                    <strong>Address:</strong> ${user.address}<br>
                    <strong>Login Name:</strong> ${user.loginName}<br>
                    <strong>Role:</strong> 
                    <c:choose>
                        <c:when test="${user.role == 1}">Admin</c:when>
                        <c:otherwise>User</c:otherwise>
                    </c:choose><br>
                    <strong>Status:</strong>
                    <c:choose>
                        <c:when test="${user.loginStatus == 1}">Active</c:when>
                        <c:otherwise>Blocked</c:otherwise>
                    </c:choose>
                </p>
                <a href="/admin/users" class="btn btn-secondary">Back to List</a>
                <a href="/admin/user/edit/${user.userId}" class="btn btn-primary">Edit</a>
            </div>
        </div>
    </div>
</body>
</html>