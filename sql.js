import pg from "pg";
import readline from "readline-sync";
const {Pool} = pg;
import { creds } from "./creds.js";

const pool = new Pool(creds);

const query = "SELECT * FROM customers";

pool.query(query, (err, data) => {
  if (err) {
    console.error(err);
    return;
  }
  console.table(data.rows)
  pool.end();
});