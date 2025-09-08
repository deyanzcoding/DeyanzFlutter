import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Exampleusermodel2 extends StatefulWidget {
  const Exampleusermodel2({super.key});

  @override
  State<Exampleusermodel2> createState() => _Exampleusermodel2State();
}

class _Exampleusermodel2State extends State<Exampleusermodel2> {
  List<dynamic> data = [];

  Future<void> getUserApi() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    if (response.statusCode == 200) {
      for (Map i in data) {
        data = jsonDecode(response.body.toString());
      }
    } else {

    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Example user Model 2'),
        backgroundColor: Colors.red,
      ),

      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getUserApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text('Loading');
                } else {
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            ReusableRow(title: 'name', value: data[index]['name'].toString(),),
                            ReusableRow(title: 'username', value: data[index]['username'].toString(),),
                          ],
                        ),
                      );
                    });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {

  String title, value;
  ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value),
      ],
    );
  }
}

