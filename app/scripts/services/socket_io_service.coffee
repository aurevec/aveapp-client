angular.module('aveapp.services', [])
  .factory "socket", ($rootScope) ->

    socket = io.connect('http://localhost:8081')

    return {
      on: (eventName, callback) ->
        socket.on eventName, ->
          args = arguments
          $rootScope.$apply ->
            callback.apply socket, args
    }