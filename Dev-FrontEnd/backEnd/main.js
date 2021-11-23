import { db, name as _name, version as _version, hostname } from "./config.mjs";
import { createServer, plugins } from "restify";
import session from "express-session";
import cookieParser from "cookie-parser";
var connection = db.get;

/**
 * Initialize Server
 */

const server = createServer({
  name: _name,
  version: _version,
  url: hostname,
});

server.pre((req, res, next) => {
  /*the back-end should only allow requests from the front end server
   therefore when in production, the "*" should be changed to the
   ip-adress of the front-end server. */
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "*");
  res.header("Access-Control-Allow-Credentials: true");
  res.header("Access-Control-Max-Age:86400");
  res.header(
    "Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token,  Accept, Authorization, X-Requested-With"
  );

  next();
});

server.listen(3001, function () {
  console.log("%s listening at %s", server.name, server.url);
});

server.use(plugins.acceptParser(server.acceptable));
server.use(plugins.queryParser());
server.use(plugins.bodyParser());
server.use(cookieParser());

server.use(
  session({
    secret: "not so secret if you read this.",
    resave: false,
    saveUninitialized: true,
    cookie: {
      maxAge: 1000 * 60 * 60, //1 hour
    },
  })
);

import { bids } from "./Handlers/bids.mjs";
import { projects } from "./Handlers/projects.mjs";
import { users_page } from "./Handlers/users_page.mjs";
import { grades_page } from "./Handlers/grades_page.mjs";
import { bidding_page } from "./Handlers/bidding_page.mjs";
import { project_page } from "./Handlers/project_page.mjs";
import { team_page } from "./Handlers/team_page.mjs";
import { login } from "./Handlers/login.js";
import { check_logged_in } from "./Handlers/check_logged_in.js";
import { register } from "./Handlers/register.js";
import { request_cookie } from "./Handlers/request_cookie.js";

request_cookie(server);
bids(server);
projects(server);
users_page(server);
grades_page(server);
bidding_page(server);
project_page(server);
team_page(server);
login(server);
check_logged_in(server);
register(server);
