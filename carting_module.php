<?php

interface Icarter {
    public function properties();
    public function check_discount();
    public function pass_total();
}

abstract class cart_coupon implements Icarter{
    public function __construct()
    {
        $this->coupon_input = $_POST["product_coupon"];
        $this->coupons = ["FIXED10","PERCENT10","MIXED10","REJECTED10"];
        $this->total_price = 78; 
    }

    public function pass_total(){
        echo $this->total_price;
    }

    public function check_discount(){
        if($this->total_price > 50){

            return $this->total_price = $this->total_price - 10;

        }else if($this->total_price>100){

            return $this->total_price = $this->total_price * 0.1;

        }else if($this->total_price>200){

            return $this->total_price = $this->total_price * 0.1;

        }else if($this->total_price>1000){
            return $this->total_price = $this->total_price - 10;
        }
    }
}



?>