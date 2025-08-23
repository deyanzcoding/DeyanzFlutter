import 'package:building_ui_and_navigation/add_to_cart.dart';
import 'package:building_ui_and_navigation/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
          backgroundColor: Colors.red,
        ),
      
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                  currentAccountPicture: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSR-dez27VzWPTKhNi5kQf-aNDxuBo1LQ1-Q&s'),
                  ),
                  accountName: Text('Deyan Ahmad'),
                  accountEmail: Text('deyanzcoding@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),

              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Add to cart'),
                onTap: () {
                  Navigator.pushNamed(context, AddToCart.id);
                },
              ),

              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
                onTap: () {
                  Navigator.pushNamed(context, AddToCart.id);
                },
              ),


            ],
          ),
        ),

        body: Center(
          child: TextButton(onPressed: () {
            Navigator.pushNamed(context, ScreenTwo.id);

            //this code is for Navigator.push
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => ScreenTwo())
            // );
          },
              child: Text('Screen 1')
          ),
        ),
      ),
    );
  }
}
