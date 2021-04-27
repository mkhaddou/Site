const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const page_type = urlParams.get('PriceID')
const getPriceID = page_type;
localStorage.setItem("PriceID",getPriceID );
localStorage.removeItem("companyName");
localStorage.removeItem("companyId");
localStorage.removeItem("customerID");
 function removePriceID(){
 localStorage.removeItem("PriceID");
 }
 var selectedPriceId = localStorage.getItem("PriceID");
 document.getElementById("redirect-to-register").onclick = function () {
        location.href = "https://app.casbn.com/#/auth/register";
    };
function provideEmail() {
    var billingEmail = document.querySelector('#email').value;
    var workspaceName = document.querySelector('#workspace').value;
    localStorage.setItem("companyName",workspaceName );
       return fetch('/api/getCompany', {
         method: 'post',
         headers: {
           'Content-Type': 'application/json',
         },
         body: JSON.stringify({
          selectedPriceId:selectedPriceId,
           email: billingEmail,
           companyName:workspaceName
         }),
       })
         .then((response) => {
           return response.json()
         })
         .then((result) => {
           console.log(result,"api response");
           if(result.message){
            var x = document.getElementById("errormessage");
               var errorMsg=result.message
               document.querySelector("#errormessage").innerHTML = errorMsg
               x.className = "show";
               setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
               //provide a register button for the user to register
               registerButton();
           }else if(result.companyID && result.subscriptionId){
           ///store the value in local storage,for further process for old customer and call the updateoldcustomer method here
          // updateOldCustomer({
           
           
           
          // })
          //For Old customer
          redirectToDisplayDetails({
          companyID:result.companyID,
          subscriptionId:result.subscriptionId,
          selectedPlan :result.selectedPlan,
          previousPlan:result.previousPlan,
          companyName:result.companyName,
          cardBrand: result.cardBrand,
          lastFour:result.lastFour
          });
        
           }else if(result.companyID){
            createCustomer();
            localStorage.setItem("companyId",result.companyID);
           }
            return result;
         });    
     }
     function createCustomer(){
        var billingEmail = document.querySelector('#email').value;
        var name = document.querySelector('#workspace').value;
           return fetch('/create-customer', {
             method: 'post',
             headers: {
               'Content-Type': 'application/json',
             },
             body: JSON.stringify({
               email: billingEmail,
               name:name
             }),
           })
           .then((response) => {
            return response.json()
          })
          .then((result)=>{
          //redirect to payment form
          console.log(result,"createcustomerrespons");
           localStorage.setItem("customerID",result.id );
           window.location.href = "/paymentForm"
        })
     }
     function registerButton(){
        var regButton = document.getElementById("register-button");
        regButton.classList.remove('hide-button');
     }
     let signupForm = document.getElementById('signup-form');
     signupForm.addEventListener('submit', function (evt) {
       evt.preventDefault();
       // Create Stripe customer
       provideEmail();
     });  
  function handleRequiresPaymentMethod({
  subscription,
  paymentMethodId,
  priceId,
}) {
  if (subscription.status === 'active') {
    // subscription is active, no customer actions required.
    return { subscription, priceId, paymentMethodId };
  } else if (
    subscription.latest_invoice.payment_intent.status ===
    'requires_payment_method'
  ) {
    // Using localStorage to store the state of the retry here
    // (feel free to replace with what you prefer)
    // Store the latest invoice ID and status
    localStorage.setItem('latestInvoiceId', subscription.latest_invoice.id);
    localStorage.setItem(
      'latestInvoicePaymentIntentStatus',
      subscription.latest_invoice.payment_intent.status
    );
    throw { error: { message: 'Your card was declined.' } };
  } else {
    return { subscription, priceId, paymentMethodId };
  }
}

function redirectToDisplayDetails({companyID,subscriptionId,selectedPlan,previousPlan,companyName,cardBrand,lastFour}){
let oldCustomerData = {
        "companyID":companyID,
        "subscriptionId":subscriptionId,
        "selectedPlan":selectedPlan,
        "previousPlan":previousPlan,
        "companyName":companyName,
        "selectedPriceID":selectedPriceId,
        "cardBrand":cardBrand,
        "lastFour":lastFour
}
localStorage.setItem('oldCustomerData', JSON.stringify(oldCustomerData));
window.location.href = "/oldcustomer";
}
