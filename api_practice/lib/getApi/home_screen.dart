import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Models/post_models.dart';
import '../Models/post_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String? stringResponse;

class _HomeScreenState extends State<HomeScreen> {
  List<PostsModel> postList = [];

  Future apiCall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if(response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
      });
    }
  }

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API practices')),
      body: Column(
        children: [
         Center(
           child: Container(
             height: 200,
             width: 300,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.blue,
             ),
             child: Center(child: Text('GET request.',)),
           ),
         )

        ],
      ),
    );
  }
}
