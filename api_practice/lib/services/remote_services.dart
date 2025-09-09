import 'package:api_practice/Models/post_models.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<PostsModel>?> getPosts() async {
    var client = http.Client();
    
    var uri = Uri.parse('');
  }
}