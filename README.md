# ASP.NET Web Forms School Project About Chess

This is a school web development project built with **ASP.NET Web Forms**.

The website presents information about chess and includes user registration, JavaScript form validation, a SQL Server LocalDB database connection, an admin login page, and an admin user management page.

## Features

* Home page
* Chess rules page
* Chess openings page
* Contact page
* User registration form
* JavaScript form validation
* SQL Server LocalDB database connection
* Admin login page
* Users table for the admin
* Search users
* Delete users

## Technologies Used

* HTML
* CSS
* JavaScript
* C#
* ASP.NET Web Forms
* SQL Server LocalDB
* Visual Studio

## Project Structure

The main website files are inside the `SchoolProjectWebDev` folder.

Important parts of the project:

* `Pages` - website pages
* `Scripts` - JavaScript files
* `Content` - CSS and design files
* `images` - website images
* `App_Data` - database files
* `Site1.Master` - main master page
* `SchoolProjectWebDev.csproj` - Visual Studio project file
* `SchoolProjectWebDev.slnx` - Visual Studio solution file

## How to Download and Run the Project

Follow these steps to download and run the project on your computer.

### 1. Download the Project

You can download the project in one of two ways.

#### Option 1: Download ZIP

1. Click the green `Code` button.
2. Click `Download ZIP`.
3. Extract the ZIP file to a folder on your computer.

#### Option 2: Clone with Git

```bash
git clone https://github.com/Beeri2245/ASP.NET-Web-Forms-school-project-about-chess.git
```

### 2. Open the Project in Visual Studio

1. Open Visual Studio.
2. Click `Open a project or solution`.
3. Open the file:

```text
SchoolProjectWebDev.slnx
```

If the solution file does not open, open this file instead:

```text
SchoolProjectWebDev/SchoolProjectWebDev.csproj
```

### 3. Restore Required Packages

If Visual Studio asks to restore NuGet packages, approve it.

If it does not happen automatically:

1. Right-click the solution or project.
2. Click `Restore NuGet Packages`.

### 4. Install SQL Server LocalDB

This project uses **SQL Server LocalDB** as the database engine.

The project was built using **SQL Server LocalDB 2019**.

If LocalDB is not installed on your computer:

1. Search for:

```text
Microsoft SQL Server 2019 Express LocalDB
```

2. Open the official Microsoft download page.
3. Download and install SQL Server Express / LocalDB.
4. During installation, make sure that **LocalDB** is installed.

After installation, you can check if LocalDB is available by opening Command Prompt and running:

```cmd
sqllocaldb info
```

If LocalDB is installed correctly, this command should show the LocalDB instances on your computer.

### 5. Create or Start the LocalDB Instance

The project connection string uses a LocalDB instance named:

```text
SchoolDB2019
```

If this instance does not exist on your computer, open Command Prompt and run:

```cmd
sqllocaldb create SchoolDB2019 15.0
sqllocaldb start SchoolDB2019
```

You can check that it exists by running:

```cmd
sqllocaldb info
```

### 6. Check the Database File

The database file is included in the project folder:

```text
SchoolProjectWebDev/App_Data/Database3.mdf
```

The project connection string should point to this database file inside the `App_Data` folder.

If the database connection does not work, check the connection string in the project files and make sure it points to the correct `.mdf` file.

### 7. Run the Website

1. In Visual Studio, click `Build Solution`.
2. Click the green `Run` button / `IIS Express`.
3. The website should open in the browser.

## Admin Demo Login

Use the following demo login for the admin page:

```text
Username: admin
Password: 2245
```

## Notes

This project was created as part of a school web development assignment.

It demonstrates basic full-stack web development using ASP.NET Web Forms, C#, JavaScript, CSS, and SQL Server LocalDB.
