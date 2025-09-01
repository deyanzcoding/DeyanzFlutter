import 'package:flutter/material.dart';

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
      ),
    );
  }
}
