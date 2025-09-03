import 'package:flutter/material.dart';
import 'package:login_page/widgets/app_colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
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
            color: AppColors.appThemeBold,
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

class MyMediumButton extends StatelessWidget {
  const MyMediumButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(child: Text('✅ Verified', style: TextStyle(fontFamily: 'Rubik Medium', fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),)),
    );
  }
}
