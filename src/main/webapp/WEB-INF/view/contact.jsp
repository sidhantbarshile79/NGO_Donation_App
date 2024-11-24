<html lang="en">
<head>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login - Contact Application</title>
    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.min.js"></script>
    <script src="/static/js/your-file.js"></script>
</head>
<style>
	/* Global Styles */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: #333;
    background-color: #f8f9fa;
}

/* Container Styles */
.container-fluid {
    padding: 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 30px 15px;
}

/* Section Styles */
section {
    padding: 60px 0;
    animation: fadeIn 1s ease-in;
}

/* Heading Styles */
h2, h3 {
    font-weight: 700;
    color: #2c3e50;
    margin-bottom: 30px;
    position: relative;
    padding-bottom: 15px;
    text-align: center;
}

h2:after, h3:after {
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

/* Form Styles */
.form-group {
    margin-bottom: 25px;
}

.form-group label {
    font-weight: 600;
    color: #2c3e50;
    margin-bottom: 8px;
    display: block;
}

.form-control {
    border-radius: 8px;
    border: 1px solid #ddd;
    padding: 12px;
    transition: all 0.3s ease;
    background-color: #f8f9fa;
}

.form-control:focus {
    border-color: #3498db;
    box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
    background-color: white;
}

textarea.form-control {
    resize: vertical;
    min-height: 120px;
}

/* Button Styles */
.btn-primary {
    background: linear-gradient(135deg, #3498db, #2c3e50);
    border: none;
    padding: 12px 30px;
    border-radius: 8px;
    font-weight: 600;
    transition: transform 0.3s ease;
    width: 100%;
    margin-top: 15px;
}

.btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

/* Contact Page Specific Styles */
.row.col-sm-12 {
    margin: 0;
    padding: 0;
}

/* Map Container */
iframe {
    width: 100%;
    height: 100%;
    min-height: 450px;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Contact Form Container */
.col-sm-6 {
    padding: 20px;
}

.col-sm-6:first-child {
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}


/* Animation */
.fade-in {
    animation: fadeIn 1s ease-in;
}

@keyframes fadeIn {
    0% { 
        opacity: 0; 
        transform: translateY(20px); 
    }
    100% { 
        opacity: 1; 
        transform: translateY(0); 
    }
}

/* Error and Success Messages */
.error {
    color: #e74c3c;
    font-size: 0.9rem;
    margin-top: 5px;
}

.success {
    color: #2ecc71;
    font-size: 0.9rem;
    margin-top: 5px;
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .container {
        padding: 15px;
    }
    
    .col-sm-6 {
        margin-bottom: 30px;
    }
    
    iframe {
        min-height: 300px;
    }
    
    h2 {
        font-size: 1.8rem;
    }
    
    .btn-primary {
        padding: 10px 20px;
    }
    
    .container-fluid {
        padding: 0 15px;
    }
}

/* Custom Container Width for Forms */
.registration-container, 
.contact-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 40px;
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Map Overlay on Hover */
.col-sm-6:last-child {
    position: relative;
}

.col-sm-6:last-child:after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(52, 152, 219, 0.1);
    pointer-events: none;
    border-radius: 10px;
    transition: background 0.3s ease;
}

.col-sm-6:last-child:hover:after {
    background: rgba(52, 152, 219, 0);
}
</style>
<body>
    
        <header>
            <jsp:include page="include/header.jsp"/>
        </header>


	<bradcum>
	    <jsp:include page="include/bradcum.jsp"/>
	</bradcum>

	<div class="container-fluid">	
		<section class="container">
			<h2 class="mt5" style="text-align:center">Contact Us</h2>
			<div class="row col-sm-12">
				<div class="col-sm-6">
	                 <form action="contact" method="post">
	                    <div class="form-group">
	                        <label for="name">Name:</label>
	                        <input type="text" class="form-control" id="name" name="name" required>
	                    </div>
	                    <div class="form-group">
	                        <label for="email">Email:</label>
	                        <input type="email" class="form-control" id="email" name="email" required>
	                    </div>
	                    <div class="form-group">
	                        <label for="mobile">Mobile:</label>
	                        <input type="tel" class="form-control" id="mobile" name="mobile" required>
	                    </div>
	                    <div class="form-group">
	                        <label for="message">Message:</label>
	                        <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
	                    </div>
	                    <button type="submit" class="btn btn-primary">Submit</button>
	                    
	                </form>
				</div>
				<div class="col-sm-6">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3574.978246402211!2d73.75154583681342!3d19.99973052344007!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bddeb81809c9833%3A0xb602f6d146aa4136!2sIndra%20Gandhi%20Complex%2C%20Mahatma%20Nagar%20Water%20Tank%20Rd%2C%20Behind%20Water%20Tank%2C%20Mahatma%20Nagar%2C%20Parijat%20Nagar%2C%20Nashik%2C%20Maharashtra%20422007!5e0!3m2!1sen!2sin!4v1731661857048!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
		</section>
	</div>	    
        <footer class="mt-5">
            <%-- Footer --%>
            <jsp:include page="include/footer.jsp"/>
        </footer>
    
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script>
$(document).ready(function() {
    // Add custom method for mobile number validation (Indian format)
    $.validator.addMethod("indianMobile", function(value, element) {
        return this.optional(element) || /^[6-9]\d{9}$/.test(value);
    }, "Please enter a valid Indian mobile number");

    // Add custom method for name validation
    $.validator.addMethod("nameFormat", function(value, element) {
        return this.optional(element) || /^[a-zA-Z\s]{2,50}$/.test(value);
    }, "Please enter a valid name (only letters and spaces allowed)");

    // Form validation rules
    $("form[action='contact']").validate({
        rules: {
            name: {
                required: true,
                minlength: 2,
                maxlength: 50,
                nameFormat: true
            },
            email: {
                required: true,
                email: true,
                maxlength: 100
            },
            mobile: {
                required: true,
                indianMobile: true
            },
            message: {
                required: true,
                minlength: 10,
                maxlength: 500
            }
        },
        messages: {
            name: {
                required: "Please enter your name",
                minlength: "Name must be at least 2 characters long",
                maxlength: "Name cannot exceed 50 characters"
            },
            email: {
                required: "Please enter your email address",
                email: "Please enter a valid email address",
                maxlength: "Email cannot exceed 100 characters"
            },
            mobile: {
                required: "Please enter your mobile number"
            },
            message: {
                required: "Please enter your message",
                minlength: "Message must be at least 10 characters long",
                maxlength: "Message cannot exceed 500 characters"
            }
        },
        errorElement: "small",
        errorClass: "error",
        
        // Custom error placement
        errorPlacement: function(error, element) {
            error.insertAfter(element);
            error.addClass("fade-in");
        },
        
        // Highlight error fields
        highlight: function(element) {
            $(element)
                .addClass("is-invalid")
                .removeClass("is-valid")
                .closest(".form-group")
                .addClass("has-error");
        },
        
        // Unhighlight valid fields
        unhighlight: function(element) {
            $(element)
                .removeClass("is-invalid")
                .addClass("is-valid")
                .closest(".form-group")
                .removeClass("has-error");
        },
        
        // Handle form submission
        submitHandler: function(form) {
            // Add loading state to submit button
            const submitButton = $(form).find('button[type="submit"]');
            const originalText = submitButton.text();
            submitButton.prop('disabled', true)
                       .html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Sending...');
            
            // Submit the form
            form.submit();
        }
    });

    // Real-time validation and formatting
    $("#name").on("input", function() {
        // Remove any numbers and special characters
        $(this).val($(this).val().replace(/[^a-zA-Z\s]/g, ''));
    });

    $("#mobile").on("input", function() {
        // Remove any non-numeric characters
        $(this).val($(this).val().replace(/[^0-9]/g, ''));
        
        // Limit to 10 digits
        if ($(this).val().length > 10) {
            $(this).val($(this).val().slice(0, 10));
        }
    });

    $("#message").on("input", function() {
        const maxLength = 500;
        if ($(this).val().length > maxLength) {
            $(this).val($(this).val().slice(0, maxLength));
        }
    });
});
</script>

</html>

