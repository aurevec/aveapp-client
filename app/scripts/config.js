"use strict";

 angular.module("config", [])

.constant("ENV", {
  "name": "development",
  "apiEndpoint": "http://aveapp.dev/api",
  "socketIoUrl": "http://localhost:8081/socket.io/socket.io.js"
})

;