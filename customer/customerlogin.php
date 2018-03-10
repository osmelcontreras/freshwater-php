<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>E-commerce Website</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <link rel="stylesheet" type="text/css" href="productStyle.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>

<div>
    <div class="container">
       <!--<div class="jumbotron" style="background-color:#337ab7;">-->
       <div class="wrapper" style="padding:25%;">


            <h2>Fresh Water!</h2>
            <h3>Customer Login </h3>
            <br></br>

            <form method="POST" action="customerconfirm.php">
           <div class="form-group"> <span class="glyphicon glyphicon-user"></span>
        <label for="usr">Username:</label>
         <input type="text" class="form-control" id="usr" name="username" required>
           </div>
           <div class="form-group"> <div class="form-group"> <span class="glyphicon glyphicon-lock"></span>
                 <label for="pwd">Password:</label>
                 <input type="password" class="form-control" id="pwd" name="pass" required>
           </div>
           <button type="submit" name="submit" class="btn btn-primary active">Log In</button>
           </form>
           </div>
       </div>
        </div>
       <!--<div class="row">-->
</div>
</div>

<p align="center"><a href="../index.html">Return to Index</a></p>

</div>
<div class="container">
</div>
    </body>
</html>
