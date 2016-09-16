$(document).on('turbolinks:load', function() {
  // JavaScript in here will be loaded when the page is ready

  // Update raty score
  // Raty ratings plugin.
  // See jquery.raty.js file.
  $('.rating').raty({
    path: ' /assets', 
    scoreName: 'comment[rating]' 
  });

  $('.rated').raty({ 
    path: ' /assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
      }
    });  

  // Image Zoom Effect for the product pictures using elevate zoom.
  // See jquery.elevateZoom-3.0.8.min.js file.
  $('.img-zoom').elevateZoom({
    // Inner Zoom
    zoomType : "inner", 
    cursor: "crosshair" 

    // Lens Zoom
    //zoomType  : "lens", 
    //lensShape : "round", 
    //lensSize : 200

  });

});

//When the document is ready the following actions will take place.
$(document).ready(function() {
  
  //Creates smooth scrolling effect for menus.
  var $root = $('html, body');
  $('.navbar-nav a').click(function() {
    var href = $.attr(this, 'href');
    $root.animate({
      scrollTop: $(href).offset().top
      }, 500, function () {
        window.location.hash = href;
        });
    return false;
    });
  
});

