'use strict'

angular.module('aveApp')
  .controller 'MatchCtrl', ['$scope', '$routeParams', 'AveappResource', ($scope, $routeParams, AveappResource) ->
    url = '/countries/' +  $routeParams.countryId + '/competitions/' + $routeParams.competitionId + '/seasons/' + $routeParams.seasonId + '/days/' + $routeParams.dayId + '/matches'
    AveappResource(url, 'match', 'matches').all
      success: (matches) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitionId = $routeParams.competitionId
        $scope.seasonId = $routeParams.seasonId
        $scope.dayId = $routeParams.dayId
        $scope.matches = matches
  ]
