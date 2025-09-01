import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/app_colors.dart';

class StudentCard extends StatefulWidget {
  const StudentCard({super.key});

  @override
  State<StudentCard> createState() => _StudentCardState();
}

final TextEditingController _studentName = TextEditingController();
final TextEditingController _fatherName = TextEditingController();
final TextEditingController _session = TextEditingController();
final TextEditingController _campus = TextEditingController();
final TextEditingController _decipline = TextEditingController();
final TextEditingController _semester = TextEditingController();


class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Card'),
        backgroundColor: AppColors.appThemeBold,
      ),
      body: SingleChildScrollView(
        child: Column(
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
        DataTable(
          columns: [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
          ],
          rows: [
            // row1
            DataRow(cells: [
              DataCell(Text('Deyan')),
              DataCell(Text('18')),
            ],
            ),

            // row2
            DataRow(cells: [
              DataCell(Text('Hasnain')),
              DataCell(Text('19')),
            ],
            )
          ],
        )
        

        
          ],   // column-children
        ),
      ),

    );
  }
}


TableRow _buildRow(String title, Widget inputField) {
  return TableRow(
    children: [
      Padding(
        padding: EdgeInsets.all(8),
        child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: EdgeInsets.all(8),
        child: inputField,
      ),
    ],
  );
}