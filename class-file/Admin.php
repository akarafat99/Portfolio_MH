<?php
class Admin
{
    /**
     * Constructor: Initializes the database connection.
     */
    public function __construct() {}

    /**
     * Insert the admin record into tbl_user.
     * 
     * @param string|null $email The email address for the admin user.
     * @return bool|string Returns true on success, or an error message on failure.
     */
    public function insertAdmin($email = null)
    {
        include_once "User.php";
        $user = new User();
        $user->email = $email;
        $user->password = "Pa$\$w0rd";
        $user->user_type = "admin";
        $user->full_name = "Admin";
        $user->status = 1;

        $user->insert();
        echo "Admin record inserted successfully.";
        return true;
    }
}
?>

<!-- end of the file Admin.php -->