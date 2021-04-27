function openNav() {
  if(document.getElementById("navbarResponsive").style.display === "none" || document.getElementById("navbarResponsive").style.display === ""){
    document.getElementById("navbarResponsive").style.display = "initial";
  }else if (document.getElementById("navbarResponsive").style.display !== "none" && document.getElementById("navbarResponsive").style.display !== "") {
    document.getElementById("navbarResponsive").style.display = "none"
  }
}

function closeNav() {
  document.getElementById("navbarResponsive").style.display = "none";
}
