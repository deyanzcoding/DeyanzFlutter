import 'dart:convert';
import 'package:api_practice/Models/post_models.dart';
import 'package:api_practice/services/remote_services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Examplemodel extends StatefulWidget {
  const Examplemodel({super.key});

  @override
  State<Examplemodel> createState() => _ExamplemodelState();
}

class _ExamplemodelState extends State<Examplemodel> {

  List<PostsModel>? posts;
  var isLoaded = false;

@override
  void initState() {
    // TODO: implement initState
  super.initState();
  // fetch data from API
  getData();
}

  getData() async {
  //post = wait,
    posts = await RemoteService().getPosts();
    if(posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Api Practice')),

      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
            itemBuilder:(context, index) {
              return Container(

                // child: Text(PostsModel!.[index].title),
              );
            }
        ),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      )


    );
  }
}
