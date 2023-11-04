<?php include 'database.php'; ?>

<?php 
  // Create SELECT query
  $query = "SELECT * FROM shouts ORDER BY id DESC";
  $result = mysqli_query($connection, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shoutbox</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@400;700&family=Inter:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="styles/style.css">
</head>
<body>
  <main>
    <div class="container container--top">
      <h1>Shoutbox</h1>
      <div id="shouts">
        <ul>
          <?php while($row = mysqli_fetch_assoc($result)) : ?>
            <li class="shout">
              <p class="shout__log">
                <span class="shout__log__time"><?php echo $row['time']; ?></span> - <span class="shout__log__name"><?php echo $row['user']; ?> </span>shouts:
              </p>
              <p class="shout__message"><?php echo $row['message']; ?></p>
            </li>
          <?php endwhile; ?>
        </ul>
      </div>
    </div>
    <div class="container container--bottom">
      <?php if(isset($_GET['error'])) : ?>
        <p class="alert"><?php echo $_GET['error'] ?></p>
      <?php endif; ?>
      <form action="process.php" method="POST">
        <textarea name="message" id="message" placeholder="Enter message"></textarea>
        <div id="form-second-row">
          <input name="user" id="user"  class="input-user" type="text" placeholder="Enter Your Name">
          <input id="submit" type="submit" name="submit" value="SHOUT IT!">
        </div>
      </form>
    </div>
  </main>
</body>
</html>
