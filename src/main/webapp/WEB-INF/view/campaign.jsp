<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Campaign - NGO Donation</title>
    <link href="static/css/style.css" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        /* Your existing styles */
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

        /* New Campaign Cards Styles */
        .campaigns-section {
            padding: 50px 0;
            background: #ffffff;
        }

        .campaigns-section h3 {
            margin-bottom: 30px;
            color: #2c3e50;
            font-weight: 600;
            text-align: center;
        }

        .campaigns-container {
            overflow-x: auto;
            padding: 20px 0;
            scrollbar-width: thin;
            scrollbar-color: #3498db #f8f9fa;
        }

        .campaigns-container::-webkit-scrollbar {
            height: 8px;
        }

        .campaigns-container::-webkit-scrollbar-track {
            background: #f8f9fa;
            border-radius: 4px;
        }

        .campaigns-container::-webkit-scrollbar-thumb {
            background: #3498db;
            border-radius: 4px;
        }

        .campaigns-row {
            display: flex;
            gap: 20px;
            padding: 10px;
            min-width: min-content;
        }

        .campaign-card {
            flex: 0 0 auto;
            width: 300px;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background: white;
        }

        .campaign-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        .campaign-card .card-header {
            background: #3498db;
            color: white;
            padding: 15px;
            font-weight: 600;
        }

        .campaign-card .card-body {
            padding: 20px;
        }

        .campaign-card .campaign-title {
            font-size: 1.2rem;
            color: #2c3e50;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .campaign-card .campaign-desc {
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 15px;
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .campaign-card .campaign-dates {
            font-size: 0.85rem;
            color: #666;
            margin-bottom: 15px;
        }

        .campaign-card .campaign-dates i {
            color: #3498db;
            margin-right: 5px;
        }

        .scroll-hint {
            text-align: center;
            color: #666;
            margin-top: 15px;
            font-size: 0.9rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .scroll-hint i {
            animation: scrollHint 1.5s infinite;
        }

        @keyframes scrollHint {
            0% { transform: translateX(0); }
            50% { transform: translateX(10px); }
            100% { transform: translateX(0); }
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

    <!-- Campaigns Section with Horizontal Scroll -->
    <section class="campaigns-section">
        <div class="container">
            <h3>Our Active Campaigns</h3>
            <div class="campaigns-container">
                <div class="campaigns-row">
                    <c:forEach var="campaign" items="${campaigns}">
                        <div class="campaign-card">
                            <div class="card-header">
                                Campaign #${campaign.campaignId}
                            </div>
                            <div class="card-body">
                                <h5 class="campaign-title">${campaign.title}</h5>
                                <p class="campaign-desc">${campaign.description}</p>
                                <div class="campaign-dates">
                                    <div><i class="fas fa-calendar-start"></i> Start: ${campaign.start_date}</div>
                                    <div><i class="fas fa-calendar-end"></i> End: ${campaign.end_date}</div>
                                </div>
                                <a href="login" class="btn btn-primary btn-block">Donate Now</a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="scroll-hint">
                <i class="fas fa-arrow-right"></i>
                Scroll to see more campaigns
            </div>
        </div>
    </section>

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