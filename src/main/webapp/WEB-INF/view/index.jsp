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
    <title>Welcome to Our NGO - Empowering Through Education</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
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

        .text {
            font-size: 1.1rem;
            color: #555;
            margin-bottom: 20px;
        }

        /* Hero Section (Slider) */
        .slider-section {
            position: relative;
            margin-bottom: 30px;
        }

        /* About Section */
        .about-section {
            background-color: #f8f9fa;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .about-section .text {
            text-align: justify;
        }

        .video-container {
            position: relative;
            overflow: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        /* Impact Section */
        .impact-section {
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            padding: 50px 0;
            margin: 40px 0;
        }

        .impact-section h2 {
            color: white;
        }

        .impact-section h2:after {
            background: white;
        }

        .impact-section .text {
            color: #fff;
            font-size: 1.2rem;
            text-align: center;
        }

        /* Mission Cards */
        .mission-card {
            background: white;
            border-radius: 10px;
            padding: 25px;
            height: 100%;
            transition: transform 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .mission-card:hover {
            transform: translateY(-5px);
        }

        .mission-card h2 {
            font-size: 1.8rem;
            margin-bottom: 20px;
        }

        .mission-card .text {
            font-size: 1rem;
        }

        /* Stats Counter */
        .stats-counter {
            text-align: center;
            margin: 40px 0;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
        }

        .counter-number {
            font-size: 2.5rem;
            font-weight: bold;
            color: #3498db;
            margin-bottom: 10px;
        }

        .counter-text {
            font-size: 1.1rem;
            color: #666;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            section {
                padding: 40px 0;
            }

            .mission-card {
                margin-bottom: 20px;
            }

            .video-container {
                margin-top: 20px;
            }
        }

        /* Custom Container Width */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        /* Animation */
        .fade-in {
            animation: fadeIn 1s ease-in;
        }

        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <header>
        <jsp:include page="include/header.jsp"/>
    </header>

    <div class="slider-section">
        <jsp:include page="include/carousel.jsp"/>
    </div>

    <main>
        <!-- About Section -->
        <section class="about-section fade-in">
            <div class="container">
                <h2 class="text-center">About Our NGO</h2>
                <div class="row">
                    <div class="col-lg-6">
                        <p class="text">
                            Welcome to NGO Application, where we believe that education and a healthy environment are fundamental rights for every individual. Our mission is to empower underprivileged students by providing them with the educational resources and support they need to succeed, while simultaneously fostering a sustainable environment for future generations.
                        </p>
                        <p class="text">
                            In addition to our educational initiatives, we are committed to promoting environmental stewardship. We organize community clean-up drives, tree planting events, and awareness campaigns to educate individuals about the importance of preserving our planet.
                        </p>
                    </div>
                    <div class="col-lg-6">
                        <div class="video-container">
                            <iframe width="100%" height="315" src="https://www.youtube.com/embed/tkqtJpwF9Y8?si=FVSOirlRk2ZS-mJ1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="testimonial-section">
            <jsp:include page="include/testimonial.jsp"/>
        </section>

        <!-- Impact Section -->
        <section class="impact-section">
            <div class="container">
                <h2 class="text-center">Our Impact</h2>
                <div class="row">
                    <div class="col-md-6">
                        <div class="stats-counter">
                            <div class="counter-number">300+</div>
                            <div class="counter-text">Students Supported</div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="stats-counter">
                            <div class="counter-number">8,000+</div>
                            <div class="counter-text">Trees Planted</div>
                        </div>
                    </div>
                </div>
                <p class="text text-center mt-4">
                    Our environmental initiatives have resulted in organizing numerous community clean-ups, creating a cleaner, greener world for everyone.
                </p>
            </div>
        </section>

        <!-- Mission Section -->
        <section class="mission-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="mission-card">
                            <h2 class="text-center">Our Mission</h2>
                            <p class="text">
                                At Our NGO, we are dedicated to breaking the cycle of poverty through education. We strive to create opportunities for disadvantaged students by offering scholarships, tutoring, and mentorship programs.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="mission-card">
                            <h2 class="text-center">Our Commitment</h2>
                            <p class="text">
                                In addition to our focus on education, we are committed to protecting our planet. We believe that a healthy environment is crucial for the well-being of all students and communities.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="mission-card">
                            <h2 class="text-center">Join Us</h2>
                            <p class="text">
                                We can create a brighter future where every child has the chance to learn, grow, and thrive in a safe and healthy environment. Join us in our journey to make a lasting impact.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="mt-5">
        <jsp:include page="include/footer.jsp"/>
    </footer>

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