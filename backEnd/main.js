import { db, name as _name, version as _version, hostname } from "./config.mjs";
import { createServer, plugins } from "restify";
var connection = db.get;

/**
 * Initialize Server
 */

const server = createServer({
  name: _name,
  version: _version,
  //url: hostname,
});

server.pre((req, res, next) => {
  /*the back-end should only allow requests from the front end server
   therefore when in production, the "*" should be changed to the
   ip-adress of the front-end server. */
  res.header("Access-Control-Allow-Origin", "*");
  next();
});

server.listen(3001, function () {
  console.log("%s listening at %s", server.name, server.url);
});

server.use(plugins.acceptParser(server.acceptable));
server.use(plugins.queryParser());
server.use(plugins.bodyParser());

import { bids } from "./Handlers/bids.mjs";
import { projects } from "./Handlers/projects.mjs";
import { users_page } from "./Handlers/users_page.mjs";
import { grades_page } from "./Handlers/grades_page.mjs";
import { bidding_page} from "./Handlers/bidding_page.mjs";
import { project_page } from "./Handlers/project_page.mjs";
import { team_page } from "./Handlers/team_page.mjs";

bids(server);
projects(server);
users_page(server);
grades_page(server);
bidding_page(server);
project_page(server);
team_page(server);
