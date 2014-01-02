'use strict'

angular.module('aveApp')
  .controller 'DayCtrl', ['$scope', '$routeParams', 'DaysResource', ($scope, $routeParams, DaysResource) ->
    DaysResource.all
      success: (days) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitionId = $routeParams.competitionId
        $scope.seasonId = $routeParams.seasonId
        $scope.days = days
  ]
