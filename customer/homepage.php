<?php include 'customerheader.php'; ?>

<!DOCTYPE html>
<html>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active" >
      <img src="../images/freshfish.jpg" alt="fish">
    </div>
  </div>
    <br>

		<div class="container">
		    <h2>Fresh Water Categories</h2>
            <br>
			<div class="row">
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Whole Fish</div>
						<div class="img-responsive"><a href = "categorypage.php?id=1"><img src="../images/whole_fish1.jpg" class="img-responsive" style="width:100%" alt="whole fish"></a></div>
						<div class="panel-footer">Check out our new selections!</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Fillet Fish</div>
						<div class="img-responsive"><a href = "categorypage.php?id=2"><img src="../images/fillet_fish.png" class="img-responsive" style="width:100%" alt="Fillet Fish"></a></div>
						<div class="panel-footer">Made with love!</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Crabs</div>
						<div class="img-responsive"><a href = "categorypage.php?id=3"><img src="../images/crab.png" class="img-responsive" style="width:100%" alt="Crabs"></a></div>
						<div class="panel-footer">Handled with care!</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Lobsters</div>
						<div class="img-responsive"><a href = "categorypage.php?id=4"><img src="../images/lobster.png" class="img-responsive" style="width:100%" alt="Lobsters"></a></div>
						<div class="panel-footer">From the best places!</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Oysters</div>
						<div class="img-responsive"><a href = "categorypage.php?id=5"><img src="../images/oysters.png" class="img-responsive" style="width:100%" alt="Oysters"></a></div>
						<div class="panel-footer"> Try our new selections!</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="panel panel-primary">
						<div class="panel-heading">Shrimps</div>
						<div class="img-responsive"><a href = "categorypage.php?id=6"><img src="../images/shrimp.png" class="img-responsive" style="width:100%" alt="Shrimps"></a></div>
						<div class="panel-footer"> Delicious Shrimps!</div>
					</div>
				</div>
			</div>
		</div><br><br>

		<?php include '../footer.php'; ?>
	</body>

</html>
