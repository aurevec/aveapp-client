window.realtime =
  connect: ->
    window.socket = io.connect("http://localhost:8081")
    window.socket.on "rt-change", (message) ->
      # publish the change on the client side, the channel == the resource
      console.log message

window.realtime.connect()