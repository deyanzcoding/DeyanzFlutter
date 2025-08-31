import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;

  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xffF9703B),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Rubik Medium',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
