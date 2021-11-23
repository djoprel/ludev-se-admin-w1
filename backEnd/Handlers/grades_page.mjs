import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
var connection = db.get;

//route to get all projects
export function grades_page(server) {
  server.get("/grades_page", function (req, res) {
    connection.query(
      "SELECT User.uid, User.surname, Team.tid, Team.Teamname, Team.tgrade, User.BonusGrade1, User.BonusGrade2  FROM User Inner JOIN Team ON User.tid = Team.tid;",
      function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
        console.log(results);
      }
    );
  });
}
