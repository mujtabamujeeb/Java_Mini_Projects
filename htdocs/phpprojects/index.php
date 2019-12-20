<?php
  include_once 'includes/dbh.inc.php';
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="style.css" />
    <title>Document</title>
  </head>
  <body>

  
    <form class="box" action="controller.php" method="post">
      <h1>Login</h1>
      <input type="text" name="" placeholder="Username" />
      <input type="password" name="" placeholder="password" />
      <input type="submit" name="" value="Login" />
	 </form>

   <?php
  
   $query = "INSERT INTO `users` (`id`, `name`, `username`, `password`, `usertype`, `theme`, `remember_token`, `created_at`, `updated_at`) VALUES
   (1, 'John Doe', 'testing1', 'Mujtaba786', 'view', 'default', NULL, '2019-12-19 13:19:46', '2019-12-19 13:19:46'),
   (2, 'Michael Jordan', 'testing2', 'Danial01', 'view', 'default', NULL, '2019-12-19 13:20:41', '2019-12-19 13:20:41'),
   (3, 'Tiger Woods', 'testing3', 'Dony01', 'view', 'default', NULL, '2019-12-19 13:21:07', '2019-12-19 13:21:07'),
   (4, 'Danny Bravo', 'testing4', 'Brookenstein', 'view', 'default', NULL, '2019-12-19 13:21:58', '2019-12-19 13:21:58');";
   $response = @mysqli_query($conn, $query);

   ?>
   
  </body>
</html>
