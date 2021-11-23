import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
import bcrypt from "bcrypt";
var connection = db.get;

//1. check the username exists in db
//2. check the password is correct + sql injection
//3. check that the user has the priveleges he/she is claiming to have
//4. assign cookie to the user
export function login(server) {
  server.post("/Login", function (req, res) {
    console.log(req);
    let username = req.body.username;
    let password = req.body.password;
    let privileges = req.body.privileges;
    console.log(username, password, privileges);
    connection.query(
      `SELECT Account.username, Account.password, User.privileges 
      FROM Account INNER JOIN User ON 
      Account.uid = User.uid 
      WHERE Account.username = '${username}'`,
      function (err, queryResult) {
        console.log(queryResult);
        if (err) throw err;
        if (queryResult.length == 0) {
          res.send({
            success: false,
            message: "Username does not exist",
          });
        } else {
          bcrypt.compare(
            password,
            queryResult[0].password,
            function (err, result) {
              if (err) throw err;
              if (result == false) {
                res.send({
                  success: false,
                  message: "Password is incorrect",
                });
              } else {
                console.log(privileges, "privileges");
                if (queryResult[0].privileges == privileges) {
                  //if the user is an admin privileges = 1, else 0
                  // res.cookie("username", username, {
                  //   maxAge: 900000,
                  //   httpOnly: true,
                  // });
                  req.session.name = "ik ben een lief cookie";
                  res.send({
                    success: true,
                    message: "Login Successful",
                  });
                } else {
                  res.send({
                    succes: false,
                    message: "user has not the claimed privileges",
                  });
                }
              }
            }
          );
        }
      }
    );
  });
}

/*
curl -i -X POST -H 'Content-Type:
 application/json' -d '{"username":"s2592991", "password":"macquine"}'
  http://localhost:3001/Login
  */
