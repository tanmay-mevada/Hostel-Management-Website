# Hostel Management System (PHP & MySQL)

This is a forked project from [CodeAstro](https://codeastro.com/hostel-management-system-in-php-with-source-code/). It is a simple yet functional Hostel Management System built with PHP and MySQL that enables hostel room booking and administration.

## Project Overview
The system provides two panels:
- Student Panel: Students can register and log in, browse and book available hostel rooms, and view booking details (room, seater, duration, pricing).
- Admin Panel: Administrators can manage student records and registrations, add and configure rooms (room number, seater count, pricing, food charges), manually book rooms for students, prevent duplicate bookings, view and delete booking records, and maintain logs and account settings.

## Tech Stack
- Backend: PHP (tested on 5.6 and 7.4)
- Database: MySQL
- Frontend: HTML, CSS, JavaScript, Bootstrap
- Architecture: Web-based app with student and admin interfaces

## Installation & Setup
1. Clone this repository:  
   git clone https://github.com/your-username/Hostel-Management-System.git  
   cd Hostel-Management-System  
2. Set up your environment with XAMPP/WAMP using PHP 5.6 or 7.4 and MySQL.  
3. Import the database: Open phpMyAdmin, create a new database (name from `01 LOGIN DETAILS & PROJECT INFO.txt`), and import the `.sql` file from the DATABASE FILE folder.  
4. Configure the project: Place files inside htdocs (or equivalent folder) and update `includes/dbconn.php` with your DB credentials.  
5. Run the app: Visit `http://localhost/<project-folder-name>/`, use login credentials from the provided text file, and register new students via the Admin panel.  

## Features
### Student Panel
- Registration and login  
- Room booking with automatic availability check  
- View personal booking details  
### Admin Panel
- Manage students  
- Configure hostel rooms  
- Manual booking with student details  
- View and delete booking records  
- Logs and settings  

## Future Enhancements
Planned improvements include secure authentication with hashed passwords and email verification, real-time availability checks using AJAX, fully responsive design, exporting booking reports to PDF or CSV, a monthly billing system, role-based access control, refactoring toward an MVC structure, and adding a RESTful API for mobile integration.

## Why This Project
This project is great for learning PHP-MySQL CRUD operations, offers a clear separation of student and admin workflows, is beginner-friendly with room for modern upgrades, and provides a strong foundation to practice web development skills.

## Notes
This README was rewritten for clarity and maintainability. The project is forked and customized for learning purposes.
