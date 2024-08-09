#  Personal Finance Management Web Application
Project Overview
This project is a comprehensive web application designed to help users manage their personal finances. It allows users to register and log in to the system, manage multiple wallets, track their income and expenses, and generate financial reports. The application is built using Java technologies, including Servlets, JSP, and JDBC, and follows the MVC architecture pattern.

Features
1. User Management
User Registration:
Users can create a new account with a unique username and a password (6-8 characters).
After successful registration, users are redirected to the login page.
User Login:
Users can log in using their registered username and password.
After logging in, users are redirected to the home page.
Social Login (Optional):
Users can log in using their social media accounts (Facebook, Google, GitHub, etc.).
Logout:
Users can log out of the system and are redirected to the login page.
2. Wallet Management
View Wallets:
Users can view all their wallets on the main screen, including wallet icon, name, total deposited amount, and current balance.
Total Balance:
Users can see the total amount of money across all wallets on the main screen.
Add Wallet:
Users can add a new wallet by providing a name and description.
Edit Wallet:
Users can edit existing wallet information (name and description).
Delete Wallet:
Users can delete a wallet, which also removes all associated transactions and wallet balance.
3. Income and Expense Management
Add Income:
Users can add money to a wallet with an optional note.
Record Expense:
Users can record an expense with details including amount, category, wallet, note, and time (defaulting to the current time).
Edit Expense:
Users can edit an existing expense with updated details.
Delete Expense:
Users can delete an expense, and the amount will be reverted back to the wallet balance.
4. Reporting and Statistics
Filter Transactions:
Users can filter and view transactions within a specified time range for each wallet. The results are displayed in a table format with fields such as serial number, transaction date, amount, note, and wallet.
Today’s Transactions:
Users can view today’s transactions for each wallet, displayed in a table format with fields like date, serial number, amount, note, wallet, and total amount.
Income and Expense Statistics:
Users can view and filter income and expense statistics for a specified time range or for the current day.
5. Category Management
View Categories:
Users can view their expense categories (e.g., Food, Coffee, Shopping, Fuel) from the navigation bar.
Add Category:
Users can add a new expense category by providing a name and note.
Edit Category:
Users can edit the name and note of an existing expense category.
Technology Stack
Backend: Java Servlets, JDBC, DAO, DTO
Server: Apache Tomcat
Frontend: JSP, JSTL, HTML, CSS, Bootstrap
Database: MySQL
Setup and Installation
Prerequisites
Java Development Kit (JDK) 8 or higher
Apache Tomcat 9 or higher
MySQL database
Maven or Gradle for dependency management (optional)
Installation Steps
Clone the Repository:

bash
Copy code
git clone [https://github.com/yourusername/personal-finance-management.git](https://github.com/hoangle1269/module3_case_study/new/finale)
cd personal-finance-management
Set Up Database:

Create a new MySQL database.
Execute the SQL script schema.sql located in the resources folder to create the necessary tables.
Configure Database Connection:

Open db.properties file in the src/main/resources directory.
Update the database URL, username, and password according to your local MySQL setup.
Build and Deploy:

Use Maven or Gradle to build the project:
bash
Copy code
mvn clean install
Deploy the generated WAR file to the Tomcat server.
Run the Application:

Start the Tomcat server.
Open your browser and navigate to http://localhost:8080/
Usage
Register a new user to start using the application.
Log in to access the home page where you can manage your wallets and transactions.
Use the navigation bar to access different features like adding income, recording expenses, and viewing reports.
Contributing
Feel free to fork this project and submit pull requests. For major changes, please open an issue to discuss what you would like to change.

License
This project is licensed under the MIT License - see the LICENSE file for details.
