---
---

Manyanya = angular.module 'Manyanya', [], ['$interpolateProvider', '$locationProvider', ($interpolateProvider, $locationProvider)->
  $interpolateProvider.startSymbol('//')
  $interpolateProvider.endSymbol('//')

  # $locationProvider.html5Mode enabled: true, requireBase: false
]

Manyanya.controller 'AppCtrl', ['$scope', '$location', ($scope, $location)->
  $scope.signUpTab = $location.$$hash || 'parent'
]

Manyanya.directive 'next', ['$location', '$timeout', ($location, $timeout)->
  restrict: 'A'
  scope:
    next: '@'
  
  link: (scope, element)->
    if scope.next then element.bind 'scroll', ->
      if (element[0].scrollHeight - element[0].scrollTop) == element[0].offsetHeight
        $timeout ->
          window.location = $location.protocol() + '://' + location.host + '/' + scope.next
        , 250
]