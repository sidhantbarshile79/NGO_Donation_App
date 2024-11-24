<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - NGO Application</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        .dashboard-stats {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        
        .stat-card {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            padding: 20px;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        
        .stat-number {
            font-size: 2em;
            font-weight: bold;
        }
        
        .recent-activity {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        
        .activity-item {
            padding: 10px;
            border-bottom: 1px solid #eee;
        }
        
        .quick-actions a {
            display: block;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 8px;
            margin-bottom: 10px;
            color: #2c3e50;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        
        .quick-actions a:hover {
            background: #e9ecef;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <header>
        <jsp:include page="include/header.jsp"/>
    </header>

    <div class="container mt-4">
        <h2>Welcome, ${user.name}!</h2>
        
        <!-- Stats Overview -->
        <div class="row dashboard-stats">
            <div class="col-md-3">
    			<div class="stat-card">
			        <i class="fas fa-users mb-2"></i>
			        <div class="stat-number">${totalUsers}</div>
			        <div class="stat-number"></div>
			        <div>Total Users</div>
			    </div>
			</div>
            <div class="col-md-3">
                <div class="stat-card">
                    <i class="fas fa-hand-holding-usd mb-2"></i>
                    <div class="stat-number">${totalDonations}</div>
                    <div>Total Donations</div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="stat-card">
                    <i class="fas fa-bullhorn mb-2"></i>
                    <div class="stat-number">${totalCampaign}</div>
                    <div>Active Campaigns</div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="stat-card">
                    <i class="fas fa-tree mb-2"></i>
                    <div class="stat-number">${totalCampaign}</div>
                    <div class="stat-number">${totalProjects}</div>
                    <div>Total Projects</div>
                </div>
            </div>
        </div>
        
       <%--  <div class="row">
            <!-- Recent Activity -->
            <div class="col-md-8">
                <div class="recent-activity">
                    <h4 class="mb-4">Recent Activity</h4>
                    <c:forEach items="${recentActivities}" var="activity">
                        <div class="activity-item">
                            <div class="d-flex justify-content-between">
                                <span>${activity.description}</span>
                                <small class="text-muted">${activity.timestamp}</small>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            
            <!-- Quick Actions -->
            <div class="col-md-4">
                <div class="quick-actions">
                    <h4 class="mb-4">Quick Actions</h4>
                    <a href="manage-users"><i class="fas fa-user-cog mr-2"></i> Manage Users</a>
                    <a href="manage-donations"><i class="fas fa-donate mr-2"></i> View Donations</a>
                    <a href="manage-campaigns"><i class="fas fa-bullhorn mr-2"></i> Manage Campaigns</a>
                    <a href="reports"><i class="fas fa-chart-bar mr-2"></i> Generate Reports</a>
                    <a href="settings"><i class="fas fa-cog mr-2"></i> System Settings</a>
                </div>
            </div>
        </div>--%>
    </div> 
    
    <footer class="mt-5">
        <jsp:include page="include/footer.jsp"/>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
<script>
    // Retrieve totalUsers from sessionStorage
    var totalUsers = sessionStorage.getItem("totalUsers");
    console.log("Total Users: " + totalUsers); // Use this value as needed
</script>
</html>