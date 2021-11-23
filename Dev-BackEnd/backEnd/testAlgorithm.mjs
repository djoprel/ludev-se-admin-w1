/**
 * Edge case 1: Project can be assigned multiple times.
 *      Give duplicate a new id.
 * Edge case 2: Group did not get project of preference.
 *      Assign random available project.
 * Edge case 3: Admin assigns project to group by hand.
 *      Front-end pick-up.
 *      Filter out project and group/team using pid and tid.
 */

var firstGrade;
var secondGrade;
var assignBid;
var count;
var bids;
var projectlist;
var temp1;
var temp2;

//import { projects } from "./Handlers/projects.mjs";
export function assignProject(_bids, server) {
  bids = _bids;
  assignBid = new Array(bids.length).fill(0);
  count = new Array(bids.length).fill(0);
  var done = false;
  while (!done) {
    done = true;
    for (var team in bids) {
      if (assignBid[team] == 0) assignBid[team] = bids[team]["pid"][0];
      for (var key in bids)
        if (assignBid[team] == assignBid[key] && team != key) {
          done = false;
          whichGrade(team, key);
          if (firstGrade >= secondGrade) nextProject(key, assignBid);
          else nextProject(team, assignBid);
        } //if
    } //for
  } //while
  console.log(assignBid);
  return assignBid;
} //assignProject

function whichGrade(team, key) {
  if (count[team] == 0) firstGrade = bids[team]["mgrade"][0];
  if (count[team] == 1) firstGrade = bids[team]["mgrade"][1];
  if (count[team] == 2) firstGrade = bids[team]["mgrade"][2];
  if (count[team] > 2) firstGrade = 0;
  if (count[key] == 0) secondGrade = bids[key]["mgrade"][0];
  if (count[key] == 1) secondGrade = bids[key]["mgrade"][1];
  if (count[key] == 2) secondGrade = bids[key]["mgrade"][2];
  if (count[key] > 2) secondGrade = 0;
} //whichGrade

function nextProject(theTeam, assignBid) {
  if (count[theTeam] == 0) assignBid[theTeam] = bids[theTeam]["pid"][1];
  if (count[theTeam] == 1) assignBid[theTeam] = bids[theTeam]["pid"][2];
  if (count[theTeam] > 1) assignBid[theTeam] = -1;
  count[theTeam]++;
} //nextProject

export function projects(server) {//} assigned) {
  server.get("/Projects", function (req, res) {
    connection.query(
      "select * from Project WHERE Project.active = TRUE",
      function (error, results, fields) {
        if (error) throw error;
        res.end(JSON.stringify(results));
        console.log(results);
      }
    );
    res.connection.end();
  });
}

export function assignRandomProject(results) {

  projectlist = new Array(results.length).fill(0);
  var unassignedBids = true;

  for (var i in assignBid) {
    // Mark projects that are assigned to team
    if (assignBid[i] != -1) projectlist[assignBid[i]-1] = 1;
  }

  for (var i in assignBid) {
    // Mark teams that do not have project
    if (assignBid[i] == -1) {
      if(unassignedBids) {
         console.log("Er zijn teams die geen eerste, tweede en derde keuze hebben gekregen. Voorgestelde toewijzing wordt gegeven.")
         unassignedBids = false;
      }
      // TO DO 
      // Random assign project to team 
      for(var j in projectlist) {
        if(projectlist[j] == 0) {
          assignBid[i] = j;
          projectlist[j] == 1;
          console.log("Team ", i, " heeft project", j, "toegewezen gekregen.")
          break;
        } //if
      } //for
    } //if
    if(assignBid[i] == -1) console.log("Team ", i, " heeft geen project toegewezen gekregen.");
  }
  

}
