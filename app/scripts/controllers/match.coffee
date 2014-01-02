'use strict'

angular.module('aveApp')
  .controller 'MatchCtrl', ['$scope', '$routeParams', 'MatchesResource', ($scope, $routeParams, MatchesResource) ->
    MatchesResource.all
      success: (matches) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitionId = $routeParams.competitionId
        $scope.seasonId = $routeParams.seasonId
        $scope.dayId = $routeParams.dayId
        $scope.matches = matches
  ]
