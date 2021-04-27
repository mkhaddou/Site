
let stripe = Stripe('pk_test_51HA0vSHVttoTXn1EeAUOLEuiqGeT4WrVBKsoibL6InLSUo0UDmzDwkS2OYPcpDW4xJVFUfp5ruhTWE4nHyEBgCGQ0049zJtJkJ');
let elements = stripe.elements();
function stripeElements(publishableKey) {
  if (document.getElementById('card-element')) {
    let elements = stripe.elements();
    // Card Element styles
    let style = {
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
    card = elements.create('card', { style: style });
    card.mount('#card-number');
    card.mount('#exp-month'); 
    card.mount('#exp-year');
    card.mount('#cvc');
  }
  let signupForm = document.getElementById('signup-form');
  if (signupForm) {
    signupForm.addEventListener('submit', function (evt) {
      evt.preventDefault();
      changeLoadingState(true);
      // Create customer
      createCustomer().then((result) => {
        customer = result.customer;

        window.location.href = '/prices.html?customerId=' + customer.id;
      });
    });
  }

  let paymentForm = document.getElementById('payment-form');
  if (paymentForm) {
    paymentForm.addEventListener('submit', function (evt) {
      evt.preventDefault();
      

      // If a previous payment was attempted, get the lastest invoice
     
createPaymentMethod({card});
     
    });
  }
}
 let paymentForm = document.getElementById('payment-form');
   stripe = Stripe(publishableKey);
  if (paymentForm) {
    paymentForm.addEventListener('submit', function (evt) {
      evt.preventDefault();
     console.log(card);
 createPaymentMethod({ card });
    
    
    });
  }

function createPaymentMethod({ card, isPaymentRetry, invoiceId }) {
  const params = new URLSearchParams(document.location.search.substring(1));
  const customerId = params.get('customerId');
  // Set up payment method for recurring usage
  let billingName = document.querySelector('#name').value;

  let priceId = document.getElementById('priceId').innerHTML.toUpperCase();

  stripe
    .createPaymentMethod({
      type: 'card',
      card: card,
      billing_details: {
        name: billingName,
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
          // Create the subscription
          createSubscription({
            customerId: customerId,
            paymentMethodId: result.paymentMethod.id,
            priceId: priceId,
          });
        }
      }
    });
}




