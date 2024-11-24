<div id="carouselExampleIndicators" class="carousel slide container-fluid" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/static/images/slider1.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <h5>Support Education for Every Child</h5>
        <p>Education   ||    Development		||   Grow</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/static/images/slider2.jpg" alt="Second slide">
      <div class="carousel-caption d-none d-md-block">
        <h5>Donate for Girls' Empowerment</h5>
        <p>Education   ||    Development		||   Grow</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="${pageContext.request.contextPath}/static/images/slider3.jpg" alt="Third slide">
      <div class="carousel-caption d-none d-md-block">
        <h5>Empowering Futures</h5>
        <p>Donate for Girls' Education</p>
      </div>
    </div>
  </div>

  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<style>
	.carousel-item {
    height: 400px; /* Set the height of the carousel items */
}

.carousel-item img {
    width: 100%; /* Make sure the image takes the full width */
    height: 100%; /* Set the image height to 100% of the carousel item */
    object-fit: cover; /* Cover the entire area without distortion */
}
</style>