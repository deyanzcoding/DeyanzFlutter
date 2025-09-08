import 'package:/flutter/material.dart';

import 'Models/myOwnUserApi.dart';

class ExampleMyOwnModel extends StatefulWidget {
  const ExampleMyOwnModel({super.key});

  @override
  State<ExampleMyOwnModel> createState() => _ExampleMyOwnModelState();
}

class _ExampleMyOwnModelState extends State<ExampleMyOwnModel> {

  Future<MyOwnUserApi> getProductsApi () async {
    final data = await  
  }

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
