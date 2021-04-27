var stripe = Stripe('pk_live_51HA0vSHVttoTXn1EGSNUn9XyaiytAeXKVAlNTv9yQ9JncQvvwLELMKx9EpLoGUFJkxKpo0o7qycrCvWMHfgfCL1R00v8kuEoMM');
var elements = stripe.elements();

    var style = {
      base: {
        fontSize: '16px',
        color: '#32325d',
        fontFamily:
          '-apple-system, BlinkMacSystemFont, Segoe UI, Roboto, sans-serif',
        fontSmoothing: 'antialiased',
        '::placeholder': {
          color: '#a0aec0',
        },
      },
    };

var card = elements.create('cardNumber', { 

classes:{

base:"form-control",
focus:"green",
invalid:"error"
},
style:{
base:{

color:"green"
}

}
});
var cvc = elements.create('cardCvc', { 

classes:{

base:"form-control",
focus:"green",
invalid:"error"
},
style:{
base:{

color:"green"
}

}
});
var exp = elements.create('cardExpiry', { 

classes:{

base:"form-control",
focus:"green",
invalid:"error"
},
style:{
base:{

color:"green"
}

}
});
card.mount('#card-number');
cvc.mount('#card-cvc');
exp.mount('#card-exp');
  card.on('change', function (event) {
      displayError(event);
    });
function createPaymentMethod({ card, isPaymentRetry, invoiceId }) {
  const customerId = localStorage.getItem("customerID");
  // Set up payment method for recurring usage
  var priceId = localStorage.getItem("PriceID");
  var cardName = document.getElementById("card-name").value;
  stripe
    .createPaymentMethod({
      type: "card",
      card: card,
      billing_details: {
        name: cardName,
      },
    })
    .then((result) => {
      if (result.error) {
        displayError(result);
      } else {
        if (isPaymentRetry) {
          // Update the payment method and retry invoice payment
          retryInvoiceWithNewPaymentMethod({
            customerId: customerId,
            paymentMethodId: result.paymentMethod.id,
            invoiceId: invoiceId,
            priceId: priceId,
          });
        } else {
          createSubscription({
            customerId: customerId,
            paymentMethodId: result.paymentMethod.id,
            priceId: priceId,
          });
        }
        console.log("create-subscription method", result);
        ///set paymentMethodId in local storage;
        localStorage.setItem("paymentMethodID", result.paymentMethod.id);
      }
    });
}
var form = document.getElementById('payment-form');
form.addEventListener('submit', function (ev) {
  ev.preventDefault();
    const latestInvoicePaymentIntentStatus = localStorage.getItem(
        'latestInvoicePaymentIntentStatus'
      );
       if (latestInvoicePaymentIntentStatus === 'requires_payment_method') {
        const invoiceId = localStorage.getItem('latestInvoiceId');
        const isPaymentRetry = true;
        // create new payment method & retry payment on invoice with new payment method
        createPaymentMethod({
          card,
          isPaymentRetry,
          invoiceId,
        });
      }else{
  createPaymentMethod({card});
  }
})
//calling createsubscription function
function createSubscription({ customerId, paymentMethodId, priceId }) {
  return (
    fetch('/create-subscription', {
      method: 'post',
      headers: {
        'Content-type': 'application/json',
      },
      body: JSON.stringify({
        customerId: customerId,
        paymentMethodId: paymentMethodId,
        priceId: priceId,
      }),
    })
      .then((response) => {
        return response.json();
      })
      // If the card is declined, display an error to the user.
      .then((result) => {
        if (result.error) {
          // The card had an error when trying to attach it to a customer.
           displayErrorTwo(result);
          throw result;
        }
        return result;
      })
      // Normalize the result to contain the object returned by Stripe.
      // Add the additional details we need.
      .then((result) => {
     
      console.log(result,"create-subcription new api");
        return {
          paymentMethodId: paymentMethodId,
          priceId: priceId,
          subscription: result,
        };        
      })
      .then(handlePaymentThatRequiresCustomerAction)
       .then(handleRequiresPaymentMethod)
       .then(onSubscriptionComplete)
      .catch((error) => {
        // An error has happened. Display the failure to the user here.
        // We utilize the HTML element we created.
        console.log(error,"error");
       
      })
  );
}
function retryInvoiceWithNewPaymentMethod({
  customerId,
  paymentMethodId,
  invoiceId,
  priceId
}) {
  return (
    fetch('/retry-invoice', {
      method: 'post',
      headers: {
        'Content-type': 'application/json',
      },
      body: JSON.stringify({
        customerId: customerId,
        paymentMethodId: paymentMethodId,
        invoiceId: invoiceId,
      }),
    })
      .then((response) => {
        return response.json();
      })
      // If the card is declined, display an error to the user.
      .then((result) => {
        if (result.error) {
          // The card had an error when trying to attach it to a customer.
          throw result;
        }
        return result;
      })
      // Normalize the result to contain the object returned by Stripe.
      // Add the additional details we need.
      .then((result) => {
        return {
          // Use the Stripe 'object' property on the
          // returned result to understand what object is returned.
          invoice: result,
          paymentMethodId: paymentMethodId,
          priceId: priceId,
          isRetry: true,
        };
      })
      // Some payment methods require a customer to be on session
      // to complete the payment process. Check the status of the
      // payment intent to handle these actions.
      .then(handlePaymentThatRequiresCustomerAction)
      // No more actions required. Provision your service for the user.
     
      //.then(onSubscriptionComplete)
      .catch((error) => {
        // An error has happened. Display the failure to the user here.
        // We utilize the HTML element we created.
        displayError(error);
      })
  );
}
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
function handlePaymentThatRequiresCustomerAction({
  subscription,
  invoice,
  priceId,
  paymentMethodId,
  isRetry,
}) {
  if (subscription && subscription.status === 'active') {
    // Subscription is active, no customer actions required.
    return { subscription, priceId, paymentMethodId };
  }

  // If it's a first payment attempt, the payment intent is on the subscription latest invoice.
  // If it's a retry, the payment intent will be on the invoice itself.
  let paymentIntent = invoice ? invoice.payment_intent : subscription.latest_invoice.payment_intent;

  if (
    paymentIntent.status === 'requires_action' ||
    (isRetry === true && paymentIntent.status === 'requires_payment_method')
  ) {
    return stripe
      .confirmCardPayment(paymentIntent.client_secret, {
        payment_method: paymentMethodId,
      })
      .then((result) => {
        if (result.error) {
          // Start code flow to handle updating the payment details.
          // Display error message in your UI.
          // The card was declined (i.e. insufficient funds, card has expired, etc).
          throw result;
        } else {
          if (result.paymentIntent.status === 'succeeded') {
            // Show a success message to your customer.
            return {
              priceId: priceId,
              subscription: subscription,
              invoice: invoice,
              paymentMethodId: paymentMethodId,
            };
          }
        }
      })
      .catch((error) => {
        displayError(error);
      });
  } else {
    // No customer action needed.
    return { subscription, priceId, paymentMethodId };
  }
}
function onSubscriptionComplete(result) {
   localStorage.setItem("invoice",result.subscription.latest_invoice.expandedObject.invoice_pdf);
  //console.log(obj,"NOW CHECK");
  // Payment was successful. Provision access to your service.
  // Remove invoice from localstorage because payment is now complete.
   localStorage.removeItem("PriceID");
   //localStorage.removeItem("paymentMethodID");
   //localStorage.removeItem("customerID");
 
  // Change your UI to show a success message to your customer.
   saveInfoToDatabase({result});
  // Call your backend to grant access to your service based on
  // the product your customer subscribed to.
  // Get the product by using result.subscription.price.product
}

function displayError(event) {
  let displayError = document.getElementById('card-errors');
  if (event.error) {
    displayError.textContent = event.error.message;
  } else {
    displayError.textContent = '';
  }
}
function displayErrorTwo(event) {
  let displayError = document.getElementById('card-errors');
  if (event.error) {
    displayError.textContent = event.error;
  } else {
    displayError.textContent = '';
  }
}
//function clearCache() {
  //localStorage.clear();
//}

function saveInfoToDatabase({result}){
 var company_name= localStorage.getItem("companyName");
var company_Id = localStorage.getItem("companyId");
var customer_Id = localStorage.getItem("customerID");
var paymentMethod_ID = localStorage.getItem("paymentMethodID");
    console.log(company_name,"comapntnae");
       return fetch('/save', {
             method: 'post',
             headers: {
               'Content-Type': 'application/json',
             },
             body: JSON.stringify({
              companyName : company_name,
              companyId: company_Id,
              productId:result.subscription.items.data[0].price.product.id,
              subscriptionId:result.subscription.id,
              paymentMethodId:paymentMethod_ID,
               customerId:customer_Id
             }),
           })
             .then((response) => {
               return response.json()
            }).then((result)=>{
               window.location.href="/successpage";
             console.log("checking in save api",result);
             }).catch((error)=>{
             
             window.location.href="/successpage";
             })
    }


