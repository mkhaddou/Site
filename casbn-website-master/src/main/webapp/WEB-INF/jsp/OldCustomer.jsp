<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta   charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Previous Plans</title>
     <link rel="icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/style1.css" />

    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/global.css" />
      <script src="https://js.stripe.com"></script>
      <!-- Latest compiled and minified CSS -->    
   
   <script type="text/javascript" src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- this file was missing -->

  <!-- this file was moved after the jQuery Datatables library was laoded -->
   

  </head>
  <body>
 
    <div class="box radius">
      <div class="payment radius">
        <div class="payment-header">
          <h1>Customer Details</h1>
          <div class="logoposition">
            <img
              src="images/logo/logoTxtBlue.png"
              alt="logoimage"
              class="trilllogo"
            />
          </div>
          <p>Company Name</p>
          <div class="payment-value">
            <div class="value" id="company-name"></div>
          </div>        
        </div>      
        <div class="payment-method">
          <p>Previous Plan</p>
         <div class="value"  id="previous-plan"></div>
        </div>
<div class="payment-method">
          <p>Selected Plan</p>
         <div class="value"  id="selected-plan"></div>
        </div>
        <div class="display-error-msg mt-2" id="error-messg"></div>
         <div class="display-error-msg mt-2" id="cancellationFailed"></div>
          <div id="alert-cancel-subscription"></div>
   <div id="alerts-update"></div>
        
        <div class="createAccount">
      <button type="submit" data-toggle="modal" data-target="#updatePayment">Update plan</button>  
       <button type="submit" data-toggle="modal" data-target="#cancelPayment">Cancel plan</button>     
      </div>
      </div>
    </div>   
    
     
   <div class="modal fade" id="updatePayment" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Are you sure you want to update the plan?</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      
        <div class="card-details">
        <span
                id="card-info"
                class="font-bold text-xl text-gray-600"
              ></span><br>
            <span
                id="credit-card-last-four"
                class="font-bold text-base text-gray-600"
              ></span>
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="updateOldCustomer()">Pay</button>
      </div>
    </div>
  </div>
</div>
        
 <div class="modal fade" id="cancelPayment" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Are you you want to cancel the plan?</h5>
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="cancelSubscription()">Yes</button>
      </div>
    </div>
  </div>
</div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script type="text/javascript" src="js/createCustomer.js"></script>
    <script type="text/javascript" src="js/oldcustomer.js"></script>
   
  </body>
</html>
