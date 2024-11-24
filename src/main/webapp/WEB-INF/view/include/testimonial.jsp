<%-- testimonials.jsp --%>
<section class="container testimonials-section my-5">
    <h2 class="text-center mb-4">What People Say About Us</h2>
    
    <div id="testimonialCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="testimonial-card">
                    <div class="card text-center p-4 shadow-sm">
                        <img src="${pageContext.request.contextPath}/static/images/testimonial/vishu.jpg" class="rounded-circle mx-auto mb-3" alt="Vishwajeet Dange">
                        <div class="testimonial-content">
                            <p class="testimonial-text">"Thanks to this NGO's scholarship program, I was able to complete my education and secure a good job. Their support changed my life completely."</p>
                            <h5 class="testimonial-author mb-1">Vishwajeet Dange</h5>
                            <p class="text-muted">Scholarship Recipient</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="carousel-item">
                <div class="testimonial-card">
                    <div class="card text-center p-4 shadow-sm">
                        <img src="${pageContext.request.contextPath}/static/images/testimonial/tanmay.jpg" class="rounded-circle mx-auto mb-3" alt="Tanmay Kapse">
                        <div class="testimonial-content">
                            <p class="testimonial-text">"Working with this NGO on environmental projects has been incredibly rewarding. Their dedication to creating a sustainable future is truly inspiring."</p>
                            <h5 class="testimonial-author mb-1">Tanmay Kapse</h5>
                            <p class="text-muted">Environmental Volunteer</p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="carousel-item">
                <div class="testimonial-card">
                    <div class="card text-center p-4 shadow-sm">
                        <img src="${pageContext.request.contextPath}/static/images/testimonial/pj.jpg" class="rounded-circle mx-auto mb-3" alt="Prathmesh Jagtap">
                        <div class="testimonial-content">
                            <p class="testimonial-text">"The mentorship program offered by this NGO has helped numerous students find their path. It's amazing to see the impact they're making."</p>
                            <h5 class="testimonial-author mb-1">Prathmesh Jagtap</h5>
                            <p class="text-muted">Mentor</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <a class="carousel-control-prev" href="#testimonialCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#testimonialCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        
        <ol class="carousel-indicators">
            <li data-target="#testimonialCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#testimonialCarousel" data-slide-to="1"></li>
            <li data-target="#testimonialCarousel" data-slide-to="2"></li>
        </ol>
    </div>
</section>

<style>
.testimonials-section {
    padding: 40px 0;
}

.testimonial-card {
    max-width: 800px;
    margin: 0 auto;
}

.testimonial-card img {
    width: 100px;
    height: 100px;
    object-fit: cover;
}

.carousel-control-prev,
.carousel-control-next {
    width: 5%;
}

.carousel-control-prev-icon,
.carousel-control-next-icon {
    background-color: #666;
    border-radius: 50%;
    padding: 10px;
}

.carousel-indicators {
    bottom: -50px;
}

.carousel-indicators li {
    background-color: #666;
    width: 10px;
    height: 10px;
    border-radius: 50%;
}

.testimonial-text {
    font-style: italic;
    font-size: 1.1rem;
    margin-bottom: 20px;
}

.testimonial-author {
    color: #333;
    font-weight: 600;
}
</style>