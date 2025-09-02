import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/widgets/button_component.dart';
import 'package:login_page/widgets/myInputField.dart';
import 'package:intl/intl.dart';
import '../widgets/app_colors.dart';

class StudentCard extends StatefulWidget {
  const StudentCard({super.key});

  @override
  State<StudentCard> createState() => _StudentCardState();
}

final TextEditingController _studentNameController = TextEditingController();
final TextEditingController _fatherNameController = TextEditingController();
final TextEditingController _sessionController = TextEditingController();
final TextEditingController _campusController = TextEditingController();
final TextEditingController _deciplineController = TextEditingController();
final TextEditingController _phoneController = TextEditingController();
final TextEditingController _cnicController = TextEditingController();
final TextEditingController _addressController = TextEditingController();

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {

    // issue & last date
    DateTime issueDate = DateTime.now();
    DateTime lastDate = DateTime(issueDate.year+4, issueDate.month, issueDate.day);

    // formate the dates
    String formattedIssueDate = "${issueDate.day}/${issueDate.month}/${issueDate.year}";
    String formattedLastDate = "${lastDate.day}/${lastDate.month}/${lastDate.year}";

    // Date picking and update the field
    Future<void> _selectDate() async {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2026),
      );
        if(pickedDate != null ) {
          setState(() {
            _sessionController.text = DateFormat('M/d/yyyy').format(pickedDate);
          });
        }
    }

    // to clean-up the memory
    @override
    void dispose() {
      _sessionController.dispose();
      super.dispose();
    }

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
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('Please fill out the details below to apply for your student identification card.',
                style: TextStyle(fontSize: 15,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                  color: AppColors.appThemeBold,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.upload),
                    Text('Upload your\npicture.', style: TextStyle(fontSize: 10),),
                  ],
                ),
                ),
            ),
            SizedBox(height: 20),

            // student idCard information
            //student name inputField
            Myinputfield(
                controller: _studentNameController,
                label: 'Student Name',
                preIcons: Icon(Icons.account_circle),
            ),
            const SizedBox(height: 13),

            //father name inputField
            Myinputfield(
                controller: _fatherNameController,
                label: 'Father Name',
                preIcons: Icon(Icons.family_restroom),
            ),
            const SizedBox(height: 13),

            // session name
            Myinputfield(
                controller: _sessionController,
                label: 'Session(batch)',
                preIcons: Icon(Icons.schedule),
                suffIcon: IconButton(
                  icon: Icon(Icons.calendar_month,),
                  onPressed: () {
                    _selectDate();
                  },
                ),
            ),
            const SizedBox(height: 13,),

            // campus name
            Myinputfield(
                controller: _campusController,
                label: 'Campus',
                preIcons: Icon(Icons.school),
            ),
            const SizedBox(height: 13,),

              // decipline inputField
            Myinputfield(
                controller: _deciplineController,
                label: 'Decipline',
                preIcons: Icon(Icons.computer),
            ),
            const SizedBox(height: 13),

            // semester inputField
            Myinputfield(
                controller: _phoneController,
                label: 'Phone No',
                keyboardType: TextInputType.phone,
                preIcons: Icon(Icons.phone),
            ),
            const SizedBox(height: 13),

            // CNIC inputField
            Myinputfield(
                controller: _cnicController,
                label: 'CNIC',
                keyboardType: TextInputType.phone,
                preIcons: Icon(Icons.badge),
            ),
            const SizedBox(height: 13),

            // address inputField
            Myinputfield(
                controller: _addressController,
                label: 'Address',
                keyboardType: TextInputType.text,
                preIcons: Icon(Icons.location_on),
            ),
            const SizedBox(height: 13),

            // Upload recipt inputField
            Myinputfield(
              // enableDisable: false,
              readOnly: true,
              label: 'Upload Bank Recipt',
              preIcons: Icon(Icons.upload),
              suffIcon: Icon(Icons.photo),
            ),
            const SizedBox(height: 13),

            // cardFee inputField
            Myinputfield(
                enableDisable: false,
                hintText: 'Card Fee: 200 PKR',
                preIcons: Icon(Icons.credit_card,),
            ),
            const SizedBox(height: 13),

            // issueDate inputField
            Myinputfield(
              enableDisable: false,
                hintText: 'Issue Date: $formattedIssueDate',
                preIcons: Icon(Icons.event_note,),
            ),
            const SizedBox(height: 13),

            // lastDate inputField
            Myinputfield(
              enableDisable: false,
                hintText: 'Last Date: $formattedLastDate',
                preIcons: Icon(Icons.calendar_month,),
            ),
            const SizedBox(height: 13),


            MyButton(
             text: 'Appy',
             onPressed: () {
               _afterApplyPress(context);
            }),
            
          ], // column-children
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
      content: Text('🎉 Successfully applied for Student Card!!'),
      shape: RoundedRectangleBorder(side: BorderSide(width: 1, color: Colors.black45,),
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
    backgroundColor: Colors.green,
    elevation: 20,
  );

  //Show the SnackBar using the Scaffold Messenger
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}