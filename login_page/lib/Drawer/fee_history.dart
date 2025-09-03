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
              child: Text('Please fill out the details below to apply for your Transport Facility:',
                style: TextStyle(fontSize: 15,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10,),

            // fee history table
            DataTable(
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
                  DataCell(MyButton(text: '✅ Verified', bColor: Colors.green, onPressed: () {},)),
                ]),
              ],
            ),

          ],
        ),
      ),
      

    );
  }
}
