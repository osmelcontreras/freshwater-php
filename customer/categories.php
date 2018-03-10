<?php include 'customerheader.php'; 
      include 'categoryfunctions.php'; ?>
        
<!DOCTYPE html>
<html>
<!-- Creates a page which displays all categories. -->
<body>
<main>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active" >
      <img src="../images/freshfish.jpg" alt="fish">
    </div>
  </div>
    <aside>
        <h2>Categories</h2>
        <nav>
        <!-- Calls function from categoryfunctions.php to display categories. -->
            <?php echo all_categories() ?>
        </nav>           
    </aside>

</main>    
<?php include '../footer.php'; ?>
</body>
</html>
        
