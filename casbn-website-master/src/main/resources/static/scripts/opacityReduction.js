//reduces the opacity of the selected element upon scrolling
$(document).ready(function(){
  $(window).scroll(function(){
      $('.header-bg').css("opacity", 1- $(window).scrollTop() /600)
  })
})
