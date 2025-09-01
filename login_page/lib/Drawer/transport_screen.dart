import 'package:flutter/material.dart';

import '../widgets/app_colors.dart';

class TransportScreen extends StatefulWidget {
  const TransportScreen({super.key});

  @override
  State<TransportScreen> createState() => _TransportScreenState();
}

class _TransportScreenState extends State<TransportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transport Facility'),
        backgroundColor: AppColors.appThemeBold,
      ),

    );
  }
}
