const express = require("express");
const app = express();
const port = 3001;
const bodyParser = require("body-parser");
const db = require("./connection");
const response = require("./response");
const argon2 = require("argon2");

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
    response(200, fields, "Get all quotes", res);
  });
});

app.get("/journal", (req, res) => {
  const sql = "SELECT * FROM journal";
  db.query(sql, (err, fields) => {
    response(200, fields, "Get all journal", res);
  });
});

app.get("/artikel", (req, res) => {
  const sql = "SELECT * FROM artikel";
  db.query(sql, (err, fields) => {
    response(200, fields, "Get all artikel", res);
  });
});

app.get("/moods", (req, res) => {
  const sql = "SELECT * FROM moods";
  db.query(sql, (err, fields) => {
    response(200, fields, "Get all moods", res);
  });
});

app.get("/artikel/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM artikel WHERE id = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    }
    response(200, fields, "Get detail artikel", res);
  });
});

app.get("/moods/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM moods WHERE id_user = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    }
    fields.sort((a, b) => new Date(b.timestamp) - new Date(a.timestamp));
    response(200, fields, "Get detail moods", res);
  });
});

app.get("/journal/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM journal WHERE id_user = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    }
    fields.sort((a, b) => new Date(b.timestamp) - new Date(a.timestamp));
    response(200, fields, "Get detail journal", res);
  });
});

app.get("/users/:id", (req, res) => {
  const id = req.params.id;
  const sql = `SELECT * FROM users WHERE id = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    }
    response(200, fields, "Get detail users", res);
  });
});

app.post("/register", async (req, res) => {
  const { name, email, password, friend, profile } = req.body;

  const checkEmailQuery = `SELECT * FROM users WHERE email = '${email}'`;
  db.query(checkEmailQuery, async (err, rows) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    } else {
      if (rows.length > 0) {
        response(400, "Error", "Email sudah tersedia, gunakan email lain", res);
      } else {
        try {
          const hashedPassword = await argon2.hash(password);
          const sql = `INSERT INTO users (name, email, password, friend, profile) VALUES ('${name}', '${email}', '${hashedPassword}', '${friend}', '${profile}')`;
          db.query(sql, (err, fields) => {
            if (err) {
              response(500, "Error", "Internal Server Error", res);
            } else {
              const data = {
                isSuccess: fields.affectedRows,
                id: fields.insertId,
              };
              response(200, data, "Data berhasil ditambahkan", res);
            }
          });
        } catch (error) {
          response(500, "Error", "Internal Server Error", res);
        }
      }
    }
  });
});

app.post("/journal", (req, res) => {
  const { id_user, title, content, timestamp } = req.body;
  const sql = `INSERT INTO journal (id_user, title, content, timestamp) VALUES ('${id_user}', '${title}', '${content}', '${timestamp}')`;
  db.query(sql, (err, fields) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    }
    if (fields.affectedRows) {
      const data = {
        isSuccess: fields.affectedRows,
        id: fields.insertId,
      };
      response(200, data, "Data berhasil ditambahkan", res);
    }
  });
});

app.post("/moods", (req, res) => {
  const { id_user, mood, reason, timestamp } = req.body;
  const sql = `INSERT INTO moods (id_user, mood, reason, timestamp) VALUES ('${id_user}', '${mood}', '${reason}', '${timestamp}')`;
  db.query(sql, (err, fields) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    }
    if (fields.affectedRows) {
      const data = {
        isSuccess: fields.affectedRows,
        id: fields.insertId,
      };
      response(200, data, "Data berhasil ditambahkan", res);
    }
  });
});

app.put("/users", (req, res) => {
  const { id, name, email, password, friend, profile } = req.body;
  const sql = `UPDATE users SET name = '${name}', email = '${email}', password = '${password}', friend = '${friend}', profile = '${profile}' WHERE id = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    }
    if (fields.affectedRows) {
      const data = {
        isSuccess: fields.affectedRows,
        message: fields.message,
      };
      response(200, data, "Data berhasil diupdate", res);
    } else {
      response(404, "Error", "Data tidak ditemukan", res);
    }
  });
});

app.delete("/users", (req, res) => {
  const { id } = req.body;
  const sql = `DELETE FROM users WHERE id = ${id}`;
  db.query(sql, (err, fields) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    }
    if (fields.affectedRows) {
      const data = {
        isDeleted: fields.affectedRows,
      };
      response(200, data, "Data deleted successfully", res);
    } else {
      response(404, "Error", "Data tidak ditemukan", res);
    }
  });
});

app.post("/login", (req, res) => {
  const { email, password } = req.body;
  const sql = `SELECT * FROM users WHERE email = '${email}'`;
  db.query(sql, async (err, rows) => {
    if (err) {
      response(500, "Error", "Internal Server Error", res);
    } else {
      if (rows.length === 1) {
        const user = rows[0];
        const match = await argon2.verify(user.password, password);
        if (match) {
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
