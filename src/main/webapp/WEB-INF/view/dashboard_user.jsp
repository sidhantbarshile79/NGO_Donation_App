<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - NGO Application</title>
    <link href="static/css/styles.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/your-file.js"></script>
    <style>
        .welcome-banner {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 30px;
        }
        
        .donation-history {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        
        .campaign-card {
            background: #fff;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        
        .campaign-card:hover {
            transform: translateY(-5px);
        }
        
        .progress {
            height: 10px;
            margin: 10px 0;
        }
        
        .certificate-card {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 15px;
        }
        
        .quick-donate {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="include/header.jsp"/>
    </header>

    <div class="container mt-4">
        <!-- Welcome Banner -->
        <div class="welcome-banner">
            <h2>Welcome, ${user.name}...!</h2>
            <p>Thank you for being a valuable member of our community.</p>
        </div>
        
        <div class="row">
            <!-- Donation History -->
            <div class="col-md-12">
                <div class="donation-history">
                    <h4 class="mb-4">Your Donation History</h4>
                    <div class="table-responsive">
                       <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Donation ID</th>
                                    <th>Date</th>
                                    <th>Amount</th>
                                    <th>Type</th>
                                    <th>Reason</th>
                                    <th>Status</th>
                                    <th>Receipt</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:if test="${empty donations}">
                                    <tr>
                                        <td colspan="12" class="text-center">No donation history found</td>
                                    </tr>
                                </c:if>
                                
                                <c:if test="${not empty donations}">
                                    <c:forEach var="donation" items="${donations}">
                                        <tr>
                                            <td>${donation.donationId}</td>
                                            <td>
                                                <fmt:formatDate value="${donation.donationDate}" pattern="dd-MM-yyyy"/>
                                            </td>
                                            <td>
                                                ₹<fmt:formatNumber value="${donation.donationAmount}" pattern="#,##0.00"/>
                                            </td>
                                            <td>
											    <c:out value="${donation.donationReason}"/>
											</td>
                                            <td>${donation.donationType}</td>
                                            <td>
                                                <span class="badge badge-success">Completed</span>
                                            </td>
                                            <td>
                                             <a href="${pageContext.request.contextPath}/downloadReceipt?donationId=${donation.donationId}" 
                                             class="btn-donation-action btn-download">
                                              <i class="fas fa-file-pdf"></i> Download Receipt
                                               </a> 
                                               </td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="mt-5">
        <jsp:include page="include/footer.jsp"/>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>






<%-- <%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - NGO Application</title>
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/your-file.js"></script>
    <style>
        .welcome-banner {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 30px;
        }
        
        .donation-history {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        
        .campaign-card {
            background: #fff;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        
        .campaign-card:hover {
            transform: translateY(-5px);
        }
        
        .progress {
            height: 10px;
            margin: 10px 0;
        }
        
        .certificate-card {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 15px;
        }
        
        .quick-donate {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="include/header.jsp"/>
    </header>

    <div class="container mt-4">
        <!-- Welcome Banner -->
        <div class="welcome-banner">
            <h2>Welcome, ${user.name}...!</h2>
            <p>Thank you for being a valuable member of our community.</p>
        </div>
        
        <div class="row">
            <!-- Donation History -->
            <div class="col-md-8">
                <div class="donation-history">
                    <h4 class="mb-4">Your Donation History</h4>
                    <div class="table-responsive">
                       <table class="table table-striped">
						    <thead>
						        <tr>
						            <th>Donation ID</th>
						            <th>Date</th>
						            <th>Amount</th>
						            <th>Type</th>
						            <th>Status</th>
						        </tr>
						    </thead>
						    <tbody>
						        <c:if test="${empty donations}">
						            <tr>
						                <td colspan="5" class="text-center">No donation history found</td>
						            </tr>
						        </c:if>
						        
						        <c:if test="${not empty donations}">
						            <c:forEach var="d" items="${donations}">
						                <tr>
						                    <td>${d.donationId}</td>
						                    <td>
						                        <fmt:formatDate value="${d.donationDate}" pattern="dd-MM-yyyy"/>
						                    </td>
						                    <td>
						                        ₹<fmt:formatNumber value="${d.donationAmount}" pattern="#,##0.00"/>
						                    </td>
						                    <td>${d.donationType}</td>
						                    <td>
						                        <span class="badge badge-success">Completed</span>
						                    </td>
						                </tr>
						            </c:forEach>
						        </c:if>
						    </tbody>
						</table>
                    </div>
                </div>
            </div>
         </div>
         </div>
       
            
     <footer class="mt-5">
        <jsp:include page="include/footer.jsp"/>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html> --%>