# Company-Locations-Data
This App will say all the locations of the company, it will  give the departments that are there along with the people who work there, id, salary, schedule, job type and description. This will also say if they are still working there or their contract has been terminated with the reason why they have been terminated.

The data that will be needed is the 

Locations - 3 
123 Busy St, Brooklyn, New York (Zip Code?)
456 Calm St, Washington, DC (Zip Code?)
789 Crazy St, Houston, TX (Zip Code?)

    |
    V

Locations - Location (pick Location 1, 2, or 3)

    |
    V

Locations (pick Location 1, 2, or 3) - Departments (total 5)

    |
    V

Adminstration
Human Resources
Finances
Research and Development
Production

    |
    V

Deparmtnets - Job Types 
    |
    V

Adminstration - (Job Types?)
Human Resources - (Job Types?)
Finances - (Job Types?)
Research and Development - (Job Types?)
Production - (Job Types?)

    |
    V

Job Types - Employees

    |
    V

ID
Name
Address
DOB
Experience
Current Position
Terminated?
Comments

Creating a DB (Data Base) on GCP - In order to do this you have to go to your Google Cloud and go to Cloud SQL Instances. When you do that you will open the Overview of an instance page and click on the name. Then select Databases from the SQL navigation menu, then you click Create Database. Once you do that in the Create a Database dialog, specify ther name of the database and click create.

Connecting to the DB - To connect to the database open MYSQL Workbench, when you open it click new connection icon, in the "Set up a New connection" box type your dtabase connection credentials. You will need the connection name, connection method, host name, port, username, password, and the default schema. When you do that you must test the connection, when you test it put the password you set on your "save password vault" , and click ok. My SQL Workbench will let you know if the connection was done properly. Once you do that your DB will be connected to My SQL Workbench.

How to seed the Data - In order to Seed the data inside my Data Base you have to create the SQL documents  that will create the tables that you need. To import them you can open your database in MySQL Workbench and click on the folder icon to open a script file. When you open the file you need, you can run the command to create the tables using the lightning icon. To make sure it works correctly just refresh you Schemas table and the tables you created should appear there.