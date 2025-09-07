import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;

class Examplemodel extends StatefulWidget {
  const Examplemodel({super.key});

  @override
  State<Examplemodel> createState() => _ExamplemodelState();
}

class _ExamplemodelState extends State<Examplemodel> {
  List<Photos> photosList = [];

  Future<List<Photos>> getPhotos() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos'),
    );
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(title: i['title'], url: i['url']);
        photosList.add(photos);
      }
      return photosList;
    } else {
      return photosList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Api Practice')),

      body: Column(
        children: [
          Expanded( 
            child: FutureBuilder(
              future: getPhotos(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: photosList.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text('Deyan Ahmad'));
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Photos {
  String title, url;

  Photos({required this.title, required this.url});
}
