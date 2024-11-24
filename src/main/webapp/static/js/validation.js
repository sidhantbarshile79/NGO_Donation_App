
//script
$('form[action="contact"], form[action$="/donate"], form[action="register"]').validate(validationSettings);

// Comprehensive Form Validation Script
$(document).ready(function() {
    // Custom validation methods
    $.validator.addMethod("mobileNumber", function(value, element) {
        return this.optional(element) || /^[6-9]\d{9}$/.test(value);
    }, "Please enter a valid 10-digit mobile number");

    $.validator.addMethod("alphabetsOnly", function(value, element) {
        return this.optional(element) || /^[a-zA-Z\s]+$/.test(value);
    }, "Only alphabets are allowed");

    $.validator.addMethod("strongPassword", function(value, element) {
        return this.optional(element) || (
            value.length >= 12 && 
            /[A-Z]/.test(value) && 
            /[a-z]/.test(value) && 
            /[0-9]/.test(value) && 
            /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/.test(value)
        );
    }, "Password must be at least 12 characters long and contain at least 1 uppercase, 1 lowercase, 1 number, and 1 special character");

    $.validator.addMethod("aadhaarNumber", function(value, element) {
        return this.optional(element) || /^\d{12}$/.test(value);
    }, "Aadhaar number must be 12 digits");

    $.validator.addMethod("panCardNumber", function(value, element) {
        return this.optional(element) || /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/.test(value);
    }, "Invalid PAN Card number format");

    // Default validation settings
    var validationSettings = {
        errorClass: "is-invalid",
        errorElement: "div",
        errorPlacement: function(error, element) {
            error.addClass("invalid-feedback");
            element.closest(".form-group, .input-group").append(error);
        },
        highlight: function(element, errorClass, validClass) {
            $(element)
                .addClass(errorClass)
                .removeClass(validClass);
            $(element).closest(".form-group, .input-group")
                .addClass("has-error")
                .removeClass("has-success");
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element)
                .removeClass(errorClass)
                .addClass(validClass);
            $(element).closest(".form-group, .input-group")
                .removeClass("has-error")
                .addClass("has-success");
        },
        // Validation rules - customized for specific forms
        rules: {
            // Contact Form Validation
            "name": {
                required: true,
                alphabetsOnly: true,
                minlength: 2,
                maxlength: 50
            },
            "email": {
                required: true,
                email: true
            },
            "mobile": {
                required: true,
                mobileNumber: true
            },
            "message": {
                required: true,
                minlength: 10,
                maxlength: 500
            },

            // Registration Form Validation
            "user.name": {
                required: true,
                alphabetsOnly: true,
                minlength: 2,
                maxlength: 50
            },
            "user.phone": {
                required: true,
                mobileNumber: true
            },
            "user.address": {
                required: true,
                minlength: 10,
                maxlength: 200
            },
            "user.email": {
                required: true,
                email: true
            },
            "user.loginName": {
                required: true,
                minlength: 4,
                maxlength: 20
            },
            "user.password": {
                required: true,
                strongPassword: true
            },

            // Donation Form Validation
            "donationAmount": {
                required: true,
                number: true,
                min: 1
            },
            "donationDate": {
                required: true,
                date: true
            },
            "aadhaarNumber": {
                required: true,
                aadhaarNumber: true
            },
            "panCardNumber": {
                required: true,
                panCardNumber: true
            }
        },
        messages: {
            // Contact Form Messages
            "name": {
                required: "Please enter your name",
                alphabetsOnly: "Name should contain only alphabets",
                minlength: "Name must be at least 2 characters long",
                maxlength: "Name cannot exceed 50 characters"
            },
            "email": {
                required: "Please enter an email address",
                email: "Please enter a valid email address"
            },
            "mobile": {
                required: "Please enter a mobile number",
                mobileNumber: "Please enter a valid 10-digit mobile number"
            },
            "message": {
                required: "Please enter your message",
                minlength: "Message must be at least 10 characters long",
                maxlength: "Message cannot exceed 500 characters"
            },

            // Registration Form Messages
            "user.name": {
                required: "Please enter your name",
                alphabetsOnly: "Name should contain only alphabets",
                minlength: "Name must be at least 2 characters long",
                maxlength: "Name cannot exceed 50 characters"
            },
            "user.phone": {
                required: "Please enter your phone number",
                mobileNumber: "Please enter a valid 10-digit mobile number"
            },
            "user.address": {
                required: "Please enter your address",
                minlength: "Address must be at least 10 characters long",
                maxlength: "Address cannot exceed 200 characters"
            },
            "user.email": {
                required: "Please enter an email address",
                email: "Please enter a valid email address"
            },
            "user.loginName": {
                required: "Please enter a username",
                minlength: "Username must be at least 4 characters long",
                maxlength: "Username cannot exceed 20 characters"
            },
            "user.password": {
                required: "Please enter a password"
            },

            // Donation Form Messages
            "donationAmount": {
                required: "Please enter donation amount",
                number: "Please enter a valid number",
                min: "Donation amount must be at least 1"
            },
            "donationDate": {
                required: "Please select a donation date",
                date: "Please enter a valid date"
            },
            "aadhaarNumber": {
                required: "Please enter Aadhaar number",
                aadhaarNumber: "Aadhaar number must be 12 digits"
            },
            "panCardNumber": {
                required: "Please enter PAN Card number",
                panCardNumber: "Invalid PAN Card number format"
            }
        }
    };

    // Initialize validation on all required forms
    $('form[action="contact"], form[action$="/donate"], form[action="register"]').validate(validationSettings);
});