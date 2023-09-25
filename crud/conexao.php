<?php
error_reporting();

$conn = new mysqli("localhost", "root", "", "trabalhobanco");
if($conn -> connect_errno) {
   header("Location: erro.php");
}
?>