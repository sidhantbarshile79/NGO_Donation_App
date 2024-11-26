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
    <title>Our Team - NGO Application</title>
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

        /* Team Section Styles */
        .team-intro {
            max-width: 800px;
            margin: 0 auto 50px;
            text-align: center;
            color: #555;
        }

        .team-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            padding: 20px;
        }

        .team-member {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            text-align: center;
        }

        .team-member:hover {
            transform: translateY(-5px);
        }

        .member-image {
            width: 100px;
    		height: 100px;
    		object-fit: cover;
        }

        .member-info {
            padding: 20px;
            text-align: center;
        }

        .member-name {
            font-size: 1.5rem;
            color: #2c3e50;
            margin-bottom: 5px;
        }

        .member-position {
            color: #3498db;
            font-size: 1.1rem;
            margin-bottom: 15px;
        }

        .member-bio {
            color: #666;
            margin-bottom: 20px;
            font-size: 0.95rem;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 15px;
        }

        .social-links a {
            color: #3498db;
            font-size: 1.2rem;
            transition: color 0.3s ease;
        }

        .social-links a:hover {
            color: #2c3e50;
        }

        /* Leadership Section Styles */
        .leadership-section {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            padding: 50px 0;
            margin: 40px 0;
        }

        .leadership-section h2:after {
            background: white;
        }

        .leadership-section h2 {
            color: white;
        }

        /* Advisors Section */
        .advisors-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
            margin-top: 30px;
        }

        .advisor-card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .advisor-image {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            margin: 0 auto 15px;
            object-fit: cover;
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

            .team-grid {
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            }

            .member-image {
                height: 250px;
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
        <!-- Team Introduction -->
        <section class="team-section fade-in">
            <div class="container">
                <h2>Meet Our Team</h2>
                <div class="team-intro">
                    <p>Our dedicated team of professionals and volunteers works tirelessly to make a positive impact in our community. Together, we strive to create lasting change and empower those in need.</p>
                </div>

                <!-- Core Team Members -->
                <div class="team-grid">
                    <div class="team-member">
                        <img src="${pageContext.request.contextPath}/static/images/team/team1.jpg" alt="Siddhant Barshile" class="member-image">
                        <div class="member-info">
                            <h3 class="member-name">Siddhant Barshile</h3>
                            <p class="member-position">Executive Director</p>
                            <p class="member-bio">As the Executive Director of our NGO, he is dedicated to driving impactful initiatives that promote sustainable development and community empowerment.</p>
                            <div class="social-links">
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="far fa-envelope"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="team-member">
                        <img src="${pageContext.request.contextPath}/static/images/team/team2.jpg" alt="Krishna Agarwal" class="member-image">
                        <div class="member-info">
                            <h3 class="member-name">Krishna Agarwal</h3>
                            <p class="member-position">Program Director</p>
                            <p class="member-bio">Krishna brings a wealth of experience and expertise to our NGO as the Program Director. Krishna is passionate about creating sustainable solutions that address the needs of our communities.</p>
                            <div class="social-links">
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="far fa-envelope"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="team-member">
                        <img src="${pageContext.request.contextPath}/static/images/team/team3.jpg" alt="Dhanashri Salunkhe" class="member-image">
                        <div class="member-info">
                            <h3 class="member-name">Dhanashri Salunkhe</h3>
                            <p class="member-position">Environmental Specialist</p>
                            <p class="member-bio">Dhanashri is our dedicated Environmental Specialist, committed to promoting sustainability and environmental stewardship within our projects. she brings valuable knowledge and expertise to our team.</p>
                            <div class="social-links">
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="far fa-envelope"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Leadership Section -->
        <section class="leadership-section">
            <div class="container">
                <h2>Our Leadership</h2>
                <div class="row">
                    <div class="col-md-6 offset-md-3 text-center">
                        <p>Our leadership team brings together diverse expertise and a shared commitment to our mission. They guide our organization with vision, integrity, and dedication to sustainable development.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Advisory Board -->
        <section class="advisors-section fade-in">
            <div class="container">
                <h2>Advisory Board</h2>
                <div class="advisors-grid">
                    <div class="advisor-card">
                        <img src="${pageContext.request.contextPath}/static/images/team/advisor1.jpg" alt="Mr. Pankaj Sharma" class="advisor-image">
                        <h3>Mr. Pankaj Sharma</h3>
                        <p>Education Policy Expert</p>
                    </div>
                    <div class="advisor-card">
                        <img src="${pageContext.request.contextPath}/static/images/team/advisor2.jpg" alt="Mr. Jaynam Sangvi" class="advisor-image">
                        <h3>Mr. Jaynam Sangvi</h3>
                        <p>Environmental Scientist</p>
                    </div>
                    <%-- <div class="advisor-card">
                        <img src="${pageContext.request.contextPath}/static/images/advisor3.jpg" alt="Lisa Anderson" class="advisor-image">
                        <h3>Mr. Jaynam Sangvi</h3>
                        <p>Community Development Specialist</p>
                    </div> --%>
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