import 'package:flutter/material.dart';

class ExampleMyOwnModel extends StatefulWidget {
  const ExampleMyOwnModel({super.key});

  @override
  State<ExampleMyOwnModel> createState() => _ExampleMyOwnModelState();
}

class _ExampleMyOwnModelState extends State<ExampleMyOwnModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My rest api project'),
        centerTitle: true,
        backgroundColor: Colors.red,
        
      ),
    );
  }
}
