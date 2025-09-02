import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/widgets/button_component.dart';
import 'package:login_page/widgets/myInputField.dart';

import '../widgets/app_colors.dart';

class HostelScreen extends StatefulWidget {
  const HostelScreen({super.key});

  @override
  State<HostelScreen> createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen> {
  final TextEditingController _distanceController = TextEditingController();
  final TextEditingController _cgpaController = TextEditingController();

  bool _isPolicyAccepted = false;
  void _onSaveAndProceed() {
    if (_isPolicyAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Policy accepted. Proceeding...')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please accept the policy to proceed.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hostel Facility'),
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
                FaIcon(FontAwesomeIcons.hotel, size: 60),

                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'STUDENT HOSTEL',
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
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Please fill out the details below to apply for your Hostel Room:',
                style: TextStyle(fontSize: 15,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10,),

            // distince from awkum
            Myinputfield(
                controller: _distanceController,
                label: 'Distance from AWKUM (in Kilometers)',
                preIcons: Icon(Icons.route),
                boxValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter distance';
                  }
                  final distance = double.tryParse(value);
                  if (distance == null || distance <= 0) {
                    return 'Enter a positive number';
                  }
                  return null;
                },
            ),
            SizedBox(height: 12,),

            // your current cgpa
            Myinputfield(
                controller: _cgpaController,
                label: 'Your current CGPA',
                keyboardType: TextInputType.number,
                preIcons: Icon(Icons.emoji_events),
                boxValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter CGPA';
                  }
                  final cgpa = double.tryParse(value);
                  if (cgpa == null || cgpa < 0.0 || cgpa > 4.0) {
                    return 'Enter CGPA between 0.0 and 4.0';
                  }
                  return null;
                },
            ),
            SizedBox(height: 5,),

            Text('* Note: Not for 1st semester students', style: TextStyle(fontSize: 13, color: Colors.grey, ),),
            SizedBox(height: 10,),

            // save button
            MyButton(
                text: 'Save and Proceed',
                onPressed: () {
                  _afterApplyPress(context);
                }),
          ],
        ),
      ),
    );

  }
}

// making SnackBar
void _afterApplyPress(BuildContext context) {
  const snackBar = SnackBar(
    duration: Duration(seconds: 3),
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
    content: Text('🎉 Student Hostel Data Saved Successfully!!'),
    shape: RoundedRectangleBorder(side: BorderSide(width: 1, color: Colors.black45,),
        borderRadius: BorderRadius.all(Radius.circular(15))
    ),
    backgroundColor: Colors.green,
    elevation: 20,
  );

  //Show the SnackBar using the Scaffold Messenger
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}