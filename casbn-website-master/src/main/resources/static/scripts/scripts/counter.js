(function ($){
  $.fn.counter = function() {
    const $this = $(this),
    numberFrom = parseInt($this.attr('data-from')),
    numberTo = parseInt($this.attr('data-to')),
    delta = numberTo - numberFrom,
    deltaPositive = delta > 0 ? 1 : 0,
    time = parseInt($this.attr('data-time')),
    changeTime = 10;

    let currentNumber = numberFrom,
    value = delta*changeTime/time;
    var interval1;
    const changeNumber = () => {
      currentNumber += value;
      //checks if currentNumber reached numberTo
      (deltaPositive && currentNumber >= numberTo) || (!deltaPositive &&currentNumber<= numberTo) ? currentNumber=numberTo : currentNumber;
      this.text(parseInt(currentNumber));
      currentNumber == numberTo ? clearInterval(interval1) : currentNumber;
    }

    interval1 = setInterval(changeNumber,changeTime);
  }
}(jQuery));
var i=0;
$( document ).ready(function() {
    if(window.scrollY>1156 && window.scrollY<1854){
      countStart();
    }
});

const targetItem = document.querySelectorAll("#counters");
window.addEventListener("scroll", function() {
  targetItem.forEach(exElem => {
    var exPosition=exElem.getBoundingClientRect();
    if (exPosition.top >= 0 && exPosition.bottom <= window.innerHeight) {
      if(i===0){countStart();}
    }
  });
});

function countStart(){
  i=i+1;
  $('.count-up').counter();
  $('.count1').counter();
  $('.count2').counter();
  $('.count3').counter();
  $('.count4').counter();

  new WOW().init();

  setTimeout(function () {
    $('.count5').counter();
  }, 3000);
}
