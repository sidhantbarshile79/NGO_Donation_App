

<!-- HTML Structure -->
<header>
    <jsp:include page="include/header.jsp"/>
</header>

<bradcum>
    <jsp:include page="include/bradcum.jsp"/>
</bradcum>



<!-- Main About Section -->
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
                <div class="impact-numbers">
                    <div class="impact-item">
                        <span class="impact-count">10,000+</span>
                        <span class="impact-label">Lives Impacted</span>
                    </div>
                    <div class="impact-item">
                        <span class="impact-count">50+</span>
                        <span class="impact-label">Active Projects</span>
                    </div>
                    <div class="impact-item">
                        <span class="impact-count">100+</span>
                        <span class="impact-label">Volunteers</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="video-container">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/static/images/slider1.jpg" alt="First slide" >
                </div>
            </div>
        </div>
    </div>
</section>




<!-- Our Focus Areas -->
<section class="focus-areas">
    <div class="container">
        <h2 class="text-center">Our Focus Areas</h2>
        <div class="focus-grid">
            <div class="focus-item">
                <!-- <div class="focus-icon">📚</div> -->
                <h3>Education</h3>
                <p>Providing quality education and learning resources to underprivileged children</p>
            </div>
            <div class="focus-item">
                <!-- <div class="focus-icon">🌱</div> -->
                <h3>Environment</h3>
                <p>Promoting sustainable practices and environmental conservation</p>
            </div>
            <div class="focus-item">
                <!-- <div class="focus-icon">🏥</div> -->
                <h3>Healthcare</h3>
                <p>Supporting medical camps and health awareness programs</p>
            </div>
            <div class="focus-item">
                <!-- <div class="focus-icon">💪</div> -->
                <h3>Community Development</h3>
                <p>Building stronger, self-reliant communities through various initiatives</p>
            </div>
        </div>
    </div>
</section>




<!-- Vision & Mission Section -->
<div class="vision-mission-container">
    <div class="vm-box">
        <h3 class="vm-title" onclick="toggleContent('vision')">
            Our Vision
            <span class="toggle-icon" id="vision-icon">+</span>
        </h3>
        <div class="vm-content" id="vision-content">
            <p>Our vision is to create a world where no one goes hungry, where every child has access to education, 
            and where communities are empowered to build sustainable futures. We envision a society where the act 
            of giving becomes a natural part of everyone's life, creating a chain of positive impact that transforms 
            lives and communities.</p>
        </div>
    </div>

    <div class="vm-box">
        <h3 class="vm-title" onclick="toggleContent('mission')">
            Our Mission
            <span class="toggle-icon" id="mission-icon">+</span>
        </h3>
        <div class="vm-content" id="mission-content">
            <p>Our mission is to facilitate meaningful connections between donors and communities in need, ensuring 
            that every donation creates maximum impact. We work tirelessly to: identify and support crucial community 
            projects, maintain complete transparency in fund utilization, and empower local communities to become 
            self-sufficient through sustainable development initiatives.</p>
        </div>
    </div>
</div>


<!-- Hero Section -->
<div class="hero-section">
    <div class="hero-content">
        <h1>Making a Difference Together</h1>
        <p>Join us in our mission to create lasting positive change in communities worldwide</p>
    </div>
</div>




<!-- Get Involved Section -->
<section class="get-involved">
    <div class="container">
        <h2 class="text-center">Get Involved</h2>
        <div class="involvement-options">
            <div class="involvement-card">
                <h3>Donate</h3>
                <p>Your contribution can make a real difference in someone's life</p>
                <!-- <url var="camp_url" value="/campaign"/> -->
                <a href="login" class="btn btn-primary">Donate Now</a>
            </div>
            <div class="involvement-card">
                <h3>Volunteer</h3>
                <p>Join our team of dedicated volunteers and help create positive change</p>
                <!-- <url var="login_url" value="/login"/> -->
                <a href="login" class="btn btn-primary">Join Us</a>
            </div>
            <div class="involvement-card">
                <h3>Partner With Us</h3>
                <p>Collaborate with us to amplify our impact</p>
                <!-- <url var="reg_url" value="/reg_form.jsp"/> -->
                <a href="login" class="btn btn-primary">Partner Now</a>
            </div>
        </div>
    </div>
</section>


<footer>
    <jsp:include page="include/footer.jsp"/>
</footer>




<!-- Enhanced Styling -->
<style>
/* Existing Styles */
.vision-mission-container {
    max-width: 800px;
    margin: 20px auto;
    padding: 0 15px;
}

.vm-box {
    margin-bottom: 20px;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    background: #fff;
}

.vm-title {
    background: linear-gradient(135deg, #3498db, #2c3e50);
    color: white;
    padding: 15px 20px;
    margin: 0;
    cursor: pointer;
    display: flex;
    justify-content: space-between;
    align-items: center;
    transition: background-color 0.3s ease;
}

.vm-title:hover {
    background: linear-gradient(135deg, #2980b9, #2c3e50);
}

.toggle-icon {
    font-size: 24px;
    transition: transform 0.3s ease;
}

.vm-content {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.5s ease;
    padding: 0 20px;
    background: #fff;
}

.vm-content p {
    margin: 20px 0;
    line-height: 1.6;
    color: #444;
}

.vm-content.active {
    max-height: 500px;
}

.toggle-icon.active {
    transform: rotate(45deg);
}

/* New Styles */
.hero-section {
    background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('/images/hero-bg.jpg');
    background-size: cover;
    background-position: center;
    height: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: white;
    /* margin-bottom: 50px; */
}

.hero-content h1 {
    font-size: 3rem;
    margin-bottom: 20px;
}

.hero-content p {
    font-size: 1.2rem;
    max-width: 100%;
    margin: 0 auto;
}

.impact-numbers {
    display: flex;
    justify-content: space-around;
    margin-top: 30px;
    text-align: center;
}

.impact-item {
    padding: 20px;
}

.impact-count {
    display: block;
    font-size: 2rem;
    font-weight: bold;
    color: #3498db;
}

.impact-label {
    font-size: 1rem;
    color: #666;
}

.focus-areas {
    background: #f9f9f9;
    padding: 60px 0;
}

.focus-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 30px;
    margin-top: 40px;
}

.focus-item {
    background: white;
    padding: 30px;
    border-radius: 8px;
    text-align: center;
    transition: transform 0.3s ease;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.focus-item:hover {
    transform: translateY(-5px);
}

.focus-icon {
    font-size: 2.5rem;
    margin-bottom: 15px;
}

.get-involved {
    padding: 60px 0;
}

.involvement-options {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 30px;
    margin-top: 40px;
}

.involvement-card {
    background: white;
    padding: 30px;
    border-radius: 8px;
    text-align: center;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    margin-top: 15px;
    border-radius: 5px;
    text-decoration: none;
    transition: background-color 0.3s ease;
}

.btn-primary {
    background: #3498db;
    color: white;
}

.btn-primary:hover {
    background: #2980b9;
}

/* Responsive Design */
@media (max-width: 768px) {
    .hero-content h1 {
        font-size: 2rem;
    }
    
    .impact-numbers {
        flex-direction: column;
    }
    
    .impact-item {
        margin-bottom: 20px;
    }
}
</style>

<script>
function toggleContent(type) {
    const content = document.getElementById(type + '-content');
    const icon = document.getElementById(type + '-icon');
    
    content.classList.toggle('active');
    icon.classList.toggle('active');
    
    const otherType = type === 'vision' ? 'mission' : 'vision';
    const otherContent = document.getElementById(otherType + '-content');
    const otherIcon = document.getElementById(otherType + '-icon');
    
    if (otherContent.classList.contains('active')) {
        otherContent.classList.remove('active');
        otherIcon.classList.remove('active');
    }
}
</script>