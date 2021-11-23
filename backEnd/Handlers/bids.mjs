import { db } from "../config.mjs";
import { bidFormatter } from "../responseFormatter.mjs";
import { assignProject } from "../testAlgorithm.mjs";
var connection = db.get;
var projectNames = new Map();
const zip = (array1, array2) =>
  array1.map((element, index) => [element, array2[index]].flat());

//route to get the bids of all the teams
export function bids(server) {
  server.get("/Bids", function (req, res) {
    connection.query(
      `SELECT Bid.tid,
     group_concat(Bid.mgrade ORDER BY Bid.choice ASC),
     group_concat(Bid.pid ORDER BY Bid.choice ASC)
     FROM Bid GROUP BY Bid.tid`,
      function (error, bids, fields) {
        if (error) throw error;
        bids = bidFormatter(bids);
        var assigned = assignProject(bids);
        connection.query(
          `SELECT pid, title FROM Project WHERE active = TRUE`,
          function (error, projects, fields) {
            if (error) throw error;
            for (let project of projects) {
              projectNames.set(project.pid, project.title);
            }
            for (let i in bids) {
              bids[i].assigned = assigned[i];
              bids[i].projectNames = new Array(bids[i].pid.length);
              for (let j in bids[i].pid) {
                bids[i].projectNames[j] = projectNames.get(bids[i].pid[j]);
              }
              connection.query(
                `SELECT Team.teamname FROM Team where Team.tid = ${bids[i].tid}`,
                function (error, teamname, fields) {
                  if (error) throw error;
                  //console.log(teamname, "teamname");
                  bids[i].teamname = teamname[0].teamname;
                  bids[i].bids = zip(bids[i].mgrade, bids[i].projectNames);
                  bids[i].bids = zip(bids[i].bids, bids[i].pid);
                  delete bids[i].mgrade;
                  delete bids[i].pid;
                  delete bids[i].projectNames;
                  if (i == bids.length - 1) {
                    console.log(JSON.stringify(bids));
                    res.end(JSON.stringify(bids));
                  }
                }
              );
            }
          }
        );
      }
    );
  });
}
