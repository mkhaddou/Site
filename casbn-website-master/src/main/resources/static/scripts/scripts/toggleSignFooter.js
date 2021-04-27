var f=document.querySelectorAll('footer .card-header h2 a i');

f.forEach(function (ik, idf) {
   ik.addEventListener('click', function () {
     if (ik.classList.contains('fa-plus')) {

        f.forEach((g, i) => {
          if(g.classList.contains('fa-minus')){
            g.classList.remove('fa-minus');
            g.classList.add('fa-plus');
          }
        });
        ik.classList.remove('fa-plus');
        ik.classList.add('fa-minus');
     }
     else {
       ik.classList.remove('fa-minus');
       ik.classList.add('fa-plus');
     }
   });
});
