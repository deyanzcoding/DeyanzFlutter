import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hostel Facility'),
        backgroundColor: AppColors.appThemeBold,
        foregroundColor: Colors.white,
      ),

      body: Column(
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

          Myinputfield(
              controller: _distanceController,
              hintText: 'Distance from AWKUM (in Kilometers)',
              preIcons: Icon(Icons.location_on),

          ),

        ],
      ),
    );
  }
}
