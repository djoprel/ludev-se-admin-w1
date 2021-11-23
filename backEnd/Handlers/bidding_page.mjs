import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
var connection = db.get;

//route to get all projects
export function bidding_page(server) {
  server.get("/bidding_page", function (req, res) {
    connection.query(
      "SELECT Team.tid, Team.Teamname, Bid.choice, Bid.motivation, Bid.mgrade FROM Team INNER JOIN Bid ON Team.tid = Bid.tid ORDER BY Team.tid, Bid.choice;",
      function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
        console.log(results);
      }
    );
    // res.connection.end();
  });
}
