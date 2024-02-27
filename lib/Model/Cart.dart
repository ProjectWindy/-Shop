import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
List <Shoe>  shoeShop =[
Shoe(name: "Zoom FREAK",
 price: "236",
 imagePath: "lib/images/air-jordan-1-mid-se-craft-shoes-n5bFMW.jpg",
  description: "Mo ta"),

Shoe(name: "Air Jordans",
price: "235",
imagePath: "lib/images/air-jordan-1-elevate-high-shoes-rKPNHR.jpg",
description: "Mo ta"),

Shoe(name: "KD Tryes",
 price: "234",
 imagePath: "lib/images/air-jordan-1-mid-shoes-86f1ZW.jpg",
description: "Mo ta"),

Shoe(name: "Kyrie 6",
price: "232",
imagePath: "lib/images/air-jordan-1-mid-older-shoes-wqHdzW.jpg",
description: "Mo ta"),
  ];


  // list of items in users cart
  List<Shoe> userCart=[

  ];

  // get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  // get cart
   List<Shoe> getUserCart(){
    return userCart;
  }

  // add items
  void addItemtoCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  // remove
   void removeItemfromCart(Shoe shoe){
    userCart.remove(shoe);
        notifyListeners();

   }
  //  2:15:24
  // remove item from cart
  
   
}