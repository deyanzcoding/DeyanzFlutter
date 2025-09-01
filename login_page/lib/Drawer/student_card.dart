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
        // DataTable(
        //   columns: [
        //     DataColumn(label: Text('Name')),
        //     DataColumn(label: Text('Age')),
        //   ],
        //   rows: [
        //     // row1
        //     DataRow(cells: [
        //       DataCell(Text('Deyan')),
        //       DataCell(Text('18')),
        //     ],
        //     ),
        //
        //     // row2
        //     DataRow(cells: [
        //       DataCell(Text('Hasnain')),
        //       DataCell(Text('19')),
        //     ],
        //     )
        //   ],
        // )
        
        Table(
          border: TableBorder.all(color: Colors.black12),
          columnWidths: {
            0: FlexColumnWidth(2), // Left column (labels)
            1: FlexColumnWidth(3), // Right column (inputs)
          },
          children: [
            _buildRow("Name", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Father Name", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Session", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Campus", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Discipline", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Semester", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Card Fee", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Total Amount", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Issue Date", TextField(decoration: InputDecoration(border: InputBorder.none))),
            _buildRow("Last Date", TextField(decoration: InputDecoration(border: InputBorder.none))),
          ]
        ),
        
        
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