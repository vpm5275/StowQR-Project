Here's an updated version of the README text, formatted for better readability:

---

**Welcome to StowQR!**

This application helps you manage inventory using QR codes for quick and easy tracking. To get started with StowQR, please follow these instructions to set up and run the application locally on your machine.

---

### Project Setup Instructions

#### Prerequisites
- **Node.js**: Download and install Node.js from https://nodejs.org/
- **MySQL**: Install MySQL Community Server from https://dev.mysql.com/downloads/mysql/

---

### Step-by-Step Setup Guide

#### 1. Download the Project
- Clone or download the entire project folder to your computer. Ensure all files are in the same directory after extraction.

#### 2. Set Up the MySQL Database

**Option A: Using MySQL Workbench**
1. Open MySQL Workbench and connect to your MySQL server.
2. **Create a New Database**:
   - Run the following SQL command to create an empty database named `stowqr`:
     ```sql
     CREATE DATABASE stowqr;
     USE stowqr;
     ```
3. **Import the Database**:
   - From the menu, select `Server > Data Import`.
   - Choose "Import from Self-Contained File" and select the `stowqr.sql` file located in the project folder.
   - Select the `stowqr` database as the default target schema.
   - Click "Start Import" to import the data and structure from `stowqr.sql`.

**Option B: Using Command Line**
1. Open Command Prompt (Windows) or Terminal (macOS).
2. **Navigate to the Project Folder** where `stowqr.sql` is located:
   ```bash
   cd path/to/StowQR-Project-main
   ```
3. **Create and Import the Database**:
   - Log in to MySQL:
     ```bash
     mysql -u your_username -p
     ```
   - Run the following commands:
     ```sql
     CREATE DATABASE stowqr;
     USE stowqr;
     ```
   - Import the database from `stowqr.sql`:
     ```bash
     mysql -u your_username -p stowqr < stowqr.sql
     ```

#### 3. Configure Database Credentials
1. Open `server.js` in the project folder.
2. Update the MySQL connection information to match your MySQL setup:
   ```javascript
   const connection = mysql.createConnection({
       host: 'localhost',
       user: 'your_username', // Replace with your MySQL username
       password: 'your_password', // Replace with your MySQL password
       database: 'stowqr'
   });
   ```

#### 4. Install Dependencies
1. Open a terminal (Command Prompt on Windows, Terminal on macOS).
2. Navigate to the project folder:
   ```bash
   cd path/to/StowQR-Project-main
   ```
3. Install the required Node.js packages:
   ```bash
   npm install
   ```

#### 5. Start the Server
- In the same terminal, run the following command to start the server:
  ```bash
  node server.js
  ```
- You should see a message indicating that the server is running, e.g., "Server is running on port 3001."

#### 6. Access the Application
- Open a web browser and go to the following URLs:
   - **Create an Account**: http://localhost:3001/create-account.html
   - **Sign In**: After creating an account, you can sign in at http://localhost:3001/sign-in.html
   - **Dashboard**: Upon successful sign-in, you will be redirected to the dashboard, where you can access all functionalities.

---

### Application Functionalities
The StowQR application includes the following main features on the dashboard:
1. **Add Item**: Allows you to add new items to your inventory.
2. **Search Items**: Enables you to search for items in your inventory.
3. **QR Code Generator**: Generate QR codes for item locations.
4. **QR Code Scanner**: Scan QR codes to retrieve item information.

Each feature is accessible from the dashboard after signing in.

---

### Troubleshooting Tips
- **Error Connecting to MySQL**: Ensure MySQL is running, and that the credentials in `server.js` match your MySQL configuration.
- **Modules Not Found**: Run `npm install` in the terminal to make sure all required modules are installed.
- **Database Not Found**: Verify that the `stowqr` database exists by checking in MySQL Workbench or running `SHOW DATABASES;` in the MySQL command line.

---

That’s it! You’re now ready to use StowQR locally.

---
