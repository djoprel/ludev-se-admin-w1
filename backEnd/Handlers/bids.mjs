import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
import { bidFormatter } from "../responseFormatter.mjs";
import { assignProject } from "../testAlgorithm.mjs";
var connection = db.get;

//route to get the bids of all the teams
export function bids(server) {
  server.get("/Bids", function (req, res) {
    connection.query(
      `SELECT Bid.tid,
     group_concat(Bid.mgrade ORDER BY Bid.choice ASC),
     group_concat(Bid.pid ORDER BY Bid.choice ASC)
     FROM Bid GROUP BY Bid.tid`,
      function (error, bids, fields) {
        console.log(bids, "bids");
        if (error) throw error;
        bids = bidFormatter(bids);
        var assigned = assignProject(bids);
        for (let i in bids) {
          console.log("team: " + bids[i]["tid"] + " Project: " + assigned[i]);
        }
        res.end(JSON.stringify(assigned));
      }
    );
  });
}
