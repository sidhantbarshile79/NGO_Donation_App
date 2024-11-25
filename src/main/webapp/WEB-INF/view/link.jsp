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
    <title>Useful Links and Resources - NGO Application</title>
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

        /* Resource Cards */
        .resource-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            margin-bottom: 30px;
            padding: 25px;
        }

        .resource-card:hover {
            transform: translateY(-5px);
        }

        .resource-card h4 {
            color: #2c3e50;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #3498db;
        }

        .resource-list {
            list-style: none;
            padding: 0;
        }

        .resource-list li {
            margin-bottom: 15px;
            padding-left: 25px;
            position: relative;
        }

        .resource-list li:before {
            content: '\f0c1';
            font-family: 'Font Awesome 5 Free';
            font-weight: 900;
            position: absolute;
            left: 0;
            color: #3498db;
        }

        .resource-list a {
            color: #2c3e50;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .resource-list a:hover {
            color: #3498db;
        }

        /* PDF Section */
        .pdf-container {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .pdf-embed {
            width: 100%;
            height: 500px;
            border: 1px solid #ddd;
            border-radius: 8px;
            margin: 15px 0;
        }

        /* Updates Section */
        .updates-section {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            padding: 50px 0;
            margin: 40px 0;
        }

        .updates-section h2:after {
            background: white;
        }

        .updates-section h2 {
            color: white;
        }

        .update-card {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .update-card h5 {
            color: #fff;
            margin-bottom: 15px;
        }

        .update-card p {
            color: rgba(255, 255, 255, 0.9);
            font-size: 0.95rem;
        }

        /* Animation */
        .fade-in {
            animation: fadeIn 1s ease-in;
        }

        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            section {
                padding: 40px 0;
            }
            
            .resource-card {
                margin-bottom: 20px;
            }

            .pdf-embed {
                height: 400px;
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

    <main>
        <!-- Important Links Section -->
        <section class="fade-in">
            <div class="container">
                <h2>Resources & Information</h2>
                <div class="row">
                    <div class="col-md-6">
                        <div class="resource-card">
                            <h4><i class="fas fa-link mr-2"></i>Important Links</h4>
                            <ul class="resource-list">
                                <li><a href="https://charity.maharashtra.gov.in/en-us/know-your-trust-en-US" target="_blank">Know about NGO</a></li>
                                <li><a href="https://charity.maharashtra.gov.in/mr-in/" target="_blank">Charity Commissioner</a></li>
                                <li><a href="https://charity.maharashtra.gov.in/en-us/Accounts-en-US" target="_blank">Audit Report</a></li>
                            </ul>
                        </div>

                        <div class="resource-card">
                            <h4><i class="fas fa-file-pdf mr-2"></i>Important Documents</h4>
                            <div class="pdf-container">
                                <object class="pdf-embed" data="${pageContext.request.contextPath}/resources/pdf/AboutCharity.pdf" type="application/pdf">
                                    <p>Unable to display PDF file. <a href="${pageContext.request.contextPath}/resources/pdf/AboutCharity.pdf">Download</a> instead.</p>
                                </object>
                                
                                <object class="pdf-embed" data="${pageContext.request.contextPath}/resources/pdf/MPTAct.pdf" type="application/pdf">
                                    <p>Unable to display PDF file. <a href="${pageContext.request.contextPath}/resources/pdf/MPTAct.pdf">Download</a> instead.</p>
                                </object>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="updates-section">
                            <h2>Government Updates</h2>
                            
                            <div class="update-card">
                                <h5><i class="fas fa-graduation-cap mr-2"></i>Support Programs for Students</h5>
                                <p>Scholarship initiatives, skill development programs, and mental health support resources available for students. NGOs can partner to facilitate training workshops and counseling services.</p>
                            </div>

                            <div class="update-card">
                                <h5><i class="fas fa-female mr-2"></i>Empowerment Programs for Women</h5>
                                <p>Financial assistance schemes, health initiatives, and leadership training programs designed to support and empower women in various aspects of their lives.</p>
                            </div>

                            <div class="update-card">
                                <h5><i class="fas fa-leaf mr-2"></i>Environmental Initiatives</h5>
                                <p>Sustainable development projects, awareness campaigns, and tree plantation drives to promote environmental conservation and climate change awareness.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <jsp:include page="include/footer.jsp"/>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        // Animation trigger for elements when they come into view
        $(document).ready(function() {
            $(window).scroll(function() {
                $('.fade-in').each(function() {
                    var bottom_of_element = $(this).offset().top + $(this).outerHeight();
                    var bottom_of_window = $(window).scrollTop() + $(window).height();
                    
                    if (bottom_of_window > bottom_of_element) {
                        $(this).addClass('visible');
                    }
                });
            });
        });
    </script>
</body>
</html>