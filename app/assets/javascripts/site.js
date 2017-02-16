// Load raty plugin.
// Added here as it is used by the "new comment AJAX call."
// See "create.js.erb file."
var refreshRating = function() {
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
};  


// Added ajaxSuccess to the $(document)... function, like so,
// when "create.js.erb" is succesful with new comment.
$(document).on('turbolinks:load ajaxSuccess', function() {
  // JavaScript in here will be loaded when the page is ready

  // Laod above raty plugin.
  refreshRating();

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



