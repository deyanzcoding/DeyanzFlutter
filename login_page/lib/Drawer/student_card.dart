import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/app_colors.dart';

class StudentCard extends StatefulWidget {
  const StudentCard({super.key});

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Card'),
        backgroundColor: AppColors.appThemeBold,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //idCard and text
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.idCard, size: 60),

              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'STUDENT CARD',
                    style: TextStyle(
                      fontSize: 22,
                      color: AppColors.blackBold,
                      fontFamily: 'Rubik Medium',
                    ),
                  ),
                  Text(
                    'APPLICATION FORM',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff710000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),

          // student idCard information
          

        ],
      ),



    );
  }
}
