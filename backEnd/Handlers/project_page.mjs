import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
var connection = db.get;

//route to get all projects
export function project_page(server) {
  server.get("/project_page", function (req, res) {
    connection.query(
      "SELECT pid, title, client, descr, amount_available, max_available FROM Project;",
      function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
        console.log(results);
      }
    );
    // res.connection.end();
  });
}
