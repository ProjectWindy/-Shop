import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componants/Shoe_Tile.dart';
import 'package:flutter_application_2/Model/Cart.dart';
import 'package:flutter_application_2/Model/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe){
      Provider.of<Cart>(context,listen: false).addItemtoCart(shoe);
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Them thanh cong'),
        content: Text("Check Your Cart"),
      ),);
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder: (context, value, child) => Column(
        // search Bar
        children: [Container(
          padding:const EdgeInsets.all(12),
          margin:const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[400],borderRadius: BorderRadius.circular(8)),
          
          child:const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search',style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search
              ),
            ],
          ),
        ),
        //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical:25),
            child: Text('Everyone Files.. Some fly longer than others',style: TextStyle(color: Colors.grey[600]),),
          ),
        //Hot Pick
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
             Text('HOT Picks',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24
            ),
            ),
            Text('See All',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blue),)
        
        
          ],
          ),
        ),
        const SizedBox(height: 20),

// Danh sach san pham

        Expanded(child:ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (content,index){
            // create a shoe from shop list 0-->end
          Shoe shoe = value.getShoeList()[index];
              // return the shoe
          return ShoeTile(
          shoe: shoe,
          onTap:()=> addShoeToCart(shoe),
        );
        },
        ),
        ),
       const Padding(
          padding:  EdgeInsets.only(top:25.0),
          child: Divider(
            color:Colors.black,
          ),
        )
         ],

    ),
    );
  }
}