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
    <title>NGO Resources and Tax Benefits</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2c3e50;
            --bg-light: #f8f9fa;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--bg-light);
            line-height: 1.6;
        }

        .section-header {
            position: relative;
            text-align: center;
            padding-bottom: 1rem;
            margin-bottom: 2rem;
        }

        .section-header::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 3px;
            background-color: var(--primary-color);
        }

        .resource-card {
            background: white;
            border-radius: 0.75rem;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .resource-card:hover {
            transform: translateY(-5px);
        }

        .updates-card {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            border-radius: 0.75rem;
        }

        .animate-fade-in {
            animation: fadeIn 1s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .document-preview {
            border: 1px solid #e2e8f0;
            border-radius: 0.5rem;
            max-height: 500px;
            overflow: auto;
        }

        .tax-benefits-section {
            background-color: white;
            border-radius: 0.75rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
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
  		  

	<div class="container tax-benefits-section mt-12 p-8 animate-fade-in">
            <h2 class="text-3xl font-bold text-center mb-8 section-header">NGO Tax Benefits</h2>

            <div class="grid md:grid-cols-2 gap-8">
                <div>
                    <h3 class="text-xl font-semibold text-blue-800 mb-4">Overview</h3>
                    <p class="text-gray-700">
                        Non Government Organisations (NGOs) serve society's needs and promote cultural values, 
                        not to earn profits. Notable Indian NGOs include Smile Foundation, Save the Children India, 
                        Helpage India, and CRY.
                    </p>
                </div>

                <div>
                    <h3 class="text-xl font-semibold text-blue-800 mb-4">Tax Exemption Status</h3>
                    <ul class="list-disc pl-5 space-y-2 text-gray-700">
                        <li>NGOs with 12A-registration can claim income tax exemption</li>
                        <li>80G-certification helps attract more donors</li>
                        <li>Unregistered NGOs are taxed at regular rates</li>
                    </ul>
                </div>
            </div>

            <div class="grid md:grid-cols-2 gap-8 mt-8">
                <div>
                    <h3 class="text-xl font-semibold text-blue-800 mb-4">12A Registration</h3>
                    <p class="text-gray-700 mb-4">
                        Registration under Section 12A of the Income Tax Act (1961) is essential for tax exemption on donations.
                    </p>
                    <div class="bg-gray-100 p-5 rounded-lg">
                        <h4 class="font-semibold mb-3">Required Documents:</h4>
                        <ul class="list-disc pl-5 space-y-2 text-gray-700">
                            <li>Form 10A</li>
                            <li>Organization's PAN card</li>
                            <li>Trust Deed or Registration Certificate</li>
                            <li>Financial statements</li>
                        </ul>
                    </div>
                </div>

                <div>
                    <h3 class="text-xl font-semibold text-blue-800 mb-4">80G Certification</h3>
                    <p class="text-gray-700 mb-4">
                        80G certification allows donors to receive tax benefits on their contributions.<br>Some documents are required for 80G.
                    </p>
                    <div class="bg-gray-100 p-5 rounded-lg">
                        <h4 class="font-semibold mb-3">Required Documents:</h4>
                        <ul class="list-disc pl-5 space-y-2 text-gray-700">
                            <li>NGO's PAN card</li>
                            <li>Donor list with PAN</li>
                            <li>Registration certificates</li>
                            <li>IT Returns and accounts</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
	
    <header class="container mx-auto px-4 py-8">
    	 <div class="text-center mb-12">
            <h1 class="text-4xl font-bold text-gray-800 section-header">NGO Resources</h1>
        </div>
	</header>
        <div class=" container grid md:grid-cols-2 gap-8">
            <div class="space-y-8">
                <div class="resource-card p-6 animate-fade-in">
                    <h2 class="text-2xl font-semibold text-gray-800 border-b pb-3 mb-4">
                        <i class="fas fa-link mr-3 text-blue-500"></i>Important Links
                    </h2>
                    <ul class="space-y-3">
                        <li>
                            <a href="https://charity.maharashtra.gov.in/en-us/know-your-trust-en-US" 
                               class="text-blue-600 hover:text-blue-800 transition duration-300" 
                               target="_blank">
                                Know about NGO
                            </a>
                        </li>
                        <li>
                            <a href="https://charity.maharashtra.gov.in/mr-in/" 
                               class="text-blue-600 hover:text-blue-800 transition duration-300" 
                               target="_blank">
                                Charity Commissioner
                            </a>
                        </li>
                        <li>
                            <a href="https://charity.maharashtra.gov.in/en-us/Accounts-en-US" 
                               class="text-blue-600 hover:text-blue-800 transition duration-300" 
                               target="_blank">
                                Audit Report
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="resource-card p-6 animate-fade-in">
                    <h2 class="text-2xl font-semibold text-gray-800 border-b pb-3 mb-4">
                        <i class="fas fa-file-pdf mr-3 text-red-500"></i>Important Documents
                    </h2>
                    <div class="grid gap-4">
                        <div class="document-preview p-4">
                            <p class="text-gray-600">
                            	<a class="fas fa-file-pdf mr-2 text-red-500" href="/static/pdf/AboutCharity.pdf">About Charity.pdf</a>
                            </p>
                        </div>
                        <div class="document-preview p-4">
                            <p class="text-gray-600">
                            	<a class="fas fa-file-pdf mr-2 text-red-500" href="/static/pdf/MPTAct1950.pdf"> MPTAct 1950</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="updates-card p-8 text-white rounded-lg animate-fade-in">
                <h2 class="text-2xl font-bold mb-6 text-center">Government Updates</h2>
                
                <div class="space-y-6">
                    <div class="bg-opacity-10 p-1 rounded-lg">
                        <h3 class="text-xl font-semibold mb-3">
                            <i class="fas fa-graduation-cap mr-2"></i>Support Programs for Students
                        </h3>
                        <p class="text-gray-200">
                            Scholarship initiatives, skill development programs, and mental health support resources for students.
                        </p>
                    </div>

                    <div class="bg-opacity-10 p-1 rounded-lg">
                        <h3 class="text-xl font-semibold mb-3">
                            <i class="fas fa-female mr-2"></i>Empowerment Programs for Women
                        </h3>
                        <p class="text-gray-200">
                            Financial assistance schemes, health initiatives, and leadership training for women empowerment.
                        </p>
                    </div>

                    <div class="bg-opacity-10 p-1 rounded-lg">
                        <h3 class="text-xl font-semibold mb-3">
                            <i class="fas fa-leaf mr-2"></i>Environmental Initiatives
                        </h3>
                        <p class="text-gray-200">
                            Sustainable development projects, awareness campaigns, and tree plantation drives.
                        </p>
                    </div>
                </div>
            </div>
        </div>

      <footer>
      	 <jsp:include page="include/footer.jsp"/>
      </footer>  
    
</body>
</html>