import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componants/CartItem.dart';
import 'package:flutter_application_2/Model/Cart.dart';
import 'package:flutter_application_2/Model/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: (context,value,child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal :25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Cart",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),
          ),
          const SizedBox(height: 20),

          Expanded(child:ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context,index){
              Shoe indvidualShoe = value.getUserCart()[index];
              return CartItem(shoe: indvidualShoe,);
          },
          ),
          ),
        ],
        
      ),
    ),
    );
  }
}