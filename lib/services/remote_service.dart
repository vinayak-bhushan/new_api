import 'package:http/http.dart' as http;
import 'package:news_api/models/post.dart';

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

        var uri = Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=759c417d12ae40eeaa6c8ff46b95a6e0');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}