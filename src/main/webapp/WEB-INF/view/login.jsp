<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Our NGO - Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f8f9fa;
        }

        section {
            padding: 40px 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        /* Welcome Section */
        .welcome-section {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 30px;
        }

        .welcome-text {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 20px;
            text-align: justify;
        }

        .video-container {
            position: relative;
            overflow: hidden;
            padding-top: 56.25%; /* 16:9 Aspect Ratio */
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .video-container iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: none;
        }

        /* Login Section */
        .login-section {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-top: 30px;
        }

        .login-form {
            padding: 20px;
            background: #fff;
            border-radius: 8px;
        }

        .login-form h5 {
            color: #2c3e50;
            margin-bottom: 25px;
            font-weight: 600;
            text-align: center;
        }

        .form-group label {
            font-weight: 500;
            color: #495057;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px 15px;
            margin-bottom: 15px;
            transition: border-color 0.3s ease;
        }

        .form-control:focus {
            border-color: #3498db;
            box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
        }

        .btn-primary {
            background-color: #3498db;
            border: none;
            padding: 10px 25px;
            border-radius: 5px;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #2980b9;
        }

        /* Message Styles */
        .error {
            color: #dc3545;
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .success {
            color: #28a745;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        /* Call to Action Section */
        .cta-section {
            text-align: center;
            padding: 30px;
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            border-radius: 10px;
            margin: 30px 0;
        }

        .cta-section h5 {
            color: white;
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        .cta-section p {
            font-size: 1.1rem;
            margin-bottom: 20px;
        }

        /* Registration Link */
        .registration-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #3498db;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .registration-link:hover {
            color: #2980b9;
            text-decoration: none;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .video-container {
                margin-top: 20px;
            }

            .login-section {
                margin-top: 20px;
            }
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


    <div class="container">
    
    
    	 <section>
            <div class="row">
                <!-- Call to Action Section -->
                <div class="col-lg-8">
                    <div class="cta-section">
                        <h5>Join Us in Making a Difference!</h5>
                        <p>
                            Become a part of our NGO and help us create meaningful change in the community. 
                            Your support can make a significant impact!
                        </p>
                        <p>
                            Together, we can create a brighter future where every child has the chance to learn, grow, 
                            and thrive in a safe and healthy environment.
                        </p>
                        <h3>Thank you for choosing us</h3>
                    </div>
                </div>

                <!-- Login Form Section -->
                <div class="col-lg-4">
                    <div class="login-form">
                        <h5>User Login</h5>
                        
                        <c:if test="${not empty err}">
                            <div class="error">${err}</div>
                        </c:if>
                        <c:if test="${param.act eq 'lo'}">
                            <div class="success">Logout Successfully! Thanks for using the contact application.</div>
                        </c:if>
                        <c:if test="${param.act eq 'reg'}">
                            <div class="success">Registered Successfully!</div>
                        </c:if>

                        <f:form action="login" modelAttribute="command">
                            <div class="form-group">
                                <label for="loginName">Username</label>
                                <f:input path="loginName" id="loginName" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <f:password path="password" id="password" class="form-control"/>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                            
                            <s:url var="reg_url" value="/reg_form"/>
                            <a href="${reg_url}" class="registration-link">New User Registration</a>
                        </f:form>
                    </div>
                </div>
            </div>
        </section>
    	
    
    
    	
        <!-- Welcome Section -->
        <section class="welcome-section">
            <div class="row">
                <div class="col-lg-6">
                    <p class="welcome-text">
                        Welcome to NGO Application, where we believe that education and a healthy environment are fundamental rights for every individual. Our mission is to empower underprivileged students by providing them with the educational resources and support they need to succeed, while simultaneously fostering a sustainable environment for future generations. We understand that education is not just about textbooks and classrooms; it is about nurturing curiosity, creativity, and critical thinking. Through scholarships, mentorship programs, and access to technology, we strive to break the cycle of poverty and open doors to new opportunities for young minds.
                    </p>
                </div>
                <div class="col-lg-6">
                    <div class="video-container">
                        <iframe src="https://www.youtube.com/embed/yP1N7vbcs0M?si=pFY0R1dZbphYWMFq" 
                                title="YouTube video player" 
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                                referrerpolicy="strict-origin-when-cross-origin" 
                                allowfullscreen>
                        </iframe>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <footer class="mt-5">
        <jsp:include page="include/footer.jsp"/>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>