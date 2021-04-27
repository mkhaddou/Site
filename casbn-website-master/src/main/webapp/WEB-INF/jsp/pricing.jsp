<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

  <!--AOS stylesheet-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/pricingStyles.css" rel="stylesheet">
  
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/gh/StephanWagner/jBox@v1.2.0/dist/jBox.all.min.js"></script>
  <link href="https://cdn.jsdelivr.net/gh/StephanWagner/jBox@v1.2.0/dist/jBox.all.min.css" rel="stylesheet">
  <script src="https://js.stripe.com"></script>
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
      <a class="navbar-brand" href="index.jsp"><img src="images/logo/logoTxtBlue.png"></a>
      <button onclick="openNav()" class="navbar-toggler navbar-toggler-right" type="button">
        <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span>
      </button>
      <div class="collapse navbar-collapse text-center" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item bl">
            <a class="nav-link " href="index.jsp" onclick="closeNav()">Home</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="about.jsp" onclick="closeNav()">Our Product</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="index.jsp#features" onclick="closeNav()">Features</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="blog.jsp" onclick="closeNav()">Blog</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link active" href="#" onclick="closeNav()">Pricing</a>
          </li>
          <li class="nav-item bl">
            <a class="nav-link" href="Contact.jsp" onclick="closeNav()">Contact Us</a>
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
  <!-- START OF PRICING -->
  <section class="pricing">
    <div class="row">
      <div class="col-lg-12">
        <h2 class="text-center txtShadow">Our Pricing</h2>
        <hr>
        <h5 class="text-center txtShadow">Choose a plan that suits your needs</h5>
      </div>
    </div>
    <article>

      <ul>
        <li class="bg-blue">
          <button>Basic</button>
        </li>
        <li class="bg-blue">
          <button>Standard</button>
        </li>
        <li class="bg-blue active">
          <button>Advanced</button>
        </li>
        <li class="bg-blue">
          <button>Enterprise</button>
        </li>
      </ul>

      <table data-aos="zoom-in" data-aos-delay="250">
        <thead>
          <tr>
            <th class="hide"></th>
            <th class="bg-blue basic">Basic</th>
            <th class="bg-blue standard">Standard</th>
            <th class="bg-blue default advanced">Advanced</th>
            <th class="bg-blue enterprise">Enterprise</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Monthly price</td>
            <td class="basic"><span class="txt-l">Free</span></td>
            <td class="standard"><span class="txt-top">&dollar;</span><span class="txt-l">6.99</span></td>
            <td class="default advanced"><span class="txt-top">&dollar;</span><span class="txt-l">14.99</span></td>
            <td class="enterprise"><span class="txt-top">&dollar;</span><span class="txt-l">29.99</span></td>
          </tr>
          <tr>
            <td colspan="5" class="sep text-center">Tools</td>
          </tr>
          <tr>
            <td>Team Channels</td>
            <td class="basic"><span class="tick">&#10004;</span>(2 channels)</td>
            <td class="standard"><span class="tick">&#10004;</span>(10 channels)</td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Private Team Channels</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Global Search</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>1:1 Chat</td>
            <td class="basic"><span class="tick">&#10004;</span></td>
            <td class="standard"><span class="tick">&#10004;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Team Channel User Limit</td>
            <td class="basic"><span class="tick">&#10004;</span>(10 Users)</td>
            <td class="standard"><span class="tick">&#10004;</span>(40 Users)</td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>1:1 Audio Call</td>
            <td class="basic"><span class="tick">&#10004;</span></td>
            <td class="standard"><span class="tick">&#10004;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Group Audio Call</td>
            <td class="basic"><span class="tick">&#10004;</span>(45 mins/month)</td>
            <td class="standard"><span class="tick">&#10004;</span>(24 hours/month)</td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>1:1 Video Call</td>
            <td class="basic"><span class="tick">&#10004;</span>(30 minutes/day)</td>
            <td class="standard"><span class="tick">&#10004;</span>(90 minutes/day)</td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Group Video Call</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">30 minutes/day (5 pariticpants)</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>White Board</td>
            <td class="basic"><span class="tick">&#10004;</span>(3 days 10 users)</td>
            <td class="standard"><span class="tick">&#10004;</span>(20 users)</td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>File Sharing</td>
            <td class="basic"><span class="tick">&#10004;</span>(1 GB/ USER)</td>
            <td class="standard"><span class="tick">&#10004;</span>(5 GB/ USER)</td>
            <td class="default advanced"><span class="tick">&#10004;</span>(50 GB/ USER)</td>
            <td class="enterprise"><span class="tick">&#10004;</span>(1 TB/ USER)</td>
          </tr>
          <tr>
            <td>Meetings</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span>(10 Meetings/ USER)</td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>1:1 Screen Sharing</td>
            <td class="basic"><span class="tick">&#10004;</span>(3 days)</td>
            <td class="standard"><span class="tick">&#10004;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Group Screen Recording</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span>(500 mins/month)</td>
            <td class="enterprise"><span class="tick">&#10004;</span>(5000 mins/month)</td>
          </tr>
          <tr>
            <td>Document Collaboration</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <!-- <tr>
            <td></td>
            <td class="basic"><span class="tick"><a href="#" class="btn btn-primary">SELECT</a></span></td>
            <td class="standard"><span class="tick"><a href="#" class="btn btn-primary">SELECT</a></span></td>
            <td class="default advanced"><span class="tick"><a href="#" class="btn btn-primary">SELECT</a></span></td>
            <td class="enterprise"><span class="tick"><a href="#" class="btn btn-primary">SELECT</a></span></td>
          </tr> -->
          <tr>
            <td colspan="5" class="sep text-center">Support</td>
          </tr>
          <tr>
            <td>Admin Portal</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span>(2 Admin Accounts)</td>
            <td class="enterprise"><span class="tick">&#10004;</span>(5 Admin Accounts)</td>
          </tr>
          <tr>
            <td>Internal IT Support<br>Helpdesk cases for users</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Insights and Analytics</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Monitoring Tools<br>IT Teams</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Support Level</td>
            <td class="basic">Help Center & Customer Resource Center</td>
            <td class="standard">Help Center & Customer Resource Center</td>
            <td class="default advanced">24/7 Support, 24hrs initial response time</td>
            <td class="enterprise">24/7 Support, 4hrs initial response time</td>
          </tr>
          <tr>
            <td>Dedicated Support Team</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10008;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Priority Resolution</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>99.999% Guaranteed uptime SLA</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Single Sign-in (SS0)</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>MFA</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10004;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td>Active Directory Integrations</td>
            <td class="basic"><span class="tick">&#10008;</span></td>
            <td class="standard"><span class="tick">&#10008;</span></td>
            <td class="default advanced"><span class="tick">&#10008;</span></td>
            <td class="enterprise"><span class="tick">&#10004;</span></td>
          </tr>
          <tr>
            <td></td>
            <td class="basic"><span class="tick"><a href="#" id="Basic" class="btn btn-primary">SELECT</a></span></td>
            <td class="standard"><span class="tick"><a href="#" id="Standard" class="btn btn-primary">SELECT</a></span></td>
            <td class="default advanced"><span class="tick"><a href="#" id="Advanced" class="btn btn-primary">SELECT</a></span></td>
            <td class="enterprise"><span class="tick"><a href="#" id="Enterprise" class="btn btn-primary">SELECT</a></span></td>
          </tr>
          <tr>
            <td colspan="5" class="sep text-center"><h3>Internal Corporate Newsfeed</h3></td>
          </tr>
          <tr>
            <td>Pick your plan</td>
            <td class="basic"><span class="tick">$5 per month billed monthly (5000 users)</span></td>
            <td class="standard"><span class="tick">$4 per month billed monthly (5001-10000 users)</span></td>
            <td class="default advanced"><span class="tick">$3 per month billed monthly (10001-20000 users)</span></td>
            <td class="enterprise"><span class="tick">Contact Us</span></td>
          </tr>
          <tr>
            <td></td>
            <td class="basic"><span class="tick"><a href="#" id="Plan1" class="btn btn-primary">SELECT</a></span></td>
            <td class="standard"><span class="tick"><a href="#" id="Plan2" class="btn btn-primary">SELECT</a></span></td>
            <td class="default advanced"><span class="tick"><a href="#" id="Plan3" class="btn btn-primary">SELECT</a></span></td>
            <td class="enterprise"><span class="tick"><a href="#" class="btn btn-primary">SELECT</a></span></td>
          </tr>
        </tbody>
      </table>
    </article>
    <div class="container mt-3" id="casbn">
      <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header">
              <h3 class="text-center">CASBN Room Connector</h3>
            </div>
            <div class="card-body">
              <h4 class="text-center">$39.99 per user</h4>
            </div>
            <div class="card-footer d-flex justify-content-center">
              <a href="#" id="RoomConnector" class="btn btn-primary">SELECT</a>
            </div>
          </div>
        </div>
      </div>
    </div>

  </section>
  <!-- END OF PRICING -->

  

  <!-- Footer -->
  <footer class="bg-dark">
    <div class="container pt-5">
      <div class="row">
        <div class="col-lg-1 col-md-1" id="imgCol">
          <img id="heroLogo" src="images/logo/logoBlue.png" alt="" class="img-fluid" data-aos="zoom-in">
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
              <a href="#" target="_blank" class="fa fa-facebook"></a>
              <a href="#" target="_blank" class="fa fa-twitter"></a>
              <a href="#" target="_blank" class="fa fa-instagram"></a>
              <a href="#" target="_blank" class="fa fa-linkedin"></a>
            </div>
          </div>
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

<script>
    new jBox('Modal', {
      width: 600,
      height: 200,
      attach: '#Basic',
      title: 'Are you sure?',
      content: '<p>Do you want continue with CASBN Basic Plan?</p><div class="container"><div class="row"><div class="col-md-8"><h4>$0/ month </h4></div><div class="col-md-4"> <a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA89VHVttoTXn1EP5VoZqtb"/></c:url>">Purchase Now</a></div></div>'
    });
    new jBox('Modal', {
      width: 600,
      height: 340,
      attach: '#Standard',
      title: 'Are you sure?',
      content: '  <p>Do you want to continue with <b>Casbn Standard Plan?</b> Subscribe with us!!!</p><div class="container"><div class="row"><div class="col-md-6"><h4>$6.99/ month</h4><h4>$20.97/ 3 months</h4><h4>$41.94/ 6 months</h4><h4>$83.88/ year</h4></div><div class="col-md-6"><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8DkHVttoTXn1E2KCc3DKy"/></c:url>">Purchase Now</a></span><br/><span><a  class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8DkHVttoTXn1EOqTzxWri"/></c:url>">Purchase Now</a></span><br/><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8DkHVttoTXn1E1I0gQUtB"/></c:url>">Purchase Now</a></span><br/><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8DlHVttoTXn1EsQjxJkuF"/></c:url>">Purchase Now</a></span></div></div>'
    });
    new jBox('Modal', {
      width: 600,
      height: 340,
      attach: '#Advanced',
      title: 'Are you sure?',
      content: ' <p>Do you want to continue with <b>Casbn Advanced Plan?</b> Subscribe with us!!!</p><div class="container"><div class="row"><div class="col-md-6"><h4> 14.99/ month</h4><h4> 44.97/ 3 months</h4><h4> 89.94/ 6 months</h4><h4> 179.88/ year</h4></div><div class="col-md-6"><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8KOHVttoTXn1EUgV3Tkcg"/></c:url>">Purchase Now</a></span><br/><span><a  class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8KPHVttoTXn1EU2eMnQnK"/></c:url>">Purchase Now</a></span><br/><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8KPHVttoTXn1EEWUOQQqC"/></c:url>">Purchase Now</a></span><br/><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8KPHVttoTXn1EMkggw9CZ"/></c:url>">Purchase Now</a></span></div></div>'
    });
    new jBox('Modal', {
      width: 600,
      height: 340,
      attach: '#Enterprise',
      title: 'Are you sure?',
      content: '  <p>Do you want to continue with <b>Casbn Enterprise Plan?</b> Subscribe with us!!!</p><div class="container"><div class="row"><div class="col-md-6"> <h4> $29.99/ month </h4><h4> $89.97/ 3 months </h4><h4> $179.94/ 6 months </h4><h4> $359.88/ year </h4></div><div class="col-md-6"><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8QUHVttoTXn1EDpf8MiuJ"/></c:url>">Purchase Now</a></span><br/><span><a  class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8QVHVttoTXn1EIO2plQqC"/></c:url>">Purchase Now</a></span><br/><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8QVHVttoTXn1EtVN2sQ8E"/></c:url>">Purchase Now</a></span><br/><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8QVHVttoTXn1E8pM3m0UJ"/></c:url>">Purchase Now</a></span></div></div>'
    });
    new jBox('Modal', {
      width: 600,
      height: 200,
      attach: '#Plan1',
      title: 'Are you sure?',
      content: '    <p>Do you want continue with <b>Casbn Internal Corporate News Feed Plan?</b></p> <div class="container"><div class="row"><div class="col-md-8"><h4> $5 per month billed monthly (5000 users) </h4></div><div class="col-md-4"> <span>  <a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8VeHVttoTXn1E3TDQkA3V"/></c:url>">Puchase Now</a> </span></div></div> </div>'
    });
    new jBox('Modal', {
      width: 600,
      height: 200,
      attach: '#Plan2',
      title: 'Are you sure?',
        content: '    <p>Do you want continue with <b>Casbn Internal Corporate News Feed Plan?</b></p> <div class="container"><div class="row"><div class="col-md-8"> <h4> $4 per month billed monthly (5000-10000 users) </h4></div><div class="col-md-4"> <span> <a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8VeHVttoTXn1ECFK2f08w"/></c:url>">Purchase Now</a> </span></div></div> </div>'
    });
    new jBox('Modal', {
      width: 600,
      height: 200,
      attach: '#Plan3',
      title: 'Are you sure?',
        content: '    <p>Do you want continue with <b>Casbn Internal Corporate News Feed Plan?</b></p> <div class="container"><div class="row"><div class="col-md-8">  <h4> $3 per month billed monthly (10000-20000 users) </h4></div><div class="col-md-4"> <span>                               <a  class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8VeHVttoTXn1EDBG90GIX"/></c:url>">Puchase Now</a> </span></div></div> </div>'
    });
    new jBox('Modal', {
      width: 600,
      height: 340,
      attach: '#RoomConnector',
      title: 'Are you sure?',
      content: '  <p>Do you want to continue with <b>Casbn RoomConnector Plan?</b> Subscribe with us!!!</p><div class="container"><div class="row"><div class="col-md-6"> <h4>	$39.99/ month </h4><h4>	$199.97/ 3 months </h4><h4>	$239.94/ 6 months </h4><h4>	$479.88/ year </h4></div><div class="col-md-6"><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8T6HVttoTXn1EFeHY7sJ6"/></c:url>">Purchase Now</a></span><br/><span><a  class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8T6HVttoTXn1EmoX8mi4t"/></c:url>">Purchase Now</a></span><br/><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8T6HVttoTXn1EWk1wNcL6"/></c:url>">Purchase Now</a></span><br/><span><a class="example_e" href="<c:url value="/provideEmail"><c:param name="PriceID" value="price_1HA8T6HVttoTXn1EQHNrpwUS"/></c:url>">Purchase Now</a></span></div></div>'
    });
    </script>
  <!--Custom scripts for the template-->
   <script src="js/setPriceID.js" charset="utf-8"></script>
  <script src="scripts/navBarClose.js" charset="utf-8"></script>
  <script src="scripts/navbarShadow.js" charset="utf-8"></script>
  <script src="scripts/navbarStyling.js" charset="utf-8"></script>
  <script src="scripts/pricing.js" charset="utf-8"></script>
  <script src="scripts/toggleSign.js" charset="utf-8"></script>
  <script src="scripts/preloader.js" charset="utf-8"></script>
<script src="js/clearLocalStorage.js" charset="utf-8"></script>
</body>

</html>