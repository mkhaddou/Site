

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pay Us!</title>
     <link rel="icon" href="images/favicon.png">
    <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="css/global.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://js.stripe.com/v3/"></script>
    
    <style>
    .green{
    border:solid green 1px;
    }
     .error{
    border:solid red 1px;
    }

    </style>
</head>
<body>
<div class="container">
<div class="row">



</div>


</div>
    <div class="card">
        <div class="cardBg">
            <div class="left">
                <img src="images/logo/logoTxtBlue.png" class="img-logo-trillup" alt="">
            </div>
            <div class="right">
                <!-- <small class="small">4/4</small> -->
                <h3 class="head">Set up the payment!</h3>
                <br>
                
                <div class="container">
<div class="row">
<div class="col-md-12">
  <form id="payment-form"> 
   <div class="form-group">
    <label for="card-name" class="label-style">Card Name</label>
    <input type="text" required name="card-name" class="form-control" id="card-name" aria-describedby="emailHelp" placeholder="Card Name">
  
  </div>
  <div class="form-group">
                <label for="card-number" class="label-style">
                Credit or Debit
                </label> 
                <div id="card-number">
                </div>
                </div>
                <div class="form-group">
                <div class="row">
                
                <div class="col-md-6">
                
                  <label for="card-cvc" class="label-style">
                Cvc
                </label> 
                <div id="card-cvc">
                
                </div>
                </div>
                  <div class="col-md-6">
                    <label for="card-exp" class="label-style">
               Exp
                </label> 
                <div id="card-exp">
                </div>
                  
                  </div>
                </div>
                </div>
                
                  <div id="card-errors" class="card-style-errors"></div>
                  
               <p class="terms mt-2">By creating this account you agree to <strong>terms & conditions</strong></p>
               <div class="form-group">
                   <button class="btn btn-primary" type="submit">Pay Now</button>
               </div>
           
               </form>
</div>


</div>


</div>
              
        </div>
        </div>
    </div>
    
  <script src="js/stripess.js"></script>
  
</body>
</html>