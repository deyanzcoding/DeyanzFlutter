import 'package:flutter/material.dart';

const Color kGreyColor = Colors.grey;
const Color kBlueColor = Colors.blue;
const Color kWhiteColor = Colors.white30;

const headingTextStyle = TextStyle(fontSize: 30, color: Color(0xff34d53c), fontWeight: FontWeight.w500);
const buttonTextStyle = TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w200);

class MyButton extends StatelessWidget {
final String title, subtitle;

  const MyButton({
    super.key,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: Text(title + subtitle, style: buttonTextStyle),),
      ),
    );
  }
}
