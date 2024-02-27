import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componants/Bottom_navigator.dart';
import 'package:flutter_application_2/pages/CartPage.dart';
import 'package:flutter_application_2/pages/ShopPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex=0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  // page to display
  final List<Widget> _pages =[
    const ShopPage(),
    // cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index), 
      ),
      appBar: AppBar(backgroundColor : Colors.transparent,elevation:0,
      leading: Builder(builder: (context)=>IconButton(icon: const Icon(Icons.menu,color:Colors.black),onPressed: (){
        Scaffold.of(context).openDrawer();
      },
      ),
      ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [  DrawerHeader(child: Image.asset('lib/images/nike-logo.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),
// other pages  
            const Padding(
              padding:   EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
            ),
              const Padding(
              padding:   EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
              ),
            ),],
            ),
            
             const Padding(
              padding:   EdgeInsets.only(left: 25.0,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ),  
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}