import 'package:api_practice/Models/post_models.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<PostsModel>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
       // return PostsModel.fromJson(json);
    } else {

    }
  }
}