/* Add shadow to the bottom of navbar on scroll and remove when page is scrolled to the top */
window.onscroll = function(){addShadow()};
function addShadow(){
  if (document.body.scrollTop > 0 || document.documentElement.scrollTop > 0) {
    document.getElementById("topnav").classList.add('navbar-shadow');
  } else {
    document.getElementById("topnav").classList.remove('navbar-shadow');
  }
}
