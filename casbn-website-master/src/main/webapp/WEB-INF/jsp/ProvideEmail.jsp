<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment</title>
    <link rel="icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/style4.css" />
  <script src="https://js.stripe.com"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>
    <div> 
    <!-- Error Message -->
 
        
           <div id="errormessage"></div>
           
         
      <div class="wrapper">
          <div class="welcome-message"> 
              <h1 class="thanks-msg">Thank you for choosing the plans!!</h1>
              <p id="selected-plan"><p>
          </div>
          
        <div class="form-wrapper">
          <div class="main-logo">
            <img
              src="../images/logo/logoTxtBlue.png"
              class="logo-trillup"
              alt="logoimage"
            />
          </div>
          <div class="section2">
            <h1>Want to Subscribe with us?</h1>
            <p class="mb-8 para">
              We are Excited,to have you. Just enter your email address below
              and we'll take you to further steps
            </p>
          </div>
          <form id="signup-form" method="POST">
            <div class="form-block">
              <div class="firstName">
                <label htmlFor="firstName">Email</label>
                <input
                  type="email"
                  class="email-input-box"
                  id="email"
                  placeholder="Enter your email here...."
                  required
                />
              <span id="text"></span>
              </div>
              <div class="lastName">
                <label htmlFor="lastName">Workspace Name</label>
                <input
                  type="text"
                  class="domain-input-box"
                  id="workspace"
                  placeholder="Enter your workspace name here..."
                  required
                />
              </div>
               <!-- <input type="hidden" name="priceID"/> -->
            </div>
            <div class="createAccount">
              <button type="submit">Subscribe!!</button>
            </div>
                <div class="createAccount hide-button" id="register-button">
               <button id="redirect-to-register">Register here</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <script type="text/javascript" src="js/createCustomer.js"></script>
  </body> 
</html>
