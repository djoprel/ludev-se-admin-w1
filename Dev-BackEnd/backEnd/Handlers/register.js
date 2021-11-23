import {
  db,
  name as _name,
  version as _version,
  hostname,
} from "../config.mjs";
import bcrypt from "bcrypt";
var connection = db.get;

const saltRounds = 13;

export function register(server) {
  server.post("/Register", (req, res) => {
    console.log(req.body);
    let username = req.body.username;
    let plaintextPassword = req.body.password;
    let initials = req.body.initials;
    let surname = req.body.surname;
    let study = req.body.study;
    console.log(username, plaintextPassword, initials, surname, study);
    connection.query(
      `SELECT * FROM Account WHERE username = '${username}'`,
      (err, result) => {
        if (err) throw err;
        console.log(result.length);
        if (result.length > 0) {
          res.send("Username already taken");
        } else {
          let hashedPassword = bcrypt.hashSync(plaintextPassword, saltRounds);
          connection.query(
            `INSERT INTO Account(username, password) VALUES('${username}', '${hashedPassword}')`,
            (err, result) => {
              if (err) throw err;
              connection.query(
                `INSERT INTO User(uid, study, initials, surname) 
              SELECT uid,'${study}','${initials}','${surname}' 
              FROM Account WHERE username = '${username}'`
              );
            }
          );
          res.send("User registered succesfully");
        }
      }
    );
  });
}

/*
curl -i -X POST -H 'Content-Type:
 application/json' -d '{"username":"s2592991", "password":"purchonokki", "initials":"d.m.d", "surname":"macquine", "study":"I&E"}'
  http://localhost:3001/Login
  */
