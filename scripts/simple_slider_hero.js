$(function(){

    // Initializing the swiper plugin for the slider.
    // Read more here: http://idangero.us/swiper/api/
    
    var mySwiper = new Swiper ('#swiper-hero', {
        loop: true,
        pagination: {
        el: '.swiper-pagination',
        clickable: true
      },
         autoplay: 3000,
        navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev'
  }
    });
});

$(function(){

    // Initializing the swiper plugin for the slider.
    // Read more here: http://idangero.us/swiper/api/
    
    var mySwiper = new Swiper ('#swiper-projects', {
         loop: false,
        pagination: {
        el: '.swiper-pagination',
        clickable: true
      },
         autoplay: 3000,
        navigation: {
    nextEl: '.button-next',
    prevEl: '.button-prev'
  },
        breakpoints: {
        640: {
          slidesPerView: 1,
          spaceBetween: 20
        },
        768: {
          slidesPerView: 2,
          spaceBetween: 20
        },
        1024: {
          slidesPerView: 4,
          spaceBetween: 20
        }
        }
    });
});