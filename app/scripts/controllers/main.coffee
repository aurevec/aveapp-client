'use strict'

angular.module('aveApp')
.controller 'MainCtrl', ['$scope', 'ENV', ($scope, ENV) ->
    $scope.socketIoUrl = ENV.socketIoUrl
  ]
