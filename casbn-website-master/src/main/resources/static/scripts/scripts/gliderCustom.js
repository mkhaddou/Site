new Glide('#glide1', {
  type: 'carousel',
  perView: 3,
  focusAt: 'center',
  gap: '0px',
  autoplay:2000,
  breakpoints: {
  	992: {
  		perView: 1
  	}
  }
}).mount();
