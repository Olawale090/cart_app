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
        $this->total_price_holder = $_POST["total_price_holder"];
        $this->coupons = ["$10DISC","","10%DISC","REJECTED10"];
        $this->total_price = 78; 
    }

    public function pass_total(){
        if($this->total_price > 50){

            return $this->total_price = $this->total_price - 10;

        }else if($this->total_price>100){
            $ten_percent = $this->total_price * 0.1;
            if ($ten_percent>10){
                return $this->total_price = $ten_percent;
            }else{
                return $this->total_price = $this->total_price - 10;
            }
           

        }else if($this->total_price>200){

            return $this->total_price = $this->total_price * 0.1;

        }else if($this->total_price>1000){
            return $this->total_price = $this->total_price - 10;
        }
    }

    public function check_discount(){
        
    }
}



?>