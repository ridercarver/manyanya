---
---

Manyanya = angular.module 'Manyanya', [], ['$interpolateProvider', '$locationProvider', ($interpolateProvider, $locationProvider)->
  $interpolateProvider.startSymbol('//')
  $interpolateProvider.endSymbol('//')

  $locationProvider.html5Mode enabled: true, requireBase: false
]

Manyanya.controller 'AppCtrl', ['$scope', '$location', ($scope, $location)->
  $scope.signUpTab = $location.$$hash || 'parent'
]