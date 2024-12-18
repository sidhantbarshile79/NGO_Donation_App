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
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f8f9fa;
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
            text-align: center;
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

        .container.contact-container {
            background-color: white;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 2rem;
        }

        .form-group label {
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 8px;
        }

        .form-control {
            border-radius: 8px;
            border: 1px solid #ddd;
            padding: 12px;
            transition: all 0.3s ease;
            background-color: #f8f9fa;
        }

        .form-control:focus {
            border-color: #3498db;
            box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
            background-color: white;
        }

        .btn-primary {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            border: none;
            padding: 12px 30px;
            border-radius: 8px;
            font-weight: 600;
            transition: transform 0.3s ease;
            width: 100%;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .error {
            color: #e74c3c;
            font-size: 0.9rem;
            margin-top: 5px;
        }

        .is-invalid {
            border-color: #e74c3c;
        }

        @keyframes fadeIn {
            0% { 
                opacity: 0; 
                transform: translateY(20px); 
            }
            100% { 
                opacity: 1; 
                transform: translateY(0); 
            }
        }

        .fade-in {
            animation: fadeIn 1s ease-in;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .contact-container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <%-- Header Include --%>
    <header>
        <jsp:include page="include/header.jsp"/>
    </header>
    
    <bradcum>
        <jsp:include page="include/bradcum.jsp"/>
    </bradcum>
    
    
    <div class="container contact-container">
        <h2>Contact Us</h2>
        
        <div class="row">
            <div class="col-md-6">
                <f:form id="contactForm" modelAttribute="command" action="${pageContext.request.contextPath}/contact" method="post">
                    <div class="form-group">
                        <f:label path="name">Name</f:label>
                        <f:input path="name" id="name" class="form-control" />
                    </div>
                    
                    <div class="form-group">
                        <f:label path="email">Email</f:label>
                        <f:input path="email" id="email" class="form-control" />
                    </div>
                    
                    <div class="form-group">
                        <f:label path="mobile">Mobile Number</f:label>
                        <f:input path="mobile" id="mobile" class="form-control" />
                    </div>
                    
                    <div class="form-group">
                        <f:label path="message">Message</f:label>
                        <f:textarea path="message" id="message" class="form-control" rows="4"></f:textarea>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </f:form>
            </div>
            
            <div class="col-md-6">
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

    <%-- Footer Include --%>
    <footer>
        <jsp:include page="include/footer.jsp"/>
    </footer>

    <%-- jQuery and Validation Libraries --%>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
    $(document).ready(function() {
        $("#contactForm").validate({
            // Validation rules
            rules: {
                name: {
                    required: true,
                    minlength: 2,
                    maxlength: 50,
                    pattern: /^[a-zA-Z\s]+$/
                },
                email: {
                    required: true,
                    email: true,
                    maxlength: 100
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
                    maxlength: 500
                }
            },
            
            // Custom error messages
            messages: {
                name: {
                    required: "Please enter your name",
                    minlength: "Name must be at least 2 characters",
                    maxlength: "Name cannot exceed 50 characters",
                    pattern: "Name can only contain letters and spaces"
                },
                email: {
                    required: "Please enter your email",
                    email: "Please enter a valid email address",
                    maxlength: "Email cannot exceed 100 characters"
                },
                mobile: {
                    required: "Please enter your mobile number",
                    digits: "Mobile number must be digits only",
                    minlength: "Mobile number must be at least 10 digits",
                    maxlength: "Mobile number cannot exceed 15 digits"
                },
                message: {
                    required: "Please enter your message",
                    minlength: "Message must be at least 10 characters",
                    maxlength: "Message cannot exceed 500 characters"
                }
            },
            
            // Error placement
            errorPlacement: function(error, element) {
                error.addClass('error');
                error.insertAfter(element);
            },
            
            // Highlight and unhighlight for visual feedback
            highlight: function(element) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function(element) {
                $(element).removeClass('is-invalid');
            },
            
            // Submit handler
            submitHandler: function(form) {
                const submitButton = $(form).find('button[type="submit"]');
                submitButton.prop('disabled', true)
                           .html('<span>Sending...</span>');
                form.submit();
            }
        });

        // Input sanitization
        $("#name").on("input", function() {
            $(this).val($(this).val().replace(/[^a-zA-Z\s]/g, ''));
        });

        $("#mobile").on("input", function() {
            $(this).val($(this).val().replace(/[^0-9]/g, ''));
            if ($(this).val().length > 15) {
                $(this).val($(this).val().slice(0, 15));
            }
        });

        $("#message").on("input", function() {
            const maxLength = 500;
            if ($(this).val().length > maxLength) {
                $(this).val($(this).val().slice(0, maxLength));
            }
        });
    });
    </script>
</body>
</html>