import 'package:/flutter/material.dart';

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
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: Text('My Own Model'),
      ),

      body: Column(
        children: [

        ],
      ),
    );
  }
}
