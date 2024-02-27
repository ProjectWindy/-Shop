// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_2/Model/shoe.dart';

import '../Model/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
void Function()? onTap;

  ShoeTile({
    Key? key,
  required this.shoe,
   required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(color: Colors.grey[100],
      borderRadius: BorderRadius.circular(12)),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween
        ,
        children: [
          // shoe pic
          ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset(shoe.imagePath)),
          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(shoe.description,style: TextStyle(color: Colors.grey[600]),),
          ),
          
          // Price
          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(shoe.name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          
                  const SizedBox(height: 5,),
          
                  Text('\$'+shoe.price,style: const TextStyle(color:Colors.grey),),
          
                ],
              ),
              // button
              GestureDetector(
                onTap:onTap ,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))),
                  child: Icon(Icons.add,color: Colors.white,)),
              ),
          
            ],
            ),
          ),
        ],
      ),
    );
  }
}
