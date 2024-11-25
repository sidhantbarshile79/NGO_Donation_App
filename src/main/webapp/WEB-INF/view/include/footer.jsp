
 <style>
/* Footer Styles */
footer {
    background-color: #343a40; /* Dark gray background */
    color: black;
    text-align: justify;
    padding: 15px 0;
    margin-top: 20px;
    wi
}

/* Responsive Design */
@media (max-width: 768px) {
    .container-fluid {
        padding: 10px;
    }

    article {
        padding: 15px;
    }
    
}
	
</style>
 					
 					<s:url var="about_url" value="/about"/>
                    <s:url var="camp_url" value="/campaign"/>
                    <s:url var="contact_url" value="/contact"/>
                    <s:url var="login_url" value="/login"/>
                    <s:url var="home_url" value="/index"/>
 
 
 
 
<footer class="bg-light text-center text-lg-start mt-5">
    <div class="container-fluid p-4">
        <div class="row">
            <div class="col-lg-4 col-md-12 mb-4">
                <h5 class="text-uppercase">NGO Donation</h5>
                <p>
                    Welcome to NGO Application, 
                    where we are dedicated to promoting education and protecting the environment. 
                    Our passion drives us to create meaningful change and inspire hope.
                </p>
            </div>

            <div class="col-lg-4 col-md-6 mb-4" >
                <h5 class="text-uppercase">Useful Links</h5>
                <ul class="list-unstyled">
                    <li>
                        <a href="${home_url}" class="text-dark">Home</a>
                    </li>
                    <li>
                        <a href="${about_url}" class="text-dark">About Us</a>
                    </li>
                    <li>
                        <a href="${contact_url}" class="text-dark">Contact Us</a>
                    </li>
                    <li>
                        <a href="${login_url}" class="text-dark">Login/ Register</a>
                    </li>
                </ul>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
                <h5 class="text-uppercase">Follow Us</h5>
                <ul class="list-unstyled">
                    <li>
                        <a href="https://www.facebook.com" target="_blank" class="text-dark">Facebook</a>
                    </li>
                    <li>
                        <a href="https://www.twitter.com" target="_blank" class="text-dark">Twitter</a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com" target="_blank" class="text-dark">Instagram</a>
                    </li>
                    <li>
                        <a href="https://www.linkedin.com" target="_blank" class="text-dark">LinkedIn</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="text-center p-3 bg-light">
        © 2024 YourApp. All rights reserved.
    </div>
</footer>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>