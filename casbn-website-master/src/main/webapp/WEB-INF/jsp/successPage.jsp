<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
  <head>
  <link href="css/invoice2.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
     <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
      .logo-image-casbn{
          border-radius: 200px;
    height: 200px;
    width: 200px;
    background: #F8FAF5;
    margin: 0 auto;
      }
      .hide-button{
      display:none;
      }
    </style>
    <body>
    <div id="invoice-errormsg"></div>
      <div onclick="downloadPdf()" id="pdf-button" class="pdf">
        <div class="invoice-pdf">
          Download Invoice as Pdf
          <button>
            <i class="fa fa-file-pdf-o" aria-hidden="true"></i>
          </button>
        </div>
      </div>
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <img class="logo-image-casbn" src="images/casbn final logo_-02.png"></img>
      </div>
        <h1>Success</h1> 
        <p>Payment was successfull;<br/> we'll be in touch shortly!</p>
        <p>Thank you</p>
      </div>
      <script type="text/javascript" src="js/removeInvoice.js"></script>
    </body>
</html>