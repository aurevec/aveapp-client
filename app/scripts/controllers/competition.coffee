'use strict'

angular.module('aveApp')
  .controller 'CompetitionCtrl', ['$scope', 'CompetitionsResource', ($scope, CompetitionsResource) ->
    CompetitionsResource.all
      success: (competitions) ->
        $scope.competitions = competitions
  ]
