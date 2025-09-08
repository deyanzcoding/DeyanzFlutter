import 'dart:convert';

import 'package:/flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/myOwnUserApi.dart';

class ExampleMyOwnModel extends StatefulWidget {
  const ExampleMyOwnModel({super.key});

  @override
  State<ExampleMyOwnModel> createState() => _ExampleMyOwnModelState();
}

class _ExampleMyOwnModelState extends State<ExampleMyOwnModel> {

  Future<MyOwnUserApi> getProductsApi () async {
    final response = await http.get(Uri.parse('https://webhook.site/084ee7eb-9208-4972-915c-176ef8295700'));

        var data = jsonDecode(response.body.toString());
        if(response.statusCode == 200) {
          return MyOwnUserApi.fromJson(json);
        } else {
          return MyOwnUserApi.fromJson(json);
        }
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
          Expanded(
              child: FutureBuilder<MyOwnUserApi>(
                future: getProductsApi(),
                  builder: (context, snapshot) {
                      return ListView.builder(
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (context, index) {

                        },
                      );
                  })

          )
        ],
      ),
    );
  }
}
