<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Campaign - NGO Donation</title>
    <link href="static/css/style.css" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <header>
            <jsp:include page="include/header.jsp"/>
        </header>

        <nav>
            <jsp:include page="include/menu.jsp"/>
        </nav>

        <form action="${pageContext.request.contextPath}/campaigns/create" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" class="form-control" id="title" name="title" value="marathon" required>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" id="description" name="description" value="marathon" required></textarea>
        </div>
        <div class="form-group">
            <label for="fundRaise">Fund Raise</label>
            <input type="number" class="form-control" id="fundRaise" name="fundRaise" value="marathon" required>
        </div>
        <div class="form-group">
            <label for="targetAmount">Target Amount</label>
            <input type="number" class="form-control" id="targetAmount" name="targetAmount" value="marathon" required>
        </div>
        <div class="form-group">
            <label for="startDate">Start Date</label>
            <input type="date" class="form-control" id="startDate" name="startDate" value="marathon" required>
        </div>
        <div class="form-group">
            <label for="endDate">End Date</label>
            <input type="date" class="form-control" id="endDate" name="endDate" value="marathon" required>
        </div>
        <button type="submit" class="btn btn-primary">Create Campaign</button>
    </form>
</div>
</body>
</html>