<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contact Us - Contact Application</title>
    <link rel="stylesheet" href="<c:url value='/static/css/style.css'/>">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <style>
        /* Add your custom styles here */
    </style>
    <script>
        $(document).ready(function() {
            $("#contactForm").validate({
                rules: {
                    name: {
                        required: true,
                        minlength: 2,
                        maxlength: 100
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    mobile: {
                        required: true,
                        digits: true,
                        minlength: 10,
                        maxlength: 15
                    },
                    message: {
                        required: true,
                        minlength: 10,
                        maxlength: 1000
                    }
                },
                messages: {
                    name: {
                        required: "Please enter your name.",
                        minlength: "Your name must be at least 2 characters long.",
                        maxlength: "Your name must be less than 100 characters long."
                    },
                    email: {
                        required: "Please enter your email address.",
                        email: "Please enter a valid email address."
                    },
                    mobile: {
                        required: "Please enter your mobile number.",
                        digits: "Your mobile number must contain digits only.",
                        minlength: "Your mobile number must be at least 10 digits long.",
                        maxlength: "Your mobile number must be less than 15 digits long."
                    },
                    message: {
                        required: "Please enter your message.",
                        minlength: "Your message must be at least 10 characters long.",
                        maxlength: "Your message must be less than 1000 characters long."
                    }
                },
                errorClass: "text-danger",
                highlight: function(element, errorClass) {
                    $(element).addClass("is-invalid");
                },
                unhighlight: function(element, errorClass) {
                    $(element).removeClass("is-invalid");
                }
            });
        });
    </script>
</head>
<body>
    <div class="container mt-4">
        <h2>Contact Us</h2>
        <f:form id="contactForm" modelAttribute="contact" action="${pageContext.request.contextPath}/contact" method="post">
            <div class="form-group">
                <f:label path="name">Name</f:label>
                <f:input path="name" id="name" class="form-control" />
                <f:errors path="name" cssClass="text-danger" />
            </div>
            <div class="form-group">
                <f:label path="email">Email</f:label>
                <f:input path="email" id="email" class="form-control" />
                <f:errors path="email" cssClass="text-danger" />
            </div>
            <div class="form-group">
                <f:label path="mobile">Mobile Number</f:label>
                <f:input path="mobile" id="mobile" class="form-control" />
                <f:errors path="mobile" cssClass="text-danger" />
            </div>
            <div class="form-group">
                <f:label path="message">Message</f:label>
                <f:textarea path="message" id="message" class="form-control" rows="4"></f:textarea>
                <f:errors path="message" cssClass="text-danger" />
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block">Send Message</button>
            </div>
        </f:form>
        <c:if test="${not empty successMessage}">
            <div class="alert alert-success" role="alert">
                ${successMessage}
            </div>
        </c:if>
        <c:if test="${not empty errorMessage}">
            <div class="alert alert-danger" role="alert">
                ${errorMessage}
            </div>
        </c:if>
    </div>
</body>
</html>
