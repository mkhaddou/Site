var retrieveInvoice  = localStorage.getItem("invoice");
      if(retrieveInvoice){
     
        function downloadPdf(){        
        location.href=`${retrieveInvoice}`
         setTimeout(delayButtonRemove, 4000);     
      clearCache();    
        }
        }else{        
          document.getElementById("pdf-button").classList.add("hide-button");
        }   
            function clearCache() {
  localStorage.clear();
}   
function delayButtonRemove(){
 document.getElementById("pdf-button").classList.add("hide-button");
}