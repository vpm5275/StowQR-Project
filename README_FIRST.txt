Hello! 

Welcome to StowQR! 

To see our application, please download all files (download the zip file) and extract them to your desktop. Make sure all files are in the same folder. Then, open index.html and dashboard.html. 

The objective is to open the initial page(index.html), sign in, and then be redirected to the dashboard. Still, since we haven't implemented the sign-in functionality yet, you must open the dashboard.html page separately. 

Please note that we have just started with the frontend and are still working on the backend functionalities.
---------------------------------------------------------------------------------------------------------
Project Setup Instructions

Prerequisites
Node.js: Download and install Node.js from https://nodejs.org/
MySQL: Install MySQL Community Server from https://dev.mysql.com/downloads/mysql/
Step-by-Step Setup Guide
1. Download the Project
Clone or download the project folder to your computer.
2. Set Up the MySQL Database
Option A: Using MySQL Workbench

Open MySQL Workbench and connect to your MySQL server.
Create a New Database:
Run the following command in the SQL editor to create an empty database named stowqr:
CREATE DATABASE stowqr;
USE stowqr;
Import the Database:
From the menu, select Server > Data Import.
Choose "Import from Self-Contained File" and select the stowqr.sql file from the project folder.
Select the stowqr database as the default target schema.
Click "Start Import" to import the data and structure from stowqr.sql.
Option B: Using Command Line

Open Command Prompt (Windows) or Terminal (macOS).
Navigate to the Project Folder where stowqr.sql is located. For example:
cd path/to/StowQR-Project-main
Create and Import the Database:
Log in to MySQL:
mysql -u your_username -p
Create the database:
CREATE DATABASE stowqr;
USE stowqr;
Import the database from stowqr.sql:
mysql -u your_username -p stowqr < stowqr.sql
3. Configure Database Credentials
Open server.js in the project folder.
Update the MySQL connection information to match your MySQL setup:
const connection = mysql.createConnection({ host: 'localhost', user: 'your_username', // Replace with your MySQL username password: 'your_password', // Replace with your MySQL password database: 'stowqr' });
4. Install Dependencies
Open a terminal (Command Prompt on Windows, Terminal on macOS).
Navigate to the project folder:
cd path/to/StowQR-Project-main
Install the required Node.js packages:
npm install
5. Start the Server
In the same terminal, run the following command to start the server:
node server.js
You should see a message that says "Server is running on port 3000."
6. Access the Application
Open a web browser.
To create an account, go to:
http://localhost:3000/create-account.html
After creating an account, you can sign in at:
http://localhost:3000/sign-in.html
Troubleshooting Tips
Error Connecting to MySQL: Ensure MySQL is running and that the server.js credentials match your MySQL setup.
Modules Not Found: Run npm install to ensure all required modules are installed.
Database Not Found: Ensure the stowqr database exists by checking in MySQL Workbench or running SHOW DATABASES; in the MySQL command line.
That’s it! You’re now ready to use the application locally.