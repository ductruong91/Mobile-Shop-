<?php
    $date = date('Y-m-d H:i:s');
    $product='';
    foreach($_SESSION['cart'] as $id => $quantity){
        $product .= $id . ':' . $quantity . ';';
    }
    
    $sql = "INSERT INTO order_list(ord_name, ord_phone, ord_address,ord_mail, ord_date, ord_list, ord_status, ord_total)
    VALUES('$name', '$phone', '$address', '$email', '$date', '$product', 0, $total_cash)";
    mysqli_query($con, $sql);
    
?>