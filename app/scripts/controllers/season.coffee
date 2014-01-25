'use strict'

angular.module('aveApp')
  .controller 'SeasonCtrl', ['$scope', '$routeParams', 'AveappResource', ($scope, $routeParams, AveappResource) ->
    url = '/countries/' +  $routeParams.countryId + '/competitions/' + $routeParams.competitionId + '/seasons'
    AveappResource(url, 'season').all
      success: (seasons) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitionId = $routeParams.competitionId
        $scope.seasons = seasons
  ]
