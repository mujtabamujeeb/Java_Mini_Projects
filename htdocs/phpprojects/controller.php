<?php
   require_once('includes/dbh.inc.php');
   $query = "SELECT * FROM `users` ";
   $response = @mysqli_query($conn, $query);
   
   if($response){

        while($row = mysqli_fetch_array($response)){ //seperates each row into an array
            echo  $row['username']. "<br>";
            echo  $row['password']. "<br>";
        }
   }
   else{
      echo "Couldn't issue database query<br />";
      echo mysqli_error($conn);
   }
   mysqli_close($conn);

   ?>