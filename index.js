const express = require("express");
const app = express();
const port = 3000;
const bodyParser = require("body-parser");
const db = require("./connection");
const response = require("./response");

app.use(bodyParser.json());

app.get("/", (req, res) => {
  response(200, "API v.1 Ready To Go", "SUCCESS", res);
});

app.get("/users", (req, res) => {
  const sql = "SELECT * FROM users";
  db.query(sql, (err, fields) => {
    response(200, fields, "Get all users", res);
  });
});

app.get("/quotes", (req, res) => {
  const sql = "SELECT * FROM quotes";
  db.query(sql, (err, fields) => {
    response(200, fields, "Get all users", res);
  });
});

app.get("/artikel", (req, res) => {
  const sql = "SELECT * FROM artikel";
  db.query(sql, (err, fields) => {
    response(200, fields, "Get all artikel", res);
  });
});

app.get("/artikel/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM artikel WHERE id = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) throw err;
    response(200, fields, "Get detail artikel", res);
  });
});

app.get("/users/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM users WHERE id = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) throw err;
    response(200, fields, "Get detail users", res);
  });
});

app.post("/register", (req, res) => {
  const { name, email, password, friend } = req.body;
  const sql = `INSERT INTO users (name, email, password, friend) VALUES ('${name}', '${email}', '${password}', '${friend}')`;
  db.query(sql, (err, fields) => {
    if (err) response(500, "Error", "Internal Server Error", res);
    if (fields?.affectedRows) {
      const data = {
        isSuccess: fields.affectedRows,
        id: fields.insertId,
      };
      response(200, data, "Data added successfully", res);
    }
  });
});

app.put("/users", (req, res) => {
  const { id, name, email, password, friend } = req.body;
  const sql = `UPDATE users SET name = '${name}', email = '${email}', password = '${password}', friend = '${friend}' WHERE id = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) response(500, "Error", "Internal Server Error", res);
    if (fields?.affectedRows) {
      const data = {
        isSuccess: fields.affectedRows,
        message: fields.message,
      };
      response(200, data, "Data updated successfully", res);
    } else {
      response(404, "Error", "Data not found", res);
    }
  });
});

app.delete("/users", (req, res) => {
  const { id } = req.body;
  const sql = `DELETE FROM users WHERE id = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) response(500, "Error", "Internal Server Error", res);
    if (fields?.affectedRows) {
      const data = {
        isDeleted: fields.affectedRows,
      };
      response(200, data, "Data deleted successfully", res);
    } else {
      response(404, "Error", "Data not found", res);
    }
  });
});

app.post("/login", (req, res) => {
  const { email, password } = req.body;
  const sql = `SELECT * FROM users WHERE email = '${email}'`;
  db.query(sql, (err, rows) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    } else {
      if (rows.length === 1) {
        const user = rows[0];
        if (user.password === password) {
          const data = {
            id: user.id,
            name: user.name,
            email: user.email,
          };
          response(200, data, "Login successfully", res);
        } else {
          response(401, "Error", "Invalid email/password", res);
        }
      } else {
        response(404, "Error", "User not found", res);
      }
    }
  });
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
