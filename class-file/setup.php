<?php
include_once "User.php";
include_once "File.php";
include_once "CourseDetails.php";
include_once "Course.php";
include_once "Research.php";
include_once "Project.php";
include_once "Lab.php";
include_once "Admin.php";
include_once "Department.php";


$user = new User();
$user->createTableMinimal();
$user->alterTableAddColumns();

$file = new FileManager();
$file->createTableMinimal();
$file->alterTableAddColumns();

$course = new Course();
$course->createTableMinimal();
$course->alterTableAddColumns();

$courseDetails = new CourseDetails();
$courseDetails->createTableMinimal();
$courseDetails->alterTableAddColumns();

$research = new Research();
$research->createTableMinimal();
$research->alterTableAddColumns();

$project = new Project();
$project->createTableMinimal();
$project->alterTableAddColumns();

$lab = new Lab();
$lab->createTableMinimal();
$lab->alterTableAddColumns();

$admin = new Admin();
$admin->insertAdmin("monicsejust@gmail.com");
$admin->insertAdmin("m.halder@just.edu.bd");

$department = new Department();
$department->createTableMinimal();
$department->alterTableAddColumns();


?>

<!-- end of the file setup.php -->