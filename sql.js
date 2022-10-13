import pg from "pg";
const { Pool } = pg;

const database = new Pool(
  {
    host: "sql.bocacode.com",
    database: "bocacode",
    user: "bocacode",
    password: "BocaCode1122BocaCode3344$$^^",
    port: 5432,
  }
);

const query = "SELECT * FROM customers full join  orders on customers.customerid = orders.customerid";

database.query(query, (err, data) => {
  if (err) {
    console.error(err);
    return;
  }
  console.table(data.rows)
  database.end();
});