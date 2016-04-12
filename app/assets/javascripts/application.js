// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require main
//= require vendor/slick
//= require vendor/modernizr-2.8.3.min
//= require vendor/jquery.stickyNavbar.min
//= require vendor/jquery.magnific.min
//= require_self


$(document).ready( function() {

    $('.responsive-carosel').slick({
      dots: false,
      infinite: false,
      variableWidth: true,
      speed: 300,
      slidesToShow: 1
    });

     $('.responsive-testimonials').slick({
      dots: true,
      infinite: false,
      speed: 300,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      adaptiveHeight:true,
      autoplay: true,
      autoplaySpeed: 2000
    });

    $('.nav').stickyNavbar();

    $('.gallery-link').magnificPopup({
        type:'image',   
        gallery:{
            enabled:true
        },
        mainClass: 'mfp-with-zoom', // this class is for CSS animation below
        zoom: {
            enabled: true, // By default it's false, so don't forget to enable it
            duration: 300, // duration of the effect, in milliseconds
            easing: 'ease-in-out', // CSS transition easing function
            opener: function(openerElement) {
                // openerElement is the element on which popup was initialized, in this case its <a> tag
                // you don't need to add "opener" option if this code matches your needs, it's defailt one.
                return openerElement.is('img') ? openerElement : openerElement.find('img');
            }
        }

    });
});

