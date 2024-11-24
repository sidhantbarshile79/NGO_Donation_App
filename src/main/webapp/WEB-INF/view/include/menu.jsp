<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page session="true" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
<head>
 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .navbar 
        {
            position: fixed; /* Fixed position */
            top: 0; /* Align to the top */
            width: 100%; /* Full width */
            z-index: 1000; /* Ensure it stays above other content */
            margin-bottom: 20px; /* Space below the navbar */
            background-colour:#888888;
            
        }
        .nav-link 
        {
            margin-right: 15px;
        }
        body 
        {
            padding-top: 70px;
        }
        
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">NGO Donation</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <c:if test="${sessionScope.userId == null}">
                    <s:url var="home_url" value="/index"/>
                    <s:url var="about_url" value="/about"/>
                    <s:url var="camp_url" value="/campaign"/>
                    <s:url var="contact_url" value="/contact"/>
                    <s:url var="login_url" value="/login"/>
                    <s:url var="donation_url" value="/donation_form"/>
                    <s:url var="users_url" value="/users"/>
                    <s:url var="donor_url" value="/donors"/>
                    <s:url var="donation_url" value="/donation"/>
                    <s:url var="link_url" value="/link"/>
                    
                    
                    <li class="nav-item">
                        <a class="nav-link" href="${home_url}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${about_url}">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${camp_url}">Campaign</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${contact_url}">Contact US</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${login_url}">Sign In</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${link_url}">Documents and Links</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.userId != null && sessionScope.role == 1}">
                    <s:url var="admin_users_url" value="/admin/users"/>
                    <s:url var="logout_url" value="/logout"/>
                    <li class="nav-item">
                        <a class="nav-link" href="admin_dashboard">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="users">User List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="donors">Donor List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="donation">Donation List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${logout_url}">Logout</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.userId != null && sessionScope.role == 2}">
                    <li class="nav-item">
                        <a class="nav-link" href="user_dashboard">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="donation_form">Donate</a>
                    </li>
                    <!-- <li class="nav-item">
                        <a class="nav-link" href="campaign">Campaign</a>
                    </li> -->
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com /bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>