import 'package:api_practice/Models/myOwnUserApi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleMyOwnModel extends StatefulWidget {
  const ExampleMyOwnModel({super.key});

  @override
  State<ExampleMyOwnModel> createState() => _ExampleMyOwnModelState();
}

Future<MyOwnUserApi> getUserApi() async {
  final response = await http.get(Uri.parse('	https://webhook.site/084ee7eb-9208-4972-915c-176ef8295700'));
  
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

      body: Column(),

    );
  }
}
