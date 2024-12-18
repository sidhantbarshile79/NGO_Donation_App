<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation Successful - NGO Donations</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2980b9;
            --success-color: #28a745;
            --background-color: #f4f6f9;
            --text-primary: #333;
            --text-secondary: #666;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
            background-color: var(--background-color);
            line-height: 1.6;
            color: var(--text-primary);
        }

       .donation-success-wrapper 
       {
		    display: flex;                    
		    justify-content: center;          
		    align-items: center;           
		    min-height: calc(100vh - 200px); 
		    padding: 2rem 0;              
		    width: 100%;                
		    box-sizing: border-box;    
		}

        .success-container {
            width: 100%;
            max-width: 550px;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            padding: 3rem 2.5rem;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .success-container:hover {
            transform: translateY(-10px);
        }

        .success-icon {
            color: var(--success-color);
            font-size: 5rem;
            margin-bottom: 1.5rem;
            animation: bounce 1s ease-in-out;
        }

        @keyframes bounce {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }

        .success-title {
            color: var(--text-primary);
            font-size: 2.2rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .success-message {
            color: var(--text-secondary);
            font-size: 1.1rem;
            margin-bottom: 2rem;
            line-height: 1.6;
        }

        .btn-donation-action {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            padding: 0.75rem 1.5rem;
            margin: 0.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-return {
            background-color: var(--primary-color);
            color: white;
        }

        .btn-download {
            background-color: var(--secondary-color);
            color: white;
        }

        .btn-donation-action:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .alert-custom {
            border-radius: 8px;
            padding: 1rem;
            margin-bottom: 1.5rem;
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="include/header.jsp"/>
    </header>

    <div class="donation-success-wrapper">
        <div class="container">
            <div class="success-container">
                <i class="fas fa-check-circle success-icon"></i>
                <h1 class="success-title">Thank You for Your Donation!</h1>
                <p class="success-message">
                    Your generous contribution will help make a significant difference 
                    in the lives of those we serve. Every donation brings hope and 
                    creates positive change in our community.
                </p>

                <c:if test="${not empty successMessage}">
                    <div class="alert alert-success alert-custom" role="alert">
                        ${successMessage}
                    </div>
                </c:if>

               <div class="action-buttons">
    <a href="${pageContext.request.contextPath}/user_dashboard/${userId}" 
       class="btn-donation-action btn-return">
        <i class="fas fa-home"></i> Return to Dashboard
    </a>
    <a href="${pageContext.request.contextPath}/downloadReceipt?donationId=${donationId}" class="btn btn-primary">
        <i class="fas fa-file-pdf"></i> Download Receipt
    </a>
</div>

            </div>
        </div>
    </div>

    <footer>
        <jsp:include page="include/footer.jsp"/>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>