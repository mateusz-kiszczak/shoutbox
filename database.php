<?php 
  // Connect to MySQL
  // User: Root, No password required
  $connection = mysqli_connect("localhost","root","","shoutbox");

  // Test the connection
  if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL database: " . mysqli_connect_error();
  }
?>
