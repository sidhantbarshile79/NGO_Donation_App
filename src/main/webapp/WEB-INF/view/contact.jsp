<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Contact Application</title>
    
    <%-- Bootstrap CSS --%>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            /* font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; */
            font-family: "Poppins", sans-serif;
            line-height: 1.6;
            color: #333;
        }

        section {
            padding: 60px 0;
        }

        h2 {
            font-weight: 700;
            color: #2c3e50;
            margin-bottom: 30px;
            position: relative;
            padding-bottom: 15px;
        }

        h2:after {
            content: '';
            display: block;
            width: 60px;
            height: 3px;
            background: #3498db;
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
        }

        .text {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 20px;
        }
        
    </style>
</head>
<body>

	<header>
        <jsp:include page="include/header.jsp"/>
    </header>
    
    <bradcum>
	    <jsp:include page="include/bradcum.jsp"/>
	</bradcum>
	
	
        <div class="wrapper">
        <%-- Main Contact Section --%>
        <section class="contact-section py-5">
            <div class="container contact-container">
                <div class="row">
                    <div class="col-12">
                        <h2 class="text-center mb-4">Contact Us</h2>
                    </div>
                </div>
                
                <div class="row">
                    <%-- Contact Form Column --%>
                    <div class="col-md-6">
                        <div class="contact-form-wrapper">
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
                                
                                <%-- Submission Button --%>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-block">Send Message</button>
                                </div>
                            </f:form>
                        </div>
                        
                        <%-- Message Alerts --%>
                        <div class="message-alerts mt-3">
                            <c:if test="${not empty successMessage}">
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    ${successMessage}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            </c:if>
                            <c:if test="${not empty errorMessage}">
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    ${errorMessage}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            </c:if>
                        </div>
                    </div>
                    
                    <%-- Map Column --%>
                    <div class="col-md-6">
                        <div class="map-wrapper">
                            <iframe 
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.1753885258213!2d74.47061527349038!3d20.04309512090499!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdc39a12e78fa39%3A0x5e7442089ffc8e4e!2sBarshile%20House!5e0!3m2!1sen!2sin!4v1732598148037!5m2!1sen!2sin" 
                                width="100%" 
                                height="450" 
                                style="border:0;" 
                                allowfullscreen="" 
                                loading="lazy" 
                                referrerpolicy="no-referrer-when-downgrade">
                            </iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <%-- Footer Section --%>
        <footer class="footer">
            <div class="container">
                <jsp:include page="include/footer.jsp"/>
            </div>
        </footer>
    </div>

    <%-- Scripts --%>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
</body>
</html>