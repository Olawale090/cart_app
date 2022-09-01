<?php
include "carting_module.php";

interface Icoupon {
    public function run_discount(); 
}

class render_coupon extends cart_coupon implements Icoupon{
    public function __construct()
    {
        cart_coupon::__construct();
        $this->coupon_code = mysqli_real_escape_string($this->mysql,$_POST["product_coupon_code"]); 
        
    }

    public function run_discount(){
        if(!empty($this->coupon_code)){
            $run_discount = new cart_coupon();
            $run_discount->check_discount();
        }
    }
}

$render = new render_coupon();
$render->run_discount();



?>