angular.module('aveapp.services', ['aveapp.resource'])
  .factory('CountriesResource', ['AveappResource', (AveappResource) ->
    return AveappResource('/countries', 'country', 'countries')
  ])
  .factory('CompetitionsResource', ['$routeParams', 'AveappResource', ($routeParams, AveappResource) -> 
    return AveappResource('/countries/' +  $routeParams.countryId + '/competitions', 'competition')
  ])