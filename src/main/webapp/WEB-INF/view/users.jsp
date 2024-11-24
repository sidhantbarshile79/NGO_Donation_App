<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


        <header>
            <jsp:include page="include/header.jsp"/>
        </header>


    <div class="container mt-4">
        <h2>User Management</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Role</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
            <c:set var="totalUsers" value="0" />
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.phone}</td>
                        <td>
                            <c:choose>
                                <c:when test="${user.role == 1}">Admin</c:when>
                                <c:otherwise>User</c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${user.loginStatus == 1}">
                                    <span class="badge bg-success">Active</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge bg-danger">Blocked</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <a href="/admin/user/${user.userId}" class="btn btn-info btn-sm">View</a>
                            <a href="/admin/user/edit/${user.userId}" class="btn btn-primary btn-sm">Edit</a>
                            <a href="/admin/user/delete/${user.userId}" class="btn btn-danger btn-sm" 
                               onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
                            
                            <form method="post" action="/admin/user/status" style="display: inline;">
                                <input type="hidden" name="userId" value="${user.userId}">
                                <c:choose>
                                    <c:when test="${user.loginStatus == 1}">
                                        <input type="hidden" name="status" value="2">
                                        <button type="submit" class="btn btn-warning btn-sm">Block</button>
                                    </c:when>
                                    <c:otherwise>
                                        <input type="hidden" name="status" value="1">
                                        <button type="submit" class="btn btn-success btn-sm">Unblock</button>
                                    </c:otherwise>
                                </c:choose>
                            </form>
                        </td>
                    </tr>
                    <c:set var="totalUsers" value="${totalUsers + 1}" />

                </c:forEach>
                
            </tbody>
        </table>
 <div>
    <strong>Total Users: ${totalUsers}</strong>
</div>
    </div>
    
    <footer class="mt-5">
          <%-- Footer --%>
          <jsp:include page="include/footer.jsp"/>
     </footer>
    
   
</body>
 <script>
    // Store totalUsers in sessionStorage
    sessionStorage.setItem("totalUsers", "${totalUsers}");
</script>
</html>