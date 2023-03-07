<?php
 if(isset($_POST['email'])){
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    
            try {
                //echo 'Message has been sent';
                include_once('modules/cart/add_dtb.php');
            }   catch (Exception $e) {
                echo "Error: {$e}";
            }
 }

?>
<div id="customer">
    <form id="frm" method="post">
        <div class="row">

            <div id="customer-name" class="col-lg-4 col-md-4 col-sm-12">
                <input placeholder="Họ và tên (bắt buộc)" type="text" name="name" class="form-control" required>
            </div>
            <div id="customer-phone" class="col-lg-4 col-md-4 col-sm-12">
                <input placeholder="Số điện thoại (bắt buộc)" type="text" name="phone" class="form-control" required>
            </div>
            <div id="customer-mail" class="col-lg-4 col-md-4 col-sm-12">
                <input placeholder="Email (bắt buộc)" type="text" name="email" class="form-control" required>
            </div>
            <div id="customer-add" class="col-lg-12 col-md-12 col-sm-12">
                <input placeholder="Địa chỉ nhà riêng hoặc cơ quan (bắt buộc)" type="text" name="address"
                    class="form-control" required>
            </div>

        </div>
    </form>
    <div class="row">
        <div class="by-now col-lg-6 col-md-6 col-sm-12">
            <a onclick="buyNow()">
                <b>Đặt hàng ngay</b>
            </a>
        </div>
    </div>
</div>
<!--	End Customer Info	-->
<script>
    function buyNow(){
        document.getElementById('frm').submit();
    }
</script>
