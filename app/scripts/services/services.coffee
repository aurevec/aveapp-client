angular.module('aveapp.services', ['aveapp.resource'])
  .factory('CountriesResource', ['AveappResource', (AveappResource) ->
    return AveappResource('/countries', 'country', 'countries')
  ])
  .factory('CompetitionsResource', ['$routeParams', 'AveappResource', ($routeParams, AveappResource) -> 
    return AveappResource('/countries/' +  $routeParams.countryId + '/competitions', 'competition')
  ])
  .factory('SeasonsResource', ['$routeParams', 'AveappResource', ($routeParams, AveappResource) -> 
    return AveappResource('/countries/' +  $routeParams.countryId + '/competitions/' + $routeParams.competitionId + '/seasons', 'season')
  ])  
  .factory('DaysResource', ['$routeParams', 'AveappResource', ($routeParams, AveappResource) -> 
    return AveappResource('/countries/' +  $routeParams.countryId + '/competitions/' + $routeParams.competitionId + '/seasons/' + $routeParams.seasonId + '/days', 'day')
  ]) 
  .factory('MatchesResource', ['$routeParams', 'AveappResource', ($routeParams, AveappResource) -> 
    return AveappResource('/countries/' +  $routeParams.countryId + '/competitions/' + $routeParams.competitionId + '/seasons/' + $routeParams.seasonId + '/days/' + $routeParams.dayId + '/matches', 'match', 'matches')
  ])   