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

  // Set carousel options
  $('.carousel').carousel({
    interval: 8000
  });

});



