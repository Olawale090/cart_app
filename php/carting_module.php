<?php

interface Icarter {
    public function database_connection();
    public function check_discount(); 
}

abstract class cart_coupon implements Icarter{
    public function __construct()
    {
        $this->mysqli = new mysqli('localhost','root','','lattire');
        $this->customer_email = "mosesolawale21@gmail.com";

        $customer_email = $this->customer_email;

        $query = " SELECT SUM(product_price) FROM customer_cart 
                    WHERE customer_email = '$customer_email';
                ";

        $passQuery = $this->mysqli->query($query,MYSQLI_USE_RESULT);
        $passAllData = $passQuery->fetch_all(MYSQLI_ASSOC);
        $total_price = $passAllData[0]["SUM(product_price)"];
        $this->total_price = $total_price;
        
    }

    public function database_connection(){

        if (mysqli_connect_errno()) {
            
            echo " Connection failed, please try again ";
        
        }

    }

    public function check_discount(){

        $customer_email = $this->customer_email;

        $query = " SELECT * FROM customer_cart 
                   WHERE customer_email = '$customer_email';
                ";

        $passQuery = $this->mysqli->query($query,MYSQLI_USE_RESULT);
        $passAllData = $passQuery->fetch_all(MYSQLI_ASSOC);
        
        try {
            if ($passAllData) {

                $carted_products = count($passAllData);

                if ($this->total_price > 50 || $this->total_price < 101){

                    if ($carted_products == 1){

                        echo $this->total_price - 10;

                    }
                }
                
                if ($this->total_price > 100 || $this->total_price < 201) {
                    if ($carted_products == 2){

                        echo $this->total_price * 10/100;

                    }
                }
                
                if ($this->total_price > 200 || $this->total_price <1000) {

                    if ($carted_products == 3){

                        $ten_percent = $this->total_price * 10/100;
                        $ten_dollar = $this->total_price - 10;

                        if($ten_percent > $ten_dollar){

                            echo $ten_percent;

                        }elseif($ten_dollar > $ten_percent){

                            echo $ten_dollar;

                        }

                    }
                }
                
                if ($this->total_price > 1000) {

                        $ten_percent = $this->total_price * 10/100;
                        $ten_dollar = $this->total_price - 10;

                        if($ten_percent > $ten_dollar){

                            echo $ten_percent;

                        }elseif($ten_dollar > $ten_percent){

                            echo $ten_dollar;

                        }   
                }

                
            }else{
                echo "Fetching failed ";
                
            }
        } catch (Exception $e){
            echo "Error in Query passed : ".$e;
        }
            
        
    }
}

?>