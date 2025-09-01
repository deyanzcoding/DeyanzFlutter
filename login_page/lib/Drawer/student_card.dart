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

          //Table
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),

                child: Table(
                border: TableBorder.all(
                  width: 1.0,
                  color: AppColors.appThemeGrey,
                  style: BorderStyle.solid,
                ),
                columnWidths: const <int, TableColumnWidth>{
                  0: FixedColumnWidth(110.0), // Name column
                },

                children: [
                  // row1
                  TableRow(

                    // row1
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: TableCell(
                          child: Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 15.5,
                              color: Colors.white,
                              fontFamily: 'Rubik Regular',
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: TableCell(
                          child: Text(
                            'DEYAN AHMAD',
                            style: TextStyle(
                              fontSize: 15.5,
                              color: AppColors.appThemeGrey,
                              fontFamily: 'Rubik Regular',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // row2
                  TableRow(
                    children: <Widget>[
                      TableCell(child: Text('Session', style: TextStyle(fontSize: 15.5, color: Colors.white, fontFamily: 'Rubik Regular',),)),
                      TableCell(child: Text('Spring 2025')),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
