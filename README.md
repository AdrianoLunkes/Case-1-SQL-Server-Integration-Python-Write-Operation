# SQL-Server-Integration-Python-Case-1-Write-Operation
This project demonstrates Python and SQL Server integration via Jupyter Notebook. It focuses on dynamic data insertion, utilizing Python variables for automation. We use the pyodbc library to establish a direct connection, enabling simple and efficient execution of SQL commands like INSERT

2. Preparing SQL Server for Integration
First, we need to set up the database environment. Run the following commands in your SQL Server Management Studio (SSMS):

SQL

-- Create the database
CREATE DATABASE PythonSQL;
USE PythonSQL;

-- Creating the table and columns that will receive the data
CREATE TABLE Sales(
    sale_id INT,
    sale_date DATE,
    customer VARCHAR(100),
    product VARCHAR(100),
    price DECIMAL(10, 2),
    quantity INT
);
✅ Status: Database and table successfully created.

Initial Test Record
Let’s add a first test record directly via SQL to ensure the table works:

SQL

INSERT INTO Sales (sale_id, sale_date, customer, product, price, quantity)
VALUES (1, '2022-04-22', 'Ana', 'Phone', 2000, 1);
3. Initial Configurations in Jupyter
In Jupyter Notebook, create a new Python 3 file.

📦 Installation
Install the integration library:

Bash

!pip install pyodbc
🔗 Setting up the connection
The following script establishes the link between the Python environment and the database:

Python

import pyodbc

connection_data = (
    "Driver={SQL Server};"
    "Server=LAPTOP-SRP0M4NC;"  # Replace with your server name
    "Database=PythonSQL;"
)

connection = pyodbc.connect(connection_data)
print("Connection successful!")
Note:

Driver: Defines the SQL Server connector.

Server: Indicates the machine or host name.

Database: Specifies which database will be used.

4. Adding SQL Commands inside Jupyter
Now we can insert SQL commands directly from Python to write data into the table.

Basic Insertion
Python

cursor = connection.cursor()

command = """INSERT INTO Sales (sale_id, sale_date, customer, product, price, quantity)
VALUES (1, '2022-04-22', 'Ana', 'Phone', 2000, 1)"""

cursor.execute(command)
cursor.commit()
🧾 Bulk Insertion Examples
Here are four additional examples of inserting data manually via script:

Python

# Example 1
command = """INSERT INTO Sales (sale_id, sale_date, customer, product, price, quantity)
VALUES (2, '2022-07-01', 'Pedro', 'Laptop', 6000, 1)"""
cursor.execute(command)
cursor.commit()

# Example 2
command = """INSERT INTO Sales (sale_id, sale_date, customer, product, price, quantity)
VALUES (3, '2022-09-10', 'Mariana', 'Headphones', 350, 2)"""
cursor.execute(command)
cursor.commit()

# Example 3
command = """INSERT INTO Sales (sale_id, sale_date, customer, product, price, quantity)
VALUES (4, '2022-11-25', 'Lucas', 'Smart TV', 3200, 1)"""
cursor.execute(command)
cursor.commit()

# Example 4
command = """INSERT INTO Sales (sale_id, sale_date, customer, product, price, quantity)
VALUES (5, '2023-01-12', 'Julia', 'Digital Camera', 1800, 1)"""
cursor.execute(command)
cursor.commit()
5. Making Data Registration Automatic with Variables
To make the process dynamic, we use f-strings to inject Python variables directly into the SQL command:

Python

cursor = connection.cursor()

# Define variables
sale_id = 6
sale_date = "2023-06-17"
customer = "Diego"
product = "Tablet"
price = 1200
quantity = 1

# Create dynamic command
command = f"""INSERT INTO Sales (sale_id, sale_date, customer, product, price, quantity)
VALUES ({sale_id}, '{sale_date}', '{customer}', '{product}', {price}, {quantity})"""

cursor.execute(command)
cursor.commit()

print("Data successfully inserted!")
Conclusion
The Python and SQL Server Integration Project (Write Operation) demonstrates in practice how to:

✅ Connect Python directly to SQL Server using pyodbc.

✅ Execute SQL commands inside Jupyter Notebook.

✅ Automate data insertion using Python variables.

This integration makes the process of writing and inserting data faster, more flexible, and programmable, making it ideal for projects involving data analysis, automated registration, or corporate database updates.
