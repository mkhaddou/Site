<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!--
  THE WEBSITE WAS DESIGNED AND CREATED FOR CASBN BY BIZHTECH (www.bizhtech.com)
  CONTACT: bizhtech1@gmail.com

  BIZHTECH IS NOT RESPONSIBLE AND WILL NOT BE HELD RESPONSIBLE IN ANY COURT OF LAW FOR ANY USE OF COPYRIGHTED CONTENT ON THIS WEBSITE OR BY CASBN THAT MAY RESULT IN BREACH OF ANY INTELLECTUAL PROPERTY RIGHTS
  CASBN IS RESPONSIBLE FOR ENSURING THAT THEY HAVE THE RIGHT TO PUBLISH THE CONTENT, MEDIA, VISIUALS OR ANYTHING ON THIS WEBSITE
  COPYRIGHT CASBN
  -->

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>CASBN</title>
  <link rel="icon" href="images/favicon.png">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  <!-- Font Awesome CSS -->
  <script src="https://kit.fontawesome.com/b58b7ae888.js" crossorigin="anonymous"></script>

  <!--FONT-->
  <link href="https://fonts.googleapis.com/css2?family=Sarabun&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">

  <!--carousel stylesheet-->
  <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">

  <!--AOS stylesheet-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/aboutStyles.css" rel="stylesheet">

</head>

<body>

  <div id="preloader" class="navbar-brand">
    <div class="row justify-content-center">
      <img src="images/logo/logoBlue.png">
    </div>

  </div>

  <!--START OF NAVIGATION -->
  <nav class="navbar fixed-top navbar-expand-lg fixed-top" id="topnav">
    <div class="container-fluid mx-5">
      <a class="navbar-brand" href="/"><img src="images/logo/logoTxtBlue.png"></a>
      <button onclick="openNav()" class="navbar-toggler navbar-toggler-right" type="button">
        <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span>
      </button>
      <div class="collapse navbar-collapse text-center" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item bl">
            <a class="nav-link " href="/" onclick="closeNav()">Home</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link active" href="#" onclick="closeNav()">Our Product</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/#features" onclick="closeNav()">Features</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/blog" onclick="closeNav()">Blog</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/pricing" onclick="closeNav()">Pricing</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="/Contact" onclick="closeNav()">Contact Us</a>
          </li>
       <li class="nav-item">
            <a href="https://app.casbn.com/#/auth/sign-in" target="_blank" type="button" class="btn btn-dark" name="button">Sign in</a>
          </li>
          <li class="nav-item">
            <a href="https://app.casbn.com/#/auth/register" target="_blank"  type="button" class="btn btn-info" name="button">Register</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- END OF NAVIGATION -->

  <!--Start of landing content-->
  <section id="aboutLanding">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-6 col-md-6" id="landingHeading" data-aos="fade-up" data-aos-delay="250">
          <h5>Our Product</h5>
          <h1>Get to know</h1>
          <h1><u>about Casbn</u></h1>
          <p id="paraStart">Is your organization functioning with various teams scattered across the globe? CASBN is an excellent choice for you!</p>
          <p>You can manage your projects, events, and functionalities all on a single platform. CASBN is an essential collaboration tool that helps you streamline your workplace communication through a single platform.</p>
          <a type="button" name="button" class="btn btn-primary" href="index.jsp#features">Our Features</a>
        </div>
        <div class="col-lg-6 col-md-6" id="landImgCol" data-aos="fade-down" data-aos-delay="250">
          <img src="images/projectImages/aboutHero.png" alt="" class="img-fluid">
        </div>
      </div>
    </div>
  </section>
  <!--End of landing content-->

  <!--START OF WHY US?-->
  <section id="whyUs">
    <div class="container pt-5" id="whyUsCard" data-aos="zoom-in">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <h1 class="text-center">WHY CHOOSE <u>US</u>?</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-6 col-md-6">
          <ul class="listitems">
  		    	<li><i class="fas fa-check-circle" aria-hidden="true"></i> Company News</li>
  		    	<li><i class="fas fa-check-circle" aria-hidden="true"></i> Discussions</li>
  		    	<li><i class="fas fa-check-circle" aria-hidden="true"></i> Webinars</li>
  		    	<li><i class="fas fa-check-circle" aria-hidden="true"></i> File Sharing</li>
  		    </ul>
        </div>
        <div class="col-lg-6 col-md-6">
          <ul class="listitems">
  		    	<li><i class="fas fa-check-circle" aria-hidden="true"></i> Audio/Video Calling</li>
  		    	<li><i class="fas fa-check-circle" aria-hidden="true"></i> Screen Sharing</li>
  		    	<li><i class="fas fa-check-circle" aria-hidden="true"></i> Whiteboarding</li>
  		    	<li><i class="fas fa-check-circle" aria-hidden="true"></i> Document Collaboration</li>
          </ul>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-lg-12 col-md-12">
          <div class="container" id="downloadContainer">
            <h3 class="text-center">TAKE THE FIRST STEPS TO BETTER COMMUNICATION NOW!</h3>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--END OF WHY US?-->

  <!--WHAT CAN YOU DO START-->
  <section id="wcyd">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-3" data-aos="fade-down">
          <img src="images/projectImages/aboutIcon.png" class="img-fluid" alt="">
        </div>
        <div class="col-lg-9 col-md-9" data-aos="fade-down">
            <h2>WHAT CAN YOU <u class="bolder">DO</u>?</h2>
            <p>At times it gets tedious and time consuming to communicate through emails. What if you ended up missing an important communication or an urgent task from your boss? CASBN is the high-end solution for real-time communication. Know an individual’s presence or availability and talk instantly without having to wait for a reply in an email and let go off the multiple chains of emails. Minimize the risk of confusion and adopt CASBN to work independently and creatively.</p>
            <a href="#" class="btn btn-primary">OUR REVIEWS</a>
        </div>
      </div>
    </div>
  </section>
  <!--WHAT CAN YOU DO END-->

  <!--Counter Start-->
  <section id="hoursCounter">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12" id="headingCounter">
          <h1 class="text-center">SUCCESSFULLY COMPLETED <u class="bolder">2100+</u> HOURS WORKING WITH CASBN APPLICATION</h1>
        </div>
      </div>
      <div class="container">
        <div class="row" id="counters">
          <div class="col-lg-3 col-md-3 text-center">
            <span class="count1 h1 text-center" data-from="0" data-to="950" data-time="2000">0</span><span id="plus">+</span>
            <h5>Research Hours</h5>
          </div>
          <div class="col-lg-3 col-md-3 text-center">
            <span class="count2 h1 text-center" data-from="0" data-to="750" data-time="2000">0</span><span id="plus">+</span>
            <h5>Completed Hours</h5>
          </div>
          <div class="col-lg-3 col-md-3 text-center">
            <span class="count3 h1 text-center" data-from="0" data-to="600" data-time="2000">0</span><span id="plus">+</span>
            <h5>Coffee Cups</h5>
          </div>
          <div class="col-lg-3 col-md-3 text-center">
            <span class="count4 h1 text-center" data-from="0" data-to="95" data-time="2000">0</span><span id="plus">+</span>
            <h5>Testing Hours</h5>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--Counter End-->

  <!--Testimonials Start-->
  <section id="testimonials">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <h2 class="text-center my-4">WHAT DO OUR <u class="bolder">OUR CLIENTS</u> SAY?</h2>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-lg-4 col-md-4">
          <div class="card" data-aos="zoom-in">
            <div class="card-body">
              <div class="card-img d-flex justify-content-center">
                <img src="images/quote.png" class="img-fluid" alt="" id="quoteImg">
              </div>
              <p class="text-center"><em>"Amazing support and it is very different from other collaboration tools."</em></p>
              <h5 class="bolder text-center">Harish Reddy</h5>
              <h6 class="text-center">Director, RGS PVT LTD. </h6>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4">
          <div class="card" data-aos="zoom-in" id="centerCard">
            <div class="card-body">
              <div class="card-img d-flex justify-content-center">
                <img src="images/quote.png" class="img-fluid" alt="" id="quoteImg">
              </div>
              <p class="text-center"><em>"Dont ever worry about Emails from now because casbn workspace is enough to work from home."</em></p>
              <h5 class="bolder text-center">Ellie</h5>
              <h6 class="text-center">CEO, Virtusa sydney. </h6>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-4">
          <div class="card" data-aos="zoom-in">
            <div class="card-body">
              <div class="card-img d-flex justify-content-center">
                <img src="images/quote.png" class="img-fluid" alt="" id="quoteImg">
              </div>
              <p class="text-center"><em>"Whiteboard is amazing while on video calls here"</em></p>
              <h5 class="bolder text-center">Khalid bassar</h5>
              <h6 class="text-center">CEO, Dubaiwin Constructions</h6>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--Testimonials End-->

  <!--Start of footer-->
  <footer  class="bg-dark">
    <div class="container pt-5">
      <div class="row">
        <div class="col-lg-1 col-md-1" id="imgCol">
          <div class="row justify-content-center">
            <a href="#home">
              <div class="footer-centering">
                <img id="heroLogo" src="images/logo/logoBlue.png" alt="" class="img-fluid" data-aos="zoom-in">
              </div>
            </a>
          </div>
        </div>
        <div class="col-lg-7 col-md-7" id="contactCol">
          <h5 class="text-left">Address: <span>3471 Ashbourne Cir<br>San Ramon, CA 94583<br>USA</span></h5>
          <h5 class="text-left">Email: <span>info@casbn.com</span></h5>
          <h5 class="text-left">Number: <span>4152280225</span></h5>
        </div>
        <div class="col-lg-4 col-md-4" id="smCol">
          <h5 class="text-left">Social Media</h5>
          <div class="row">
            <div class="col-lg-12" id="icCol">
              <a href="https://www.facebook.com/Casbnhq-101070351716985/" target="_blank" class="fa fa-facebook"></a>
              <a href="https://twitter.com/casbnHQ" target="_blank" class="fa fa-twitter"></a>
              <a href="https://www.instagram.com/casbnhq/" target="_blank" class="fa fa-instagram"></a>
              <a href="https://www.youtube.com/channel/UCgp4nS5xYRhsi9SeTOGuvzA?view_as=subscriber" target="_blank" class="fa fa-youtube"></a>

            </div>
          </div>
          <h5 class="text-left pt-3"><a href="/privacypolicy">Privacy Policy</a></h5>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <h6 class="text-center">Copyright &copy; CASBN 2020</h6>
        </div>
      </div>
    </div>
  </footer>



  <!-- Bootstrap core JavaScript -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

  <!-- AOS JavaScript -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script type="text/javascript">
      AOS.init();
  </script>

  <!--Custom scripts for the template-->
  <script src="scripts/opacityReduction.js" charset="utf-8"></script>
  <script src="scripts/navBarClose.js" charset="utf-8"></script>
  <script src="scripts/navbarShadow.js" charset="utf-8"></script>
  <script src="scripts/navbarStyling.js" charset="utf-8"></script>
  <script src="scripts/preloader.js" charset="utf-8"></script>
  <script src="scripts/counter.js" charset="utf-8"></script>
  <script src="js/clearLocalStorage.js" charset="utf-8"></script>
</body>

</html>
