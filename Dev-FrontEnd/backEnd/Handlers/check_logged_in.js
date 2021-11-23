export function check_logged_in(server) {
  server.get("/check_logged_in", function (req, res) {
    // var userid = req.session.userid;
    // console.log(userid);
    res.send("okido");
  });
}
