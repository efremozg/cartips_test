import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_flutter_template/src/features/info_screen/data/models/model.dart';

class FakeInfoRemoteService {
  Future<List<FakePosts>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return fakePostsFromJson(json);
    } else {
      throw Exception('Failed to load Hot Sales');
    }
  }
}
