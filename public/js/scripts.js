angular.module('app', ['ngResource'])

.factory('Cliente', function($resource) {
  return $resource('/api/clientes/:id');
})

.controller('ClienteCtrl', function($scope, Cliente) {
  $scope.items = Cliente.query();
});