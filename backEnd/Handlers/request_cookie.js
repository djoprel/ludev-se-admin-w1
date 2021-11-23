export function request_cookie(server) {
  server.get("/cookie", function (req, res) {
    var name = req.session.name;
    res.send(name);
  });
}
