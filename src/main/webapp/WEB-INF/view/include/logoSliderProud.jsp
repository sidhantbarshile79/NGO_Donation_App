<div class="logos">
    <div class="logo_items">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo1.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo2.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo3.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo4.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo5.jfif">
    </div>
    <div class="logo_items">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo1.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo2.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo3.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo4.png">
        <img src="${pageContext.request.contextPath}/static/images/logoProud/logo5.jfif">
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

/* Responsive Styles */
@media (max-width: 1200px) {
    .logo_items img {
        height: 80px; /* Reduce logo height on smaller screens */
        margin: 0 15px; /* Adjust margin */
    }
}

@media (max-width: 768px) {
    .logo_items img {
        height: 60px; /* Further reduce logo height */
        margin: 0 10px; /* Adjust margin */
    }
}

@media (max-width: 480px) {
    .logo_items img {
        height: 50px; /* Further reduce logo height */
        margin: 0 5px; /* Adjust margin */
    }
}
</style>