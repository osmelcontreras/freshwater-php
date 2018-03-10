<!DOCTYPE html>
<!--Creates header to be displayed on each page.-->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Fresh Water</title>
  			<meta name="viewport" content="width=device-width, initial-scale=1">
  			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  			<link rel="stylesheet" type="text/css" href="../productStyle.css">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
	    <div class="container">
		<nav class="navbar navbar" style="margin-bottom:0px;">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="glyphicon glyphicon-menu-hamburger"></span>

					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class = "navbar-brand" href="homepage.php">Fresh Water</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					 <!--style ="color: #9d9d9d;padding-top: 15px;padding-bottom: 15px;font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;"-->
			    	<div class="dropdown" style ="color:#337ab7;padding-top: 15px;padding-bottom: 15px;>
			        	<a href = "categories.php"><span class="glyphicon glyphicon-th-large"></span> Categories</a>
			        	<div class="dropdown-content">
			            	<a href = "categorypage.php?id=1">Whole Fish</a>
			            	<a href = "categorypage.php?id=2">Fillet Fish</a>
			            	<a href = "categorypage.php?id=3">Crabs</a>
			            	<a href = "categorypage.php?id=4">Lobster</a>
			            	<a href = "categorypage.php?id=5">Oysters</a>
			            	<a href = "categorypage.php?id=5">Shrimps</a>
			         	</div>
			      	</div>
                                <form class="navbar-form navbar-right" role="search" method="post" action="search.php">
                                   <div class="input-group">
                                   <input type="text" class="form-control" placeholder="Search" name="searchterm">
                                   <span class="input-group-btn">
                                     <button type="submit" class="btn btn-default">
                                     <span class="glyphicon glyphicon-search"></span>
                                     </button>
                                   </span>
                                   </div>
                                </form>

					<li><a href="viewCart.php"><span class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
                                        <li><a href="customersignup.php"><span class="glyphicon glyphicon-pencil"></span> Register</a></li>
					<li><a href="customerlogout.php"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</div>
	</body>
</html>
