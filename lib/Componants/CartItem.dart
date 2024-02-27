// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Model/Cart.dart';

import 'package:flutter_application_2/Model/shoe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
    CartItem({
    Key? key,
    required this.shoe,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}
class _CartItemState extends State<CartItem> {
  void removeItemfromCart () {
    Provider.of<Cart>(context,listen: false).removeItemfromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(8)),
      
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),  
        trailing:IconButton(
         icon:  Icon(Icons.delete),
         onPressed: removeItemfromCart,
         ),
        
    
      ),
    );
  }
}