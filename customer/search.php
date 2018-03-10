<?php include 'customerheader.php'; ?>
<html>
<head>
  <meta charset = "utf-8">
  <title>Search Results</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="productStyle.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="container-fluid">
<h1>Search Results</h1>
<?php include '../dbh.php';
  $searchterm=trim($_POST['searchterm']);
  echo "<p>You search for: ".$searchterm."</p>";

  if (!$searchterm) {
     echo 'You have not entered search details.  Please go back and try again.';
     exit;
  }

  if (!get_magic_quotes_gpc()){
    $searchterm = addslashes($searchterm);
  }

  //search the products for the search term
  $query = "SELECT * FROM product WHERE `p_Name` LIKE '%".$searchterm."%'";
  $result = $db->query($query);

  $num_results = $result->num_rows;

  //display results
  echo "<p>Number of products found: ".$num_results."</p>";
  for ($i=0; $i <$num_results; $i++) {
     $row = $result->fetch_assoc();
     echo "<p><strong>".($i+1).". Product Name: ";
     echo htmlspecialchars(stripslashes($row['p_Name']));
     echo "<br />Price: ";
     echo stripslashes($row['p_Price']);
     echo "</p>";
  }

  $result->free();
  $db->close();
