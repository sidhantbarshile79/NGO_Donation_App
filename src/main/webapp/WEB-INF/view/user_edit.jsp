<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-4">
        <h2>Edit User</h2>
        <form action="/admin/user/update" method="post">
            <input type="hidden" name="userId" value="${user.userId}">
            <input type="hidden" name="loginName" value="${user.loginName}">
            <input type="hidden" name="password" value="${user.password}">
            
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name" value="${user.name}" required>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" name="email" value="${user.email}" required>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Phone</label>
                <input type="text" class="form-control" name="phone" value="${user.phone}" required>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Address</label>
                <textarea class="form-control" name="address" required>${user.address}</textarea>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Role</label>
                <select class="form-select" name="role">
                    <option value="1" ${user.role == 1 ? 'selected' : ''}>Admin</option>
                    <option value="2" ${user.role == 2 ? 'selected' : ''}>User</option>
                </select>
            </div>
            
            <div class="mb-3">
                <label class="form-label">Status</label>
                <select class="form-select" name="loginStatus">
                    <option value="1" ${user.loginStatus == 1 ? 'selected' : ''}>Active</option>
                    <option value="2" ${user.loginStatus == 2 ? 'selected' : ''}>Blocked</option>
                </select>
            </div>
            
            <button type="submit" class="btn btn-primary">Update User</button>
            <a href="/admin/users" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
</body>
</html>