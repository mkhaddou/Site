var x=document.querySelectorAll('#generalQuestions .card a i');

x.forEach(function (item, idx) {
   item.addEventListener('click', function () {
     if (item.classList.contains('fa-plus')) {

        x.forEach((y, i) => {
          if(y.classList.contains('fa-minus')){
            y.classList.remove('fa-minus');
            y.classList.add('fa-plus');
          }
        });
        item.classList.remove('fa-plus');
        item.classList.add('fa-minus');
     }
     else {
       item.classList.remove('fa-minus');
       item.classList.add('fa-plus');
     }
   });
});

var a=document.querySelectorAll('#paymentQuestions .card a i');
a.forEach(function(it, ix){
  it.addEventListener('click',function(){
    if (it.classList.contains('fa-plus')) {

       a.forEach((b, j) => {
         if(b.classList.contains('fa-minus')){
           b.classList.remove('fa-minus');
           b.classList.add('fa-plus');
         }
       });
       it.classList.remove('fa-plus');
       it.classList.add('fa-minus');
    }else {
      it.classList.remove('fa-minus');
      it.classList.add('fa-plus');
    }
  });
});
