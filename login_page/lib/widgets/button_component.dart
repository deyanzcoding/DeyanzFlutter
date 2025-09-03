import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? bColor;

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.bColor,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: onPressed, // Directly call the onPressed callback
        child: Container(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
            color: bColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'Rubik Medium',
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}