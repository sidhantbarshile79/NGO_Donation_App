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
    <title>User Registration - Contact Application</title>
    <link href="<c:url value='/static/css/style.css'/>" rel="stylesheet" type="text/css"/>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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

        h2, h3 {
            font-weight: 700;
            color: #2c3e50;
            margin-bottom: 30px;
            position: relative;
            padding-bottom: 15px;
            text-align: center; /* Corrected from text-alignment to text-align */
        }

        h2:after, h3:after {
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

        /* Container Styles */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        /* Registration Form Specific Styles */
        .container.mt-5 {
            background-color: white;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 2rem !important;
        }

        main.mt-4 {
            animation: fadeIn 1s ease-in;
        }

        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 8px;
            display: block;
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
		/* Animation */
        .fade-in {
            animation: fadeIn 1s ease-in;
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

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }
            
            .container.mt-5 {
                padding: 20px;
            }
            
            .btn-primary {
                padding: 10px 20px;
            }
            
            h2, h3 {
                font-size: 1.5rem;
            }
        }

        /* Error and Success Messages */
        .error {
            color: #e74c3c;
            font-size: 0.9rem;
            margin-top: 5px;
        }

        .success {
            color: #2ecc71;
            font-size: 0.9rem;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    
    <header>
        <%-- Header --%>
        <jsp:include page="include/header.jsp"/>
    </header>
    
    <bradcum>
        <jsp:include page="include/bradcum.jsp"/>
    </bradcum>
    
    <div class="container col-lg-7">
        <main class="mt-4">
            <h3>User Registration</h3>

            <s:url var="url_reg" value="/register"/>
            <f:form action="${url_reg}" modelAttribute="command">
                <div class="form-group">
                    <label for="name">Name</label>
                    <f:input path="user.name" id="name" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="phone">Phone</label>
                    <f:input path="user.phone" id="phone" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <f:input path="user.address" id="address" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <f:input path="user.email" id="email" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="loginName">User  name</label>
                    <f:input path="user.loginName" id="loginName" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <f:input path="user.password" type="password" id="password" class="form-control"/>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
            </f:form>
        </main>
    </div>
    
    <footer class="mt-5">
        <%-- Footer --%>
        <jsp:include page="include/footer.jsp"/>
    </footer>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>

    <script>
    $(document).ready(function() {
        // Add validation to the form
        $("form").validate({
            // Validation rules for each form field
            rules: {
                "user.name": {
                	required: true,
                    minlength: 2,
                    maxlength: 50,                    
                    pattern: /^[a-zA-Z\s]+$/
                },
                "user.phone": {
                    required: true,
                    digits: true,
                    minlength: 10,
                    maxlength: 15
                },
                "user.address": {
                    required: true,
                    minlength: 5,
                    maxlength: 100
                },
                "user.email": {
                    required: true,
                    email: true,
                    maxlength: 100
                },
                "user.loginName": {
                    required: true,
                    minlength: 4,
                    maxlength: 50,
                    pattern: /^[a-zA-Z\s]+$/
                },
                "user.password": {
                    required: true,
                    minlength: 8,
                    maxlength: 50,
                    passwordStrength: true
                }
            },
            // Custom error messages
            messages: {
                "user.name": {
                    required: "Please enter your name",
                    minlength: "Name must be at least 2 characters",
                    maxlength: "Name cannot exceed 50 characters",
                    pattern: "Name can only contain letters and spaces"
                },
                "user.phone": {
                    required: "Please enter your phone number",
                    digits: "Phone number must contain only digits",
                    minlength: "Phone number must be at least 10 digits",
                    maxlength: "Phone number cannot exceed 15 digits"
                },
                "user.address": {
                    required: "Please enter your address",
                    minlength: "Address must be at least 5 characters",
                    maxlength: "Address cannot exceed 100 characters"
                },
                "user.email": {
                    required: "Please enter your email",
                    email: "Please enter a valid email address",
                    maxlength: "Email cannot exceed 100 characters"
                },
                "user.loginName": {
                    required: "Please enter your login name",
                    minlength: "Login name must be at least 4 characters",
                    maxlength: "Login name cannot exceed 20 characters",
                    pattern: "Login name can only contain letters, numbers, and underscore"
                },
                "user.password": {
                    required: "Please enter your password",
                    minlength: "Password must be at least 8 characters",
                    maxlength: "Password cannot exceed 50 characters"
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
                $(element).removeClass('is-valid');
            },
            unhighlight: function(element) {
                $(element).removeClass('is-invalid');
                $(element).addClass('is-valid');
            },
            // Form submission handler
            submitHandler: function(form) {
                // Prevent multiple submissions
                $(form).find('button[type="submit"]').prop('disabled', true);
                
                // Optional: Add AJAX submission
                $.ajax({
                    type: form.method,
                    url: form.action,
                    data: $(form).serialize(),
                    success: function(response) {
                        // Handle successful submission
                        alert('Registration successful!');
                        form.reset();
                    },
                    error: function(xhr) {
                        // Handle submission errors
                        alert('Registration failed. Please try again.');
                    },
                    complete: function() {
                        // Re-enable submit button
                        $(form).find('button[type="submit"]').prop('disabled', false);
                    }
                });
            }
        });

        // Custom password strength validation
        $.validator.addMethod("passwordStrength", function(value) {
            // At least 8 characters, at least one uppercase, one lowercase, one number, and one special character
            return /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/.test(value);
        }, "Password must be at least 8 characters and include uppercase, lowercase, number, and special character");

        // Real-time validation
        $('form input').on('blur', function() {
            $(this).valid();
        });
    });
    </script>
</body>
</html>