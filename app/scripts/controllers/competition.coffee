'use strict'

angular.module('aveApp')
  .controller 'CompetitionCtrl', ['$scope', '$routeParams', 'CompetitionsResource', ($scope, $routeParams, CompetitionsResource) ->
    CompetitionsResource.all
      success: (competitions) ->
        $scope.countryId = $routeParams.countryId
        $scope.competitions = competitions
  ]
