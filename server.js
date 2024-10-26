const express = require('express');
const app = express();
const mysql = require('mysql');
const bodyParser = require('body-parser');
const bcrypt = require('bcryptjs');

// Setup Express
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
    if (err) throw err;
    console.log('Connected to MySQL Database.');
});

// Route to serve Create Account Page
app.get('/create-account', (req, res) => {
    res.sendFile(__dirname + '/create-account.html');
});

// Endpoint to create a new account
app.post('/create-account', (req, res) => {
    const { name, email, password } = req.body;
    const hashedPassword = bcrypt.hashSync(password, 8);

    const query = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
    connection.query(query, [name, email, hashedPassword], (err, result) => {
        if (err) {
            res.status(500).send("Error creating account.");
        } else {
            res.redirect('/sign-in.html'); // Redirect to sign-in page after successful account creation
        }
    });
});

// Route to serve Sign In Page
app.get('/sign-in', (req, res) => {
    res.sendFile(__dirname + '/sign-in.html');
});

// Endpoint for signing in
app.post('/sign-in', (req, res) => {
    const { email, password } = req.body;

    if (!email || !password) {
        return res.json({ success: false, message: "Email or password missing in the request." });
    }

    const query = "SELECT * FROM users WHERE email = ?";
    connection.query(query, [email], (err, results) => {
        if (err) throw err;

        if (results.length === 0) {
            res.json({ success: false, message: "Incorrect email or password." });
        } else {
            const user = results[0];
            const passwordIsValid = bcrypt.compareSync(password, user.password);

            if (passwordIsValid) {
                res.json({ success: true });
            } else {
                res.json({ success: false, message: "Incorrect email or password." });
            }
        }
    });
});

// Route to serve Dashboard Page
app.get('/dashboard.html', (req, res) => {
    res.sendFile(__dirname + '/dashboard.html');
});

// Start the server
app.listen(3000, () => {
    console.log('Server is running on port 3000.');
});
