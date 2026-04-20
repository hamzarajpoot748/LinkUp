const express = require("express");
const app = express();
const http = require("http").createServer(app);
const io = require("socket.io")(http);

io.on("connection", (socket) => {
  console.log("User connected");

  socket.on("message", (msg) => {
  console.log("Received:", msg);
  io.emit("message", msg);
});

  socket.on("disconnect", () => {
    console.log("User disconnected");
  });
});

http.listen(3000, "0.0.0.0", () => {
  console.log("Server running on port 3000");
});