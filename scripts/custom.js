$('.carousel').carousel({
  interval: 4000
});
// Instantiate the Bootstrap carousel
$('#LogosCarousel').carousel({
  interval: 3000,
    loop: false
});

$('.logos .carousel-item').each(function() {
    var minPerSlide = 4;
    var next = $(this).next();
    if (!next.length) {
        next = $(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));

    for (var i = 0; i < minPerSlide; i++) {
        next = next.next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }

        next.children(':first-child').clone().appendTo($(this));
    }
});

/// navigation
    $(document).ready(function () {
        var url = window.location;
        $('ul.navbar-nav a[href="'+ url +'"]').addClass('active');
        $('ul.navbar-nav a').filter(function() {
             return this.href == url;
        }).addClass('active');
    });