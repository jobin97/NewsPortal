<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">

    
    <title>NewsPortal - <?php echo $title ?></title>
 
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
      <a class="navbar-brand" href="index.php"><h1>News Portal</h1></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
          <li class="nav-item">
              <a class="nav-link active" href="index.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="about-us.php">About</a>
            </li>
                 <li class="nav-item">
              <a class="nav-link active" href="News.php">News</a>
            </li>
             <li class="nav-item">
              <a class="nav-link active" href="contact-us.php">Contact us</a>
            </li>
            <li class="nav-item">
            <div class="navbar-nav ml-auto">
          <?php 
              if(!isset($_SESSION['username'])){
          ?>
            <a class="nav-item nav-link active" href="login/index.php">Login <span class="sr-only"></span></a>
          <?php } else { ?>
            <a class="nav-item nav-link active" href="#"><span>Hello <?php echo $_SESSION['username'] ?>! </span> <span class="sr-only"></span></a><br>
            <a class="nav-item nav-link active" href="login/logout.php">Logout <span class="sr-only"></span></a>
          <?php } ?>
        </div>
              <!-- <a class="nav-link active" href="login/index.php">Log in</a> -->
            </li>
  
  
          </ul>
       
      </div>
    </nav>
    <body>
    <div class="container">
    