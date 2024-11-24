<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - Donation History</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .donation-history {
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        .table th {
            background-color: #f8f9fa;
            border-bottom: 2px solid #dee2e6;
        }
        .donation-amount {
            font-weight: 600;
            color: #28a745;
        }
        .no-donations {
            text-align: center;
            padding: 20px;
            color: #6c757d;
        }
        .dashboard-header {
            background: #f8f9fa;
            padding: 15px 0;
            margin-bottom: 30px;
        }
        .total-donations {
            background: #e9ecef;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="dashboard-header">
        <div class="container">
            <h2>Welcome, ${user.name}</h2>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="donation-history">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <h4>Your Donation History</h4>
                        <div class="total-donations">
                            <strong>Total Donations: </strong>
                            <span class="donation-amount">
                                ₹<fmt:formatNumber value="${totalDonations}" pattern="#,##0.00"/>
                            </span>
                        </div>
                    </div>
                    
                    <div class="table-responsive">
                        <c:choose>
                            <c:when test="${not empty donationList}">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Amount</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="donation" items="${donationList}">
                                            <tr>
                                                <td>
                                                    <fmt:formatDate value="${donation.donationDate}" 
                                                                  pattern="dd MMM, yyyy"/>
                                                </td>
                                                <td class="donation-amount">
                                                    ₹<fmt:formatNumber value="${donation.donationAmount}" 
                                                                     pattern="#,##0.00"/>
                                                </td>
                                                <td>
                                                    <span class="badge bg-success">Success</span>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </c:when>
                            <c:otherwise>
                                <div class="no-donations">
                                    <p>No donations found. Make your first donation today!</p>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
            
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Quick Actions</h5>
                        <div class="d-grid gap-2">
                            <a href="donate" class="btn btn-primary">Make New Donation</a>
                            <a href="download-history" class="btn btn-outline-secondary">Download History</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>