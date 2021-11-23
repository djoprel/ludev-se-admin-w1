"use strict";

import { createConnection } from "mysql2";
import dotenv from "dotenv";
import path from "path";
import { fileURLToPath } from "url";
const __filename = fileURLToPath(import.meta.url);

dotenv.config({ path: path.join(__filename, "../config.env") });

export const name = "rest-api";
export const hostname = "127.0.0.1"; //the hostname at which the restify server will be reachable.
export const version = "0.0.1";
export const env = process.env.NODE_ENV;
export const port = process.env.DB_PORT;
export const db = {
  get: createConnection({
    host: process.env.DB_HOST_IP,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
  }),
};
