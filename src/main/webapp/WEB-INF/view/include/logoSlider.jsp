


<div class="logos">
	<div class="logo_items">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo1.png">
		<%-- <img src="${pageContext.request.contextPath}/static/images/logoSlider/logo2.jpg"> --%>
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo3.png">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo4.png">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo5.svg">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo6.png">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo7.png">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo8.png">
		<%-- <img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/"> --%>

	</div>
  	<div class="logo_items">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo1.png">
		<%-- <img src="${pageContext.request.contextPath}/static/images/logoSlider/logo2.jpg"> --%>
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo3.png">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo4.png">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo5.svg">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo6.png">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo7.png">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/logo8.png">
		<%-- <img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/">
		<img src="${pageContext.request.contextPath}/static/images/logoSlider/"> --%>	
	</div>
</div>



<style>

@keyframes slides {
    from {
        transform: translateX(0);
    }
    to {
        transform: translateX(-100%);
    }
}

.logos {
    overflow: hidden;
    padding: 30px 0px;
    white-space: nowrap;
    position: relative;
}

.logos:before, .logos:after {
    position: absolute;
    top: 0;
    content: '';
    width: 250px;
    height: 100%;
    z-index: 2;
}

.logos:before {
    left: 0;
    background: linear-gradient(to left, rgba(255,255,255,0), rgb(255, 255, 255));
}

.logos:after {
    right: 0;
    background: linear-gradient(to right, rgba(255,255,255,0), rgb(255, 255, 255));
}

.logo_items {
    display: inline-block;
    animation: 35s slides infinite linear;
}

.logos:hover .logo_items {
    animation-play-state: paused;
}

.logo_items img {
    height: 100px;
    margin: 0 20px; /* Add horizontal margin between logos */
    object-fit: contain; /* Ensure logos maintain aspect ratio */
}
</style>