import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
import { assignRandomProject } from "../testAlgorithm.mjs";
var connection = db.get;

//route to get all projects
export function projects(server) {
  server.get("/Projects", function (req, res) {
    connection.query(
      "select * from Project WHERE Project.active = TRUE",
      function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
        console.log(results, "pid");
        var assignedFinal = assignRandomProject(results);
      }
    );
    // res.connection.end();
  });
}
