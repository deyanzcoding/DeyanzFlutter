import 'dart:convert';

import 'package:api_practice/Models/myOwnUserApi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ExampleMyOwnModel extends StatefulWidget {
  const ExampleMyOwnModel({super.key});

  @override
  State<ExampleMyOwnModel> createState() => _ExampleMyOwnModelState();
}

Future<List<MyOwnUserApi>> fetchPosts() async {
  final res = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if (res.statusCode == 200) {
    final List data = jsonDecode(res.body);
    return data.map((e) => MyOwnUserApi.fromJson(e)).toList();
  } else {
    throw Exception("Failed to load posts");
  }
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

      body: FutureBuilder<List<MyOwnUserApi>>(
        future: fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          final posts = snapshot.data!;
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final p = posts[index];
              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(p.firstName.toString()),
                  subtitle: Text(p.lastName.toString()),
                ),
              );
            },
          );
        },
      ),


    );
  }
}
