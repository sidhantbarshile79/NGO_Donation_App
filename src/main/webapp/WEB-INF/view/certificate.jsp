<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Donation Certificate - NGO Donation</title>
    <link href="<c:url value='/static/css/style.css'/>" rel="stylesheet" type="text/css"/>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, Helvetica, Geneva, sans-serif;
            font-size: 18px;
            margin: 20px;
        }
        .certificate {
            border: 2px solid #007bff;
            padding: 20px;
            border-radius: 10px;
            background-color: #b4b4b4;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .header {
            text-align: center;
            margin-bottom: 20px;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="certificate">
            <div class="header">
                <h2 class="display-4">Donation Certificate</h2>
                <p class="lead">Thank you for your generous donation!</p>
            </div>

            <div class="mb-4">
                <p><strong>Donor Name:</strong> <c:out value="${donorName}"/> </p>
                <p><strong>Donation Amount:</strong> $<c:out value="${donationAmount}"/> </p>
                <p><strong>Donation Date:</strong> <c:out value="${donationDate}"/> </p>
                <p><strong>Message:</strong> <c:out value="${donationMessage}"/> </p>
            </div>

            <div class="footer">
                <p class="font-italic">Thank you for supporting our cause!</p>
                <p><strong>NGO Name</strong></p>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>