angular.module('aveapp.services', ['aveapp.resource'])
  .factory('CountriesResource', ['AveappResource', (AveappResource) ->
    return AveappResource('/countries', 'country', 'countries')
  ])
  .factory('CompetitionsResource', ['AveappResource', (AveappResource) -> 
  	(url) ->
      return AveappResource(url, 'competition')
  ])