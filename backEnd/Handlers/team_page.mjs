import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
var connection = db.get;

//route to get all projects
export function team_page(server) {
  server.get("/team_page", function (req, res) {
    connection.query(
      "SELECT Team.tid, Team.Teamname, User.uid, User.surname, User.study, Team.pid, Bid.choice, Bid.motivation, Bid.mgrade FROM Team JOIN Bid ON Team.tid = Bid.tid JOIN User on Team.tid = User.tid ORDER BY Team.tid, User.uid, Bid.choice;",
      function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
        console.log(results);
      }
    );
    // res.connection.end();
  });
}
