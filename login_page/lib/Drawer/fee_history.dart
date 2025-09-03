import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/widgets/button_component.dart';

import '../widgets/app_colors.dart';

class FeeHistory extends StatefulWidget {
  const FeeHistory({super.key});

  @override
  State<FeeHistory> createState() => _FeeHistoryState();
}

class _FeeHistoryState extends State<FeeHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fee History'),
        backgroundColor: AppColors.appThemeBold,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.moneyCheckDollar, size: 65),

                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'STUDENT FEE',
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.blackBold,
                        fontFamily: 'Rubik Medium',
                      ),
                    ),
                    Text(
                      'History',
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
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Contact with IT dept for any issue or wrong data entry.',
                style: TextStyle(fontSize: 15,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10,),

            // fee history table
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DataTable(
                  headingRowHeight: 43,
                  dataRowMinHeight: 15,
                  dataRowMaxHeight: 35,
                  border: TableBorder.all(width: 1, color: Colors.grey, borderRadius: BorderRadius.circular(15)),
                  dataTextStyle: TextStyle(fontSize: 14),

                  columnSpacing: 19,
                     columns: [
                       DataColumn(label: Text('#')),
                       DataColumn(label: Text('Semester')),
                       DataColumn(label: Text('Fee Type')),
                       DataColumn(label: Text('Fee Date')),
                       DataColumn(label: Text('Amount')),
                       DataColumn(label: Text('Receipt No')),
                       DataColumn(label: Text('Date')),
                       DataColumn(label: Text('Status')),
                     ],
                  rows: [
                    // 1st row
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('1st')),
                      DataCell(Text('Semester Fee')),
                      DataCell(Text('27/7/2023')),
                      DataCell(Text('65,000')),
                      DataCell(Text('42884390438')),
                      DataCell(Text('July 27, 2023')),
                      DataCell(MyMediumButton()),
                    ]),

                    // 2nd row
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Text('2nd')),
                      DataCell(Text('Semester Fee')),
                      DataCell(Text('14/3/2024')),
                      DataCell(Text('65,000')),
                      DataCell(Text('42884390438')),
                      DataCell(Text('March 3, 2024')),
                      DataCell(MyMediumButton()),
                    ]),

                    // 3rd row
                    DataRow(cells: [
                      DataCell(Text('3')),
                      DataCell(Text('3rd')),
                      DataCell(Text('Semester Fee')),
                      DataCell(Text('13/8/2024')),
                      DataCell(Text('65,000')),
                      DataCell(Text('42884390438')),
                      DataCell(Text('August 13, 2024')),
                      DataCell(MyMediumButton()),
                    ]),

                    // 2nd row
                    DataRow(cells: [
                      DataCell(Text('4')),
                      DataCell(Text('4th')),
                      DataCell(Text('Semester Fee')),
                      DataCell(Text('28/2/2025')),
                      DataCell(Text('65,000')),
                      DataCell(Text('42884390438')),
                      DataCell(Text('Feb 28, 2025')),
                      DataCell(MyMediumButton()),
                    ]),
                  ],
                ),
              ),
            ),

            MyButton(text: 'Report any problem', onPressed: (){}),
          ],
        ),
      ),
      

    );
  }
}
