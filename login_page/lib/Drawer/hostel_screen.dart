import 'package:flutter/material.dart';

import '../widgets/app_colors.dart';

class HostelScreen extends StatefulWidget {
  const HostelScreen({super.key});

  @override
  State<HostelScreen> createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hostel Facility'),
        backgroundColor: AppColors.appThemeBold,
      ),
    );
  }
}
