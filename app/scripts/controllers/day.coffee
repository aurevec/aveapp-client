'use strict'

angular.module('aveApp')
  .controller 'DayCtrl', ['$scope', '$routeParams', 'AveappResource', ($scope, $routeParams, AveappResource) ->
    url = '/countries/' +  $routeParams.countryId + '/competitions/' + $routeParams.competitionId + '/seasons/' + $routeParams.seasonId + '/days'
    AveappResource(url, 'day').all
      success: (days) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitionId = $routeParams.competitionId
        $scope.seasonId = $routeParams.seasonId
        $scope.days = days
  ]
