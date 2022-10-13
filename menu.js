import pg from "pg";
import readline from "readline-sync";
const { Pool } = pg;
import { creds } from "./creds.js";

const pool = new Pool(creds);

async function runQuery(query) {
  return await pool.query(query)
}

while (true) {
  const answer = readline.question("Run what?")
  let query = ""
  let results = ""
  switch (answer) {
    case "1": // 1 - SELECT * FROM customers for all data
      query = "SELECT customer_id, first_name, last_name FROM customers";
      results = await runQuery(query);
      console.table(results.rows);
      break;
    case "2": // 2 - add a new customer
      query = `INSERT INTO public.customers(first_name, last_name, email, phone)
              VALUES ('Mike', 'Wazski', 'Oneeye@Greenguy.org', '0011001100');`;
      results = await runQuery(query);
      console.log("Customer added!");
      break;
    case "3": // 3 - update that customer
      query = `UPDATE public.customers
            SET 
      --        customer_id=?,
      --        first_name=?,
                last_name='Wazowski',
      --        email=?,
      --        phone=?,
      --        created_at=?,
                updated_at=NOW()
            WHERE customer_id=6;`;
      results = await runQuery(query);
      console.log("Customer updated!");
      break;
    default:
      console.log("Wat!?")
      break;
  };
}


