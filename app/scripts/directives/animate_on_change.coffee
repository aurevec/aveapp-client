angular.module('aveapp.directives',  ['ngAnimate'])
  .directive "animateOnChange", ['$animate', ($animate) ->
    (scope, elem, attr) ->
      scope.$watch attr.animateOnChange, (nv, ov) ->
        unless nv is ov
          c = 'updated'
          $animate.addClass elem, c, ->
            $animate.removeClass elem, c
  ]