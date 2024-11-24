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
        <h2>Donor List</h2>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Donor Name</th>
                    <th>Amount</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="donation" items="${donationList}">
                    <tr>
                        <td>${donation.donationId}</td>
                        <td>${donation.name}</td>
                        <td>${donation.donationAmount}</td>
                        <td>${donation.donationDate}</td>
                        
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