// ANGULARJS FILE.


// Call the app module
var app = angular.module('bikeShop', ['ngResource']);

// Like with jQuery, turbolinks would cause the Angular part of 
// the app not to work in some situations. 
// Added a work-around to our code.
$(document).on('ready page:load', function() {
  angular.bootstrap(document.body, ['bikeShop'])
});

// Orders factory (A AngularJs Service connecting to our server side DB) 
app.factory('models', ['$resource', function($resource) {
  var orders_model = $resource("/orders/:id.json", {id: "@id"});
  var products_model = $resource("/products/:id.json", {id: "@id"});
  
  var x = {
    orders: orders_model,
    products: products_model
  };
  return x;
}]);

// Access our app through the variable we defined 
// and access the controller we created in the views
app.controller('OrdersCtrl', ['$scope', 'models', function($scope, models) {
  // Here will be all the code belonging tothis controller

  // Connect model to the controller.
  $scope.orders = models.orders.query();
  $scope.products = models.products.query();

  // Fulfilled by app.factory
  //$scope.orders = [
  //  {id: 1, total: 24, product_id: 1, user_id: 1 },
  //  {id: 2, total: 7, product_id: 1 },
  //  {id: 3, total: 42, product_id: 1, user_id: 2 }  
  //];

  // Push new orders in the current orders.
  $scope.addOrder = function() {

    // If total zero it doesn't save.
    if(!$scope.newOrder.product_id || $scope.newOrder.total === ''){return;}

    // Makes a POST request to save new orders in the database. 
    order = models.orders.save($scope.newOrder, function() {
      recent_order = models.orders.get({id: order.id});
      $scope.orders.push(recent_order);
      $scope.newOrder = '';
    });
    
    // Default
    // $scope.orders.push($scope.newOrder);
  };

  // Delete orders
  $scope.deleteOrder = function(order) {
    models.orders.delete(order);
    $scope.orders.splice($scope.orders.indexOf(order), 1);
  };


}]);
