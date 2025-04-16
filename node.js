npm install express mysql

const express = require('express');
const mysql = require('mysql');
const app = express();
const port = 3000;

// Create a connection to the database
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'your_password',
  database: 'your_database',
});

db.connect((err) => {
  if (err) {
    console.error('error connecting to the database:', err.stack);
    return;
  }
  console.log('connected to the database');
});

// Define search endpoint
app.get('/search', (req, res) => {
  const query = req.query.q;

  // Create a basic SQL query to search the "users" table
  const sqlQuery = `SELECT * FROM users WHERE name LIKE ? OR email LIKE ?`;
  
  db.query(sqlQuery, [`%${query}%`, `%${query}%`], (err, results) => {
    if (err) {
      return res.status(500).json({ error: 'Database query failed' });
    }
    res.json(results);
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});