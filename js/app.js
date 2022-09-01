"use strict";

const main_product_loader = function(){

    this.cart_container = document.querySelector(".cart_container");
    this.total_price = document.querySelector(".total");

    // this.coupon = ["$10DISC","","10%DISC",""];

};

main_product_loader.prototype = {

    load_products(){

        const xhr = new XMLHttpRequest(); 
        xhr.open('GET','php/load_cart.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

        xhr.onload = ()=> {
                
                if (xhr.status === 200) {

                    var data = JSON.parse(xhr.responseText);
                    console.log(data);
                    for(let i=0; i<data.length; i++){

                        let path = data[i].productpicdir;
                        let newpath = path.slice(3);

                        this.cart_container.innerHTML += `
                            <div class="cart">
                                <img class="product_image" src="${newpath}" alt="product picture">
                                <div class="product_details">
                                    <div class="product_name">${data[i].product_name}</div>
                                    <div class="product_price">$${data[i].product_price}</div>
                                </div>
                            </div>
                        `;
                    }
                }
        }

        xhr.send();

    },

    show_total_price(){
        const xhr = new XMLHttpRequest(); 
        xhr.open('GET','php/load_cart.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

        xhr.onload = ()=> {
                
                if (xhr.status === 200) {

                    var data = JSON.parse(xhr.responseText);
                    
                    var price1 = Number(data[0].product_price);
                    var price2 = Number(data[1].product_price);
                    var price3 = Number(data[2].product_price);
                    
                    let calculated_total = price1 + price2 + price3;
                    this.total_price.innerHTML = "Total: $"+calculated_total;
                    
                }
        }

        xhr.send();
    },

    run_discount(){
        const xhr = new XMLHttpRequest(); 
        xhr.open('GET','php/load_cart.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

        xhr.onload = ()=> {
                
                if (xhr.status === 200) {
                    
                }
        }

        xhr.send();
    }

};

const loader = new main_product_loader();
loader.load_products();
loader.show_total_price();




