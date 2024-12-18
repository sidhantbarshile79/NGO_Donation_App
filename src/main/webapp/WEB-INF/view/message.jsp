<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message - NGO Donation</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<header>
        <jsp:include page="include/header.jsp"/>
    </header>
    
    <div class="container mt-4">
        <h2>Message List</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Message</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="contact" items="${messageList}">
                    <tr>
                        <td>${contact.contactId}</td>
                        <td>${contact.name}</td>
                        <td>${contact.email}</td>
                        <td>${contact.mobile}</td>
                        <td>${contact.message}</td>
                        <td>${contact.submitted_at}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    
    <footer class="mt-5">
        <%-- Footer --%>
        <jsp:include page="include/footer.jsp"/>
    </footer>
    

</body>
</html>