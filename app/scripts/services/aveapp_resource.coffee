angular.module('aveapp.resource', ['ngResource'])
  .config(['$httpProvider', ($httpProvider) ->
    $httpProvider.defaults.headers.common['Accept'] = 'application/vnd.aveapp+json;version=1'
    $httpProvider.defaults.headers.common['Content-Type'] = 'application/json; charset=UTF-8'  
  ])
  .factory('AveappResource', ['$http', 'ENV', ($http, ENV) ->
    (url, resource, plural) ->
      baseUrl = ENV.apiEndpoint + url
      plural ||= "#{resource}s"

      _extractOpts = (opts = {}) ->
        success = opts.success || (() ->)
        error = opts.error || success
        delete opts.success
        delete opts.error
        {
          success: success
          error: error
          params: opts
        }

      return {
        all: (opts) ->
          opts = _extractOpts(opts)
          $http.get(baseUrl, { params: opts.params }).
            success((data) ->
              opts.success(data[plural], data.meta)
            ).
            error(opts.error)

        one: (id, opts) ->
          opts = _extractOpts(opts)
          $http.get("#{baseUrl}/#{id}", { params: opts.params }).
            success((data) ->
              opts.success(data[resource], data.meta)
            ).
            error(opts.error)

        save: (object, opts) ->
          opts = _extractOpts(opts)
          h = {}
          h[resource] = object
          if object.id?
            $http.put("#{baseUrl}/#{object.id}", h).
              success((data) ->
                opts.success(data[resource], data.meta)
              ).
              error(opts.error)
          else
            $http.post(baseUrl, h).
              success((data) ->
                opts.success(data[resource], data.meta)
              ).
              error(opts.error)

        delete: (id, opts) ->
          opts = _extractOpts(opts)
          $http.delete("#{baseUrl}/#{id}").
            success(opts.success).
            error(opts.error)
      }
  ])