
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
  <link href="css/Contactstyles.css" rel="stylesheet">
  
  
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
            <a class="nav-link" href="/ourproduct" onclick="closeNav()">Our Product</a>
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
            <a class="nav-link" href="#" onclick="closeNav()">Contact Us</a>
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


  <!--START OF LANDING CONTENT -->
  <section id="landingContent">
    <div class="container-fluid">
      <div class="row">
        <div class="col d-flex justify-content-center FirstHeading">
          <b>We are always....
          <br />
          Available for <u>you</u></b>
        </div>
      </div>
      <div class="row">
        <div class="col d-flex justify-content-center SecondHeading">
          Whether you are looking for pricing or have questions, we will provide the information you need to make the right decision.
        </div>
      </div>
    </div>
  </section>
  <!--END OF LANDING CONTENT -->

  <section id="form" data-aos="zoom-in">
    <div class="container mt-n5">
      <div class="row ContactContentWrap mx-md-5 mx-0">
        <div class="col-12 d-flex justify-content-center FormHeading">
          <b><u>Tell Us Your Requirement</u></b>
        </div>
        <div class="col-12">
          <div class="row">
            <div class = "col-lg-2 col-0">
            </div>
            <div class="col-lg-8 mb-5">
              <form class="needs-validation" novalidate action="ContactUs" method="post">
                <div class="form-row">
                  <div class="col-12 mb-3">
                    <label for="validationCustom01">Full Name</label>
                    <input type="text" class="form-control" id="validationCustom01" placeholder="Your Name" name="Name" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col-12 mb-3">
                    <label for="validationCustom02">Email</label>
                    <input type="text" class="form-control" id="validationCustom02" placeholder="example@domain.com" name="email" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col-12 mb-3">
                    <label for="validationCustom02">Mobile Number </label>
                    <input  type="text" class="form-control" id="validationCustom02" placeholder="4152280225" name="number" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col-12 mb-3">
                    <label for="validationCustom02">Subject</label>
                    <input type="text" class="form-control" id="validationCustom02" placeholder="Query Regarding ..." name="subject" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col-12 mb-3">
                    <label for="validationTextarea">Message</label>
                        <textarea class="form-control" id="validationTextarea" placeholder="Required example text area" name="message" required></textarea>
                        <div class="invalid-feedback">
                          Please enter a message in the text area.
                        </div>
                  </div>
                </div>
                <button class="btn btn-primary" type="submit">Submit</button><br>
                
              </form>
               
              
            </div>
          </div>
        </div>
      </div>
    </div>
   
         
         

    <div class = "container-fluid">
      <div class = "row mt-5">
        <div class = "col-lg Map" data-aos="zoom-in" id="map">
          <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d21222.53744587091!2d-121.98719258305412!3d37.749030786278105!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808ff2aa16497653%3A0xff369eec29a0ed95!2s3471%20Ashbourne%20Cir%2C%20San%20Ramon%2C%20CA%2094583%2C%20USA!5e0!3m2!1sen!2s!4v1595862611989!5m2!1sen!2s" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
          <div class = "col-lg-2 col  NoMap pl-5" >
            <div class = "AddressHeading">Address</div>
            <div class = "ContactUsContent mt-2">
              3471 Ashbourne Cir
            </div>
            <div class = "ContactUsContent">
              San Ramon, CA 94583
            </div>
            <div class = "ContactUsContent ContactUsContentend">
              USA
            </div>
          </div>
          <div class = "col-lg-2 col NoMap">
            <div class = "ContactUsHeading pl-5 pl-md-0">Contact Us</div>
            <div class = "ContactUsContent pl-5 pl-md-0 mt-2">
              <li class="fa fa-envelope-o"></li>
              info@CASBN.com
            </div>
            <div class = "ContactUsContent pl-5 pl-md-0 ContactUsContentend">
              <li class="fa fa-phone"></li>
              415-228-0225
            </div>
          </div>
      </div>
    </div>

  </section>
  <!--END OF LANDING CONTENT -->

  <!-- Footer -->
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
  <!--carousel JavaScript-->
  <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>

  <!--Custom scripts for the template-->
  <script src="scripts/opacityReduction.js" charset="utf-8"></script>
  <script src="scripts/navBarClose.js" charset="utf-8"></script>
  <script src="scripts/navbarShadow.js" charset="utf-8"></script>
  <script src="scripts/navbarStyling.js" charset="utf-8"></script>
  <script src="scripts/formValidator.js" charset="utf-8"></script>
  <script src="scripts/preloader.js" charset="utf-8"></script>
  <script src="js/clearLocalStorage.js" charset="utf-8"></script>
</body>

</html>
