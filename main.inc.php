<?php
if (!isset($_SESSION['login'])) {
?>
  <h2>Please log in</h2><br>
  <form name="login" action="index.php" method="post">
    <label>Username:</label>
    <input type="text" name="emailAddress" size="20">
    <br>
    <br>
    <label>Password:</label>
    <input type="password" name="password" size="20">
    <br>
    <br>
    <input type="submit" value="Login">
    <input type="hidden" name="content" value="validate">
  </form>
  <?php
} else {
   echo "<h2>Welcome to BFJI Computers, {$_SESSION['login']}</h2>";
?>
   <br><br>
   <a href="index.php?content=logout"><strong>Logout</strong></a>
<?php
}
?>
