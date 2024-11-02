const express = require('express');
const app = express();
const mysql = require('mysql');
const bodyParser = require('body-parser');
const bcrypt = require('bcryptjs');

const PORT = 3001;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static(__dirname)); // Serves static files from the current directory

// Create MySQL connection
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'stowqrpassword',
    database: 'stowqr'
});

connection.connect((err) => {
    if (err) {
        console.error('Error connecting to MySQL Database:', err);
        return;
    }
    console.log('Connected to MySQL Database.');
});

// Route to serve Add Item Page
app.get('/add-item.html', (req, res) => {
    res.sendFile(__dirname + '/add-item.html');
});

// Route to serve Search Items Page
app.get('/search-items.html', (req, res) => {
    res.sendFile(__dirname + '/search-items.html');
});

// Endpoint to add an item
app.post('/add-item', (req, res) => {
    const { itemName, location, quantity, category } = req.body;
    const userId = 1; // Replace with actual session-based userId

    const query = "INSERT INTO items (user_id, name, location, quantity, category) VALUES (?, ?, ?, ?, ?)";
    connection.query(query, [userId, itemName, location, quantity, category], (err, result) => {
        if (err) {
            console.error('Error adding item:', err);
            return res.status(500).json({ success: false });
        }
        res.json({ success: true });
    });
});

// Endpoint to search items
app.get('/search-items', (req, res) => {
    const userId = 1; // Replace with actual session-based userId
    const query = req.query.query;

    const searchQuery = "SELECT * FROM items WHERE user_id = ? AND name LIKE ?";
    connection.query(searchQuery, [userId, `%${query}%`], (err, results) => {
        if (err) {
            console.error('Error searching items:', err);
            return res.status(500).json({ success: false });
        }
        res.json({ success: true, items: results });
    });
});

// Start the server on port 3001
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});
