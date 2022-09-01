<?php
include "carting_module.php";

interface Icoupon {
    public function run_discount(); 
}

class render_coupon extends cart_coupon{
    public function __construct()
    {
        cart_coupon::__construct();
        $this->coupon_code = mysqli_real_escape_string($this->mysqli,$_POST["product_coupon_code"]); 
        
    }

    
}

class coupon_processor extends render_coupon implements Icoupon{
    public function __construct()
    {
        render_coupon::__construct();
        
    }

    public function run_discount(){
        echo $this->coupon_code;
        if(!empty($this->coupon_code)){
            if($this->coupon_code == "yq8s98"){
                $run_cart_coupon = new render_coupon();
                $run_cart_coupon->database_connection();
                $run_cart_coupon->check_discount();
            }else{
                echo "Please enter correct code";
            }
            
        }else{
            echo 'Please enter coupon code';
        }

    }
}

$processor = new coupon_processor();
$processor->run_discount();



?>