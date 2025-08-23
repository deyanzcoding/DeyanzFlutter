import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  static const String id = 'add_to_cart';
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Add to Cart'),
        ),
      
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            height: 300,
            width: 320,
            child: 
                Text('Confirm your Order', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
            decoration: BoxDecoration(
              color: Color(0xff1DB954),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 5, color: Colors.black26,)
            ),
          ),
          Text('Welcome to \'Add to Cart\'', style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),),
        ],
      ),
      
    );
  }
}
