<title>Useful Links and Documents</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .pdf-embed {
            width: 100%;
            height: 600px;
            border: 1px solid #ddd;
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
    

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <h4>Important Links</h4>
                <ul>
                    <li><a href="https://charity.maharashtra.gov.in/en-us/know-your-trust-en-US" target="_blank">Know about NGO</a></li>
                    <li><a href="https://charity.maharashtra.gov.in/mr-in/" target="_blank">Charity Commissioner</a></li>
                    <li><a href="https://charity.maharashtra.gov.in/en-us/Accounts-en-US" target="_blank">Audit Report</a></li>
                </ul>

                <h4>Useful PDF</h4>
                <object class="pdf-embed" data="${pageContext.request.contextPath}/resources/pdf/AboutCharity.pdf" type="application/pdf"> 
                    <a href="${pageContext.request.contextPath}/resources/pdf/AboutCharity.pdf">Download the PDF</a>
                </object>
                
                <object class="pdf-embed" data="${pageContext.request.contextPath}/resources/pdf/MPTAct.pdf" type="application/pdf"> 
                    <a href="${pageContext.request.contextPath}/resources/pdf/MPTAct.pdf">Download the PDF</a>
                </object>
            </div>

            <!-- Right Part: Important Information (content remains the same) -->
            <div class="col-md-6">
            		<h4>Important Updates form Governmant</h4>
		            <b>Support Programs for Students</b>
					<p>Scholarship Initiatives: The government has launched several scholarship programs aimed at underprivileged students. NGOs are encouraged to help identify eligible candidates and assist in the application process.
					Skill Development Programs: New skill development initiatives are being introduced to equip students with essential skills for the job market. NGOs can partner with educational institutions to facilitate training workshops.
					Mental Health Support: Recognizing the importance of mental health, the government is rolling out programs to provide mental health resources in schools and colleges. NGOs can collaborate to offer counseling services and workshops.</p>
					<br>
					<b>Empowerment Programs for Women</b>
					<p>Financial Assistance Schemes: The government has introduced financial assistance programs for women entrepreneurs. NGOs can help women access these funds and provide guidance on business development.
					Women’s Health Initiatives: New health programs focusing on women's health issues, including maternal health and reproductive rights, are being launched. NGOs are encouraged to disseminate information and provide health services.
					Leadership Training: The government is promoting leadership training programs for women. NGOs can facilitate workshops to empower women with leadership skills and encourage participation in local governance.</p>
					<br>
					<b>Environmental Initiatives</b>
					<p>Sustainable Development Projects: The government is funding projects aimed at promoting sustainable development and environmental conservation. NGOs working in this area can apply for grants to implement community-based environmental projects.
					Awareness Campaigns: There are ongoing campaigns to raise awareness about climate change and environmental protection. NGOs can participate by organizing local events, workshops, and educational programs.
					Tree Plantation Drives: The government is encouraging tree plantation drives across the country. NGOs can collaborate with local communities to organize tree planting events and promote biodiversity.</p>
            </div>
        </div>
    </div>

    <footer class="mt-5">
        <jsp:include page="include/footer.jsp"/>
    </footer>
