import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/app_colors.dart';
import '../widgets/button_component.dart';
import '../widgets/myInputField.dart';

class TransportScreen extends StatefulWidget {
  const TransportScreen({super.key});

  @override
  State<TransportScreen> createState() => _TransportScreenState();
}

class _TransportScreenState extends State<TransportScreen> {
  final TextEditingController _transitCorridorController = TextEditingController();
  final TextEditingController _transitCorridorStopController = TextEditingController();

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
        title: const Text('Transport Facility'),
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
                FaIcon(FontAwesomeIcons.bus, size: 60),

                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'STUDENT TRANSPORT',
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
              child: Text('Please fill out the details below to apply for your Transport Facility:',
                style: TextStyle(fontSize: 15,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10,),

            // transit corridor
            Myinputfield(
              controller: _transitCorridorController,
              label: 'Transit Corridor',
              preIcons: Icon(Icons.add_road),
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

            // transit corridor stop
            Myinputfield(
              controller: _transitCorridorStopController,
              label: 'Transit Corridor Stop',
              keyboardType: TextInputType.text,
              preIcons: Icon(Icons.emoji_transportation),
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
    content: Text('🎉 Data Saved for Transport Facility, Successfully!!'),
    shape: RoundedRectangleBorder(side: BorderSide(width: 1, color: Colors.black45,),
        borderRadius: BorderRadius.all(Radius.circular(15))
    ),
    backgroundColor: Colors.green,
    elevation: 20,
  );

  //Show the SnackBar using the Scaffold Messenger
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}