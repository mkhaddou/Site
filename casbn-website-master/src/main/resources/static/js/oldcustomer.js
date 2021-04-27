var retrieveOldCustomerData = localStorage.getItem('oldCustomerData');
console.log('retrieveOldCustomerData',JSON.parse(retrieveOldCustomerData));
let displayData = JSON.parse(retrieveOldCustomerData)
 document.getElementById("selected-plan").innerHTML = displayData.selectedPlan
 document.getElementById("previous-plan").innerHTML = displayData.previousPlan
 document.getElementById("company-name").innerHTML  = displayData.companyName
 var cardlastFourDigits  = displayData.cardBrand;
 //display card details
if(cardlastFourDigits){
document.getElementById('card-info').innerHTML = "You will be charged with this card"
  document.getElementById('credit-card-last-four').innerText =
        capitalizeFirstLetter(cardlastFourDigits) +
       ' •••• ' +
        displayData.lastFour;
  function capitalizeFirstLetter(string) {
  let tempString = string.toUpperCase();
  return tempString;
}
}
 function updateOldCustomer(){
   return fetch('/update-subscription', {
         method: 'post',
         headers: {
           'Content-Type': 'application/json',
         },
         body: JSON.stringify({
         newPriceId:displayData.selectedPriceID,
         subscriptionId :displayData.subscriptionId
         }),
       })
         .then((response) => {
           return response.json()
         }).then((result)=>{
         if(result.error){
        let errorMessageModal= result.error
        document.getElementById("error-messg").innerHTML = errorMessageModal
         }else if(result.status === "active"){
       let x = document.getElementById("alerts-update");
               document.querySelector("#alerts-update").innerHTML = `You have successfully updated your subscription,to ${displayData.selectedPlan},please wait you will be redirected to homepage`
               x.className = "show";
               setTimeout(function(){ x.className = x.className.replace("show", ""); }, 7000);   
               
               //set invoice in local storage
         
               //localStorage.setItem("updatedInvoice",result.latest_invoice.expandedObject.invoice_pdf); 
               updateDatabase({result});
         }         
         console.log("response of old customer update subsciption",result);
         })
}
 function cancelSubscription(){
   return fetch('/cancel-subscription', {
         method: 'post',
         headers: {
           'Content-Type': 'application/json',
         },
         body: JSON.stringify({
         subscriptionId :displayData.subscriptionId
         }),
       })
         .then((response) => {
           return response.json()
         }).then((result)=>{
      if(result.error){
       let errorMessage= result.error
        document.getElementById("error-messg").innerHTML = errorMessage
         }else if(result.status==="canceled"){ 
           x = document.getElementById("alert-cancel-subscription");
               document.querySelector("#alert-cancel-subscription").innerHTML = "You have successfully cancelled you subscprition,You can exit this page now"
               x.className = "show";
               setTimeout(function(){ x.className = x.className.replace("show", ""); }, 7000);
               deleteInfoInDatabase();
         }       
         console.log("cancele subncscroipt",result);
         })
}

 function updateDatabase({result}){
   return fetch('/update', {
         method: 'post',
         headers: {
           'Content-Type': 'application/json',
         },
         body: JSON.stringify({
         selectedPlan:displayData.selectedPlan,
         NewSubscriptionId :result.id,
         companyId:displayData.companyID
         }),
       })
         .then((response) => {
           return response.json()
         }).then((result)=>{
      if(result.message){
      window.setTimeout(function(){

        // Move to a new location
        window.location.href="/";

    }, 7000);
         
         }
         console.log("update database == ",result);
         }).catch((error)=>{
            window.setTimeout(function(){

        // Move to a new location
        window.location.href="/";

    }, 7000);
         })
}
 function deleteInfoInDatabase(){
   return fetch('/delete', {
         method: 'post',
         headers: {
           'Content-Type': 'application/json',
         },
         body: JSON.stringify({
         
         companyId:displayData.companyID
         }),
       })
         .then((response) => {
           return response.json()
         }).then((result)=>{
      if(result.message){
        window.setTimeout(function(){

        // Move to a new location
        window.location.href="/";

    }, 7000);
         }   
        
         }).catch((error)=>{        
          window.setTimeout(function(){

        // Move to a new location
        window.location.href="/";

    }, 7000);
         })
         
}


