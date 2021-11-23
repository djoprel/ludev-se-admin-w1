import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
var connection = db.get;

//route to get all projects
export function users_page(server) {
  server.get("/users_page", function (req, res) {
    connection.query(
      "SELECT User.uid, User.surname, User.study, User.tid, Team.teamname FROM User Inner JOIN Team ON User.tid = Team.tid; ",
      function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
        console.log(results);
      }
    );
  });
}
