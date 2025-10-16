# Academic Portfolio System

A professional portfolio website for showcasing academic profiles, research publications, courses, and projects. Built with PHP, Bootstrap, and MySQL.

## Features

- 🎓 Academic profile management
- 📚 Course management system
- 🔬 Research and publications showcase
- 📧 Contact forms with email notifications
- 👤 User authentication and registration
- 📱 Responsive design
- 🔒 Admin dashboard

## Setup Instructions

### 1. Database Setup

#### Step 1: Import Database Schema
Choose the appropriate SQL file based on your needs:

**For Fresh Setup (Empty Database):**
```bash
# Import clean database structure without sample data
mysql -u your_username -p your_database_name < db/initial/portfolio.sql
```

**For Testing with Sample Data:**
```bash
# Import database with pre-populated sample data for testing
mysql -u your_username -p your_database_name < db/v2/portfolio.sql
```

**Note:** 
- `db/initial/portfolio.sql` - Clean database structure, ideal for production
- `db/v2/portfolio.sql` - Includes sample data (users, courses, research) for testing and demo purposes


#### Step 2: Configure Database Connection
After setting up your database, update the database configuration in `class-file/DatabaseConnector.php` (lines 4-7):

```php
public $servername = "localhost";        // Your database server (usually localhost)
public $username = "root";               // Your MySQL username
public $password = "";                   // Your MySQL password
public $dbname = "portfolio";            // Your database name
```

**Example for different configurations:**
```php
// For local development (default)
public $servername = "localhost";
public $username = "root";
public $password = "your_mysql_password";
public $dbname = "portfolio";

// For shared hosting
public $servername = "localhost";
public $username = "your_cpanel_username";
public $password = "your_database_password";
public $dbname = "your_database_name";
```

### 2. Email Configuration

To enable email functionality (password reset, contact forms):

#### Step 1: Generate App Password
1. Go to [Google App Passwords](https://myaccount.google.com/apppasswords)
2. Create a new app password for this application
3. Copy the generated 16-character password

For detailed instructions, see: [Google Support - Sign in with App Passwords](https://support.google.com/mail/answer/185833?hl=en)

#### Step 2: Configure Email Settings
Update the email configuration in `class-file/EmailSender.php`:

```php
// Lines 32-33: Set your email credentials
$this->mail->Username = 'your-email@gmail.com';        // Your Gmail address
$this->mail->Password = 'your-app-password-here';      // 16-character app password

// Line 38: Set sender information (Optional)
$this->mail->setFrom('your-email@gmail.com', 'Your Name - Portfolio');
```

### 3. Customize Email Content (Optional)

To modify email templates:

#### Password Reset Emails
- File: `client/forgot-password-1.php` (Line 28)
- Modify the `$emailSender->sendMail()` parameters to customize subject and content

## Project Structure

```
portfolio/
├── admin/              # Admin panel files
├── client/             # Client-side pages
├── class-file/         # PHP classes and utilities
├── css/               # Stylesheets
├── js/                # JavaScript files
├── images/            # Image assets
├── db/                # Database files
└── uploads/           # User uploaded files
```

## Requirements

- PHP 7.4 or higher
- MySQL 5.7 or higher
- Web server (Apache/Nginx)
- SMTP email configuration (for email features)

## Getting Started

1. Clone or download this repository
2. Set up your web server to point to the project directory
3. Follow the setup instructions above
4. Access the application via your web browser

## Security Notes

- ⚠️ **Remove sensitive information** from configuration files before deploying
- 🔒 Use environment variables for email credentials in production
- 🛡️ Ensure proper file permissions are set
- 🔐 Use HTTPS in production environments

### 🚫 **DO NOT Upload to Production Host**
For security reasons, exclude these files/folders when deploying to production:

```
❌ class-file/Admin.php     # Contains admin setup functions
❌ class-file/setup.php     # Database setup utilities
❌ db/                      # Contains database files and backups
```

**⚠️ CRITICAL SECURITY WARNING:**
These files are for **development and debugging purposes ONLY**. Uploading them to a live website will cause:

- **Admin credential leaks** - Setup functions may expose admin usernames/passwords
- **Database structure exposure** - Attackers can see your entire database schema
- **Backdoor creation** - Admin setup functions could be exploited to create unauthorized accounts

**Why exclude these:**
- `class-file/Admin.php` - Contains admin creation functions that expose credentials
- `class-file/setup.php` - Database setup utilities that reveal sensitive configuration
- `db/` folder - Contains database backups and SQL files that expose complete structure

## Support

For questions or issues, please refer to the documentation or contact the system administrator.

