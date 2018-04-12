<?php
require_once './views/top.php';
?>
</head>
<body>

    <!--logo Area-->
    <?php
    require_once './views/header.php';
    ?>
    <!--logo area closed-->
    <!--coursal-->
    <?php
    require_once './views/slider.php';
    ?> 
    <!--Coursal-->
    <!-- Page Content -->



    <div class="container">
        <!--Middle Nav-->

        <?php
//require_once './views/middle_nav.php';
        ?>        
        <!--Middle Nav close-->

        <div class="col-md-7">
            <br>
            <iframe id="google_map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d217764.17293742788!2d74.21364918405908!3d31.48114473840981!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39190483e58107d9%3A0xc23abe6ccc7e2462!2sLahore%2C+Pakistan!5e0!3m2!1sen!2s!4v1449558386036" 
                    width="600" height="450" frameborder="2" style="border:0" allowfullscreen>

            </iframe>

        </div>
        <div class="col-md-4">
            <br>	
            <h4>Owner Info :</h4>
			<div class="col-md-12">
			<div class="col-sm-5 col-lg-5 col-md-5">
			<img class="img-responsive thumbnail" src="images/2.jpg">
			</div>
			<div class="col-md-7">
			<label class="control-label">Abdullah Tariq</label><br>
			<label class="control-label">CEO</label><br>
			<label class="control-label">Study ICS(phy)</label><br>
			<label class="control-label">Live in Lahore,Pakistan</label><br>
			</div>
			</div>
        </div>





    </div>

    <!-- Footer -->
    <hr>
    <?php
    require_once "./views/footer.php";
    ?>

    <!--Footer-->
</body>

</html>
