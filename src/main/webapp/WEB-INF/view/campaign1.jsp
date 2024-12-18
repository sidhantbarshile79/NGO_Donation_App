<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Campaign - NGO Donation</title>
    <link href="static/css/styles.css" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
    /* Existing styles remain the same */
    
    /* New Hero Section Styles */
    .hero-section {
        background: linear-gradient(rgba(44, 62, 80, 0.9), rgba(52, 152, 219, 0.9)), 
                    url('static/images/hero-bg.jpg') center/cover;
        color: white;
        padding: 100px 0;
        margin-bottom: 50px;
        text-align: center;
    }

    .hero-content h1 {
        font-size: 3rem;
        margin-bottom: 20px;
        font-weight: 700;
    }

    .hero-content p {
        font-size: 1.2rem;
        max-width: 800px;
        margin: 0 auto 30px;
    }

    /* Campaign Cards */
    .campaign-card {
        border: none;
        border-radius: 15px;
        transition: all 0.3s ease;
        margin-bottom: 30px;
    }

    .campaign-card:hover {
        transform: translateY(-10px);
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    }

    .campaign-progress {
        height: 10px;
        border-radius: 5px;
        margin: 15px 0;
    }

    /* Stats Section */
    .stats-section {
        background: #f8f9fa;
        padding: 50px 0;
        margin: 50px 0;
    }

    .stat-item {
        text-align: center;
        padding: 20px;
    }

    .stat-item i {
        font-size: 2.5rem;
        color: #3498db;
        margin-bottom: 15px;
    }

    .stat-item h3 {
        font-size: 2rem;
        margin-bottom: 10px;
    }

    /* Filter Section */
    .filter-section {
        margin-bottom: 30px;
    }

    .filter-btn {
        margin: 5px;
        padding: 8px 20px;
        border-radius: 20px;
    }

    /* Pagination */
    .pagination {
        justify-content: center;
       /* margin-top: 30px;*/
    }

    .page-link {
        color: #3498db;
        border-radius: 5px;
        margin: 0 5px;
    }

</style>
<body>
    <header>
        <jsp:include page="include/header.jsp"/>
    </header>
    
    
    
	<bradcum>
    	<jsp:include page="include/bradcum.jsp"/>
	</bradcum>

    

    <!-- Stats Section -->
    <section class="stats-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="stat-item">
                        <i class="fas fa-hands-helping"></i>
                        <h3>1000+</h3>
                        <p>Donors</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stat-item">
                        <i class="fas fa-globe-americas"></i>
                        <h3>50+</h3>
                        <p>Countries</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stat-item">
                        <i class="fas fa-project-diagram"></i>
                        <h3>200+</h3>
                        <p>Projects</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stat-item">
                        <i class="fas fa-dollar-sign"></i>
                        <h3>$2M+</h3>
                        <p>Raised</p>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <div class="hero-content">
                <h1>Make a Difference Today</h1>
                <p>Join our mission to create positive change in the world. Every donation counts towards making someone's life better.</p>
                <a href="login" class="btn btn-light btn-lg">Donate Here</a>
            </div>
        </div>
    </section>




    <!-- Main Campaigns Section -->
   <div class="container" id="campaigns">
    <h3>Existing Campaigns</h3>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Campaign ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Start Date</th>
                <th>End Date</th>
                <!-- <th>Donate</th> -->
            </tr>
        </thead>
        <tbody>
            <c:forEach var="campaign" items="${campaigns}">
                <tr>
                    <td>${campaign.campaignId}</td>
                    <td>${campaign.title}</td>
                    <td>${campaign.description}</td>
                    <td>${campaign.start_date}</td>
                    <td>${campaign.end_date}</td>
                    <%-- <td>
                        <form action="donation_form" method="post">
   							 <input type="hidden" name="campaignId" value="${campaign.campaignId}">
   							 <button type="submit" class="btn btn-primary">Donate Here</button>
						</form>
                    </td> --%>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

    <footer class="mt-5">
        <jsp:include page="include/footer.jsp"/>
    </footer>

    <script>
        // Add smooth scrolling
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // Initialize tooltips
        $(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
</body>
</html>

