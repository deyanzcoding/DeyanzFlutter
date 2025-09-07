import 'dart:convert';

import 'package:api_practice/Models/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleUserModel extends StatefulWidget {
  const ExampleUserModel({super.key});

  @override
  State<ExampleUserModel> createState() => _ExampleUserModelState();
}

class _ExampleUserModelState extends State<ExampleUserModel> {
  List<UserModels> userList = [];

  Future<List<UserModels>> getUserApi() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        userList.add(UserModels.fromJson(i));
      }
      return userList;
    }
    return userList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('user GET api '),
        centerTitle: true,
      ),

      body: Expanded(
        child: FutureBuilder(
          future: getUserApi(),
          builder: (context, AsyncSnapshot<List<UserModels>> snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                         ReusableRow(title: 'Name', value: snapshot.data![index].name.toString()),
                         ReusableRow(title: 'Username', value: snapshot.data![index].username.toString()),
                         ReusableRow(title: 'Email', value: snapshot.data![index].email.toString()),
                         ReusableRow(title: 'Address', value: snapshot.data![index].address!.city.toString()),
                         ReusableRow(title: 'Company', value: snapshot.data![index].address!.city.toString()),
                         ReusableRow(title: 'Geo', value: snapshot.data![index].company!.name.toString()),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
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
