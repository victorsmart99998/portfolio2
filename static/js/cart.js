/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */

 AOS.init();

var acc =
document.getElementsByClassName("accordion-button");
var i;
for (i = 0; i < acc.length; i++){
     acc[i].addEventListener("click", function(){
             this.classList.toggle("active");

             var panel =
             this.nextElementSibling;
                 if (panel.style.display === "block"){
                      panel.style.display = "none"; }
                      else{
                     panel.style.display = "block";
                 }
     });
}