'use strict'

angular.module('aveApp')
  .controller 'SeasonCtrl', ['$scope', '$routeParams', 'SeasonsResource', ($scope, $routeParams, SeasonsResource) ->
    SeasonsResource.all
      success: (seasons) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitionId = $routeParams.competitionId
        $scope.seasons = seasons
  ]
