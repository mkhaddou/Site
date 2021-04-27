var lastScrollTop = 0;
window.addEventListener("scroll", function(){
  //if(window.innerWidth>992){
     var st = window.pageYOffset || document.documentElement.scrollTop; // Credits: "https://github.com/qeremy/so/blob/master/so.dom.js#L426"
     if (st > lastScrollTop){
        // downscroll code
        document.getElementById("topnav").style.marginTop="-90px";
      //  document.getElementById("topnav").style.display="none";
     } else {
        // upscroll code
        document.getElementById("topnav").style.marginTop="initial";
        if (window.pageYOffset!==0) {
          if(window.innerWidth>992){
            document.getElementById("topnav").style.backgroundColor="white";
                      document.getElementById("topnav").style.borderBottom="none";
          }
          else {
            document.getElementById("topnav").style.backgroundColor="#fff";
          }


        }
        else{
          document.getElementById("topnav").style.backgroundColor="#fff";
          document.getElementById("topnav").style.borderBottom="1px solid black";
        }
  //document.getElementById("topnav").style.display="initial";
     }
     lastScrollTop = st <= 0 ? 0 : st; // For Mobile or negative scrolling
  // }
}, false);
