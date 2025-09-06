import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'post_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PostsModel> postList = [];

  Future<List<PostsModel>> getPostApi() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );

      if (response.statusCode == 200) {
        // Clear the list to avoid duplicates
        postList.clear();
        // Explicitly cast data to List<dynamic>
        final List<dynamic> data = jsonDecode(response.body);
        // Map the JSON data to PostsModel objects
        return data.map((json) => PostsModel.fromJson(json)).toList();
      } else {
        // Throw an error if the API call fails
        throw Exception('Failed to load posts: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any errors (e.g., network issues, JSON parsing errors)
      throw Exception('Error fetching posts: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('API Practice')),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<PostsModel>>(
              future: getPostApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Show loading indicator while fetching data
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  // Show error message if the API call fails
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                  // Display the data
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data![index].title ?? 'No Title'),
                        subtitle: Text(snapshot.data![index].body ?? 'No Body'),
                      );
                    },
                  );
                } else {
                  // Handle empty data case
                  return const Center(child: Text('No posts available'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}