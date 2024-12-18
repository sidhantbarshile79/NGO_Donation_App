<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Donation Form - NGO Donation</title>
    <link href="/static/css/styles.css" rel="stylesheet" type="text/css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
    body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: #333;
    background-color: #f8f9fa;
		}
		
		section {
		    padding: 60px 0;
		}
		
		h2, h3 {
		    font-weight: 700;
		    color: #2c3e50;
		    margin-bottom: 30px;
		    position: relative;
		    padding-bottom: 15px;
		    text-alignment: center;
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
		
		.text {
		    font-size: 1.1rem;
		    color: #555;
		    margin-bottom: 20px;
		}    
        .main-container {
            max-width: 100%;
            /* margin: 40px auto; */
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .page-title {
            color: #2c3e50;
            margin-bottom: 30px;
            text-align: center;
            font-weight: 600;
        }

        /* Call to Action Section */
        .cta-section {
            text-align: center;
            padding: 20px;
            background: linear-gradient(135deg, #3498db, #2c3e50);
            color: white;
            border-radius: 10px;
            margin: -10px 0;
        }

        .cta-section h5 {
            color: white;
            font-size: 1.5rem;
            margin-bottom: 20px;
        }

        .cta-section p {
            font-size: 1.1rem;
            margin-bottom: 20px;
        }
        
        .form-section {
            padding: 20px;
        }

        .input-group {
            margin-bottom: 20px;
            position: relative;
        }

        .input-group-text {
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
            border-right: none;
            color: #6c757d;
        }

        .form-control {
            border: 1px solid #ced4da;
            height: calc(1.5em + 1rem + 2px);
        }

        .form-control:focus {
            border-color: #80bdff;
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            padding: 12px 30px;
            font-weight: 500;
            width: 100%;
            margin-top: 20px;
        }

        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }

        .text-danger {
            font-size: 0.875rem;
            margin-top: 5px;
        }

        .has-error .form-control {
            border-color: #dc3545;
        }

        @media (max-width: 768px) {
            .main-container {
                padding: 20px;
                margin: 20px;
            }
            
            .cta-section {
                margin-bottom: 30px;
            }
        }
    </style>
<body>
    <header>
        <jsp:include page="include/header.jsp"/>
    </header>
    
    <div class="main-container">
        <h3 class="page-title">Donation Form</h3>
        
        <div class="row">
            <!-- Left Column - CTA Section -->
            <div class="col-md-5">
                <div class="cta-section">
                    <h5>Join Us in Making a Difference!</h5>
                    <p>Become a part of our NGO and help us create meaningful change in the community. Your support can make a significant impact!</p>
                    <p>Together, we can create a brighter future where every child has the chance to learn, grow, and thrive in a safe and healthy environment.</p>
                    <h5 class="text-center mt-4">Thank you for choosing us</h5>
                </div>
            </div>
            
            <!-- Right Column - Form Section -->
            <div class="col-md-7">
                <div class="form-section">
                    <f:form action="${pageContext.request.contextPath}/create-order" 
                            modelAttribute="donationCommand" 
                            method="post">
                        <f:hidden path="userId" value="${user.userId}" />

                        <div class="input-group mb-3">
					        <span class="input-group-text"><i class="fas fa-hand-holding-heart"></i></span>
					        <f:select path="donationType" class="form-control">
					            <f:option value="" label="Select Donation Type"/>
					            <f:option value="CHILD_EDUCATION" label="Child Education"/>
					            <f:option value="WOMEN_EMPOWERMENT" label="Women Empowerment"/>
					            <f:option value="ENVIRONMENT" label="Environment"/>
					            <f:option value="OTHER" label="Other"/>
					        </f:select>
					    </div>
					
					    <div class="input-group mb-3">
					        <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
					        <f:select path="donationReason" class="form-control">
					            <f:option value="" label="Select Donation Reason"/>
					            <f:option value="BIRTHDAY" label="Birthday"/>
					            <f:option value="ANNIVERSARY" label="Anniversary"/>
					            <f:option value="NEW_BORN" label="New Born"/>
					            <f:option value="REMEMBRANCE" label="Remembrance/Death Anniversary"/>
					            <f:option value="NO_REASON" label="No Specific Reason"/>
					            <f:option value="OTHER" label="Other"/>
					        </f:select>
					    </div>
						
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-rupee-sign"></i></span>
                            <f:input path="donationAmount" placeholder="Enter Amount" class="form-control"/>
                        </div>
                        
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-calendar"></i></span>
                            <f:input path="donationDate" id="currentDate" type="date" class="form-control"/>
                        </div>
                        
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-id-card"></i></span>
                            <f:input path="aadhaarNumber" class="form-control" placeholder="Enter Aadhaar Number"/>
                        </div>
                        
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-file-alt"></i></span>
                            <f:input path="panCardNumber" class="form-control" placeholder="Enter PAN Card Number"/>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Donate Now</button>
                    </f:form>
                </div>
            </div>
        </div>
    </div>

    <footer class="mt-5">
        <jsp:include page="include/footer.jsp"/>
    </footer>
</body>


<script> 

// Get the current date 

const today = new Date(); 

// Format the date to YYYY-MM-DD 

const formattedDate = today.toISOString().split('T')[0]; 

// Set the value of the input field to the current date 

document.getElementById('currentDate').value = formattedDate; 

</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
<script>
$(document).ready(function() {
    // Custom method for Aadhaar validation (12 digits)
    $.validator.addMethod("aadhaarFormat", function(value, element) {
        return this.optional(element) || /^[2-9]{1}[0-9]{11}$/.test(value);
    }, "Please enter a valid 12-digit Aadhaar number");

    // Custom method for PAN validation (10 alphanumeric characters)
    $.validator.addMethod("panFormat", function(value, element) {
        return this.optional(element) || /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/.test(value);
    }, "Please enter a valid PAN number (e.g., ABCDE1234F)");

    // Form validation rules
    $("form").validate({  // Changed from specific action selector to general form selector
        rules: {
            donationAmount: {
                required: true,
                number: true,
                min: 1
            },
            aadhaarNumber: {
                required: true,
                digits: true,
                minlength: 12,
                maxlength: 12,
                aadhaarFormat: true
            },
            panCardNumber: {
                required: true,
                minlength: 10,
                maxlength: 10,
                panFormat: true
            }
        },
        messages: {
            donationAmount: {
                required: "Please enter donation amount",
                number: "Please enter a valid amount",
                min: "Amount must be greater than 0"
            },
            aadhaarNumber: {
                required: "Please enter Aadhaar number",
                digits: "Aadhaar number should contain only digits",
                minlength: "Aadhaar number must be 12 digits",
                maxlength: "Aadhaar number must be 12 digits"
            },
            panCardNumber: {
                required: "Please enter PAN number",
                minlength: "PAN number must be 10 characters",
                maxlength: "PAN number must be 10 characters"
            }
        },
        errorElement: "small",
        errorClass: "text-danger",
        errorPlacement: function(error, element) {
            error.insertAfter(element.closest(".input-group"));
        },
        highlight: function(element) {
            $(element).addClass("is-invalid").removeClass("is-valid");
            $(element).closest(".input-group").addClass("has-error");
        },
        unhighlight: function(element) {
            $(element).addClass("is-valid").removeClass("is-invalid");
            $(element).closest(".input-group").removeClass("has-error");
        },
        submitHandler: function(form) {
            // Additional checks before submission
            var amount = parseFloat($("#donationAmount").val());
            if (amount <= 1 || amount >= 10000000) {
                alert("Donation amount must be between 1 and 9,999,999");
                return false;
            }
            
            // If all validations pass, submit the form
            form.submit();
        }
    });

    // Real-time formatting and validation
    $("#donationAmount").on("input", function() {
        // Remove any non-numeric characters except decimal point
        $(this).val($(this).val().replace(/[^0-9.]/g, ''));
        
        // Ensure only one decimal point
        if (($(this).val().match(/\./g) || []).length > 1) {
            $(this).val($(this).val().replace(/\.+$/, ''));
        }

        // Limit to 7 digits before decimal point
        var parts = $(this).val().split('.');
        if (parts[0].length > 7) {
            parts[0] = parts[0].slice(0, 7);
            $(this).val(parts.join('.'));
        }
    });

    $("#aadhaarNumber").on("input", function() {
        // Remove any non-numeric characters
        $(this).val($(this).val().replace(/[^0-9]/g, ''));
        
        // Limit to 12 digits
        if ($(this).val().length > 12) {
            $(this).val($(this).val().slice(0, 12));
        }
    });

    $("#panCardNumber").on("input", function() {
        // Convert to uppercase and remove invalid characters
        $(this).val($(this).val().toUpperCase().replace(/[^A-Z0-9]/g, ''));
        
        // Limit to 10 characters
        if ($(this).val().length > 10) {
            $(this).val($(this).val().slice(0, 10));
        }
    });
});
</script>

</html>
