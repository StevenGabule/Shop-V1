<?php
require_once '../views/top.php';
if (!isset($_SESSION['user']) || empty($_SESSION['user'])) {
    $_SESSION['msg'] = "Please Signup to proceed CheckOut";
    header("location:../signup.php");
} else {
    $user = $_SESSION['user'];
}
if(!isset($_REQUEST['cid'])){
    header("location:shopping_cart.php");
}

$obj_cart = new cart();
$obj_cart->cartID = $_REQUEST['cid'];
$result_cart = $obj_cart->get_items_by_cartid();
$result_item = $obj_cart->get_items_by_cartid();

?>
<script src="../js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function (e) {
        $("#order").click(function ()
        {
            alert("Order Successfully Added")
        });
    });
</script>


</head>
<body>
    <div class="container">
        <!--logo Area-->
        <?php
        require_once '../views/header.php';
        ?>
        <!--logo area closed-->
        <!-- Page Content -->



        <!--coursal-->
        <?php
//require_once './views/slider.php';
        ?> 
        <!--Coursal-->
        <!--Middle Nav-->

        <?php
//require_once './views/middle_nav.php';
        ?>        
        <!--Middle Nav close-->
        <div class="container">
            <div class="col-lg-12">
                <div class="col-md-12" >
                    <h2 class="page-header">Thank you for Shopping</h2>
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-8 panel panel-success">
                    <div class="panel panel-heading">
                        <h4 class="text-primary text-capitalize"><?php echo $user['username'] ?> Your order is:</h4>
                    </div>
                    <div class="panel panel-body">
                    
                        <table class="table table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>#</th>  
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Qty</th>
                                    <th>Sub-Total</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                            $counter= 1;
                            while($row_item=$result_item->fetch_array()){
                            ?>    
                                
                                <tr>
                                    <td><?php echo $counter; ?></td>  
                                    <td>
                                        <?php
                                        $obj_product = new product();
                                        $obj_product->productID=$row_item['product_ID'];
                                        $result_p=$obj_product->get_product_by_id();
                                        $row_pname=$result_p->fetch_array();
                                        echo $row_pname['product_name'];
                                        ?>
                                    </td>
                                    <td>$ <?php echo $row_item['price'];?></td>
                                    <td><?php echo $row_item['quantity'];?></td>
                                    <td>$
                                    <?php
                                        $st = $row_item["price"] * $row_item["quantity"];
                                        echo $st;
                                        ?>
                                    </td>
                                </tr>
                                <?php
                            $counter++;
                            }
                                ?>

                            </tbody>
                        </table>     
                        <div class="col-md-12">
                            <?php
                               
                               while ($row_cart = $result_cart->fetch_array()) {
                                    $total[] = $row_cart['price'] * $row_cart['quantity'];
                               }
                            ?>
                            <h4>Grand Total : $ <?php echo array_sum($total); ?></h4>
                        </div>
                        <div class="col-md-12">
                            <h4>Pay cash on delivery</h4>
                        </div>
                        <div class="col-md-12">
                            <h4>You will Get Your order Within 4 days</h4>
                        </div>


                    </div>
                    <div class="panel panel-footer">

                        <form class="form-horizontal" method="post" action="../process/process_cart.php?action=order">
                            
                            <input type="hidden" name="cartID" value="<?php echo $_REQUEST['cid'] ?>">
                            <input type="hidden" name="userID" value="<?php echo $user['userID']; ?>">
                            <input type="submit" value="Order" id="order" class="form-control btn-success">

                        </form>


                    </div>


                </div>
                <div class="col-md-2 "></div>
            </div>
        </div>
        <!-- Footer -->
        <hr>
        <?php
        require_once "../views/footer.php";
        ?>

        <!--Footer-->
        </body>

        </html>
