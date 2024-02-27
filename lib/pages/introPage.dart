import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/Homepage.dart';

class  introPage  extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            // Logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/nike-logo.jpg',
              height:260,
              ),
            ),
            // Khoang trong
            const SizedBox(height: 48,),
            // Tittle
           const Text('Just Do It',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
              const SizedBox(height: 24,),
        
            // Sub Tittle
             const Text('Brand new sneakers and custom kicks made with prenium quality',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            
            ),textAlign: TextAlign.center,
            ),

            // Button
             const SizedBox(height: 24,),
            GestureDetector(
              onTap:() => Navigator.push(
                context,
                MaterialPageRoute(builder:(context)=>Homepage(),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(color:Colors.grey[900],
                borderRadius: BorderRadius.circular(25),
                ),   
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child:   Text("Show Now",
                  style: TextStyle(color:Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
                  
                  ),
                ),
                
              ),
            )
              ],
          ),
        ),
      ),
    );
  }
}