import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_flutter_template/src/features/info_screen/data/datasource/info_remote_service.dart';

import '../data/models/model.dart';

final fakePostsProvider = ChangeNotifierProvider(((ref) => InfoController()));

class InfoController extends ChangeNotifier {
  List<FakePosts>? posts = [];
  bool isLoaded = false;

  InfoController() {
    loadPosts();
  }

  void loadPosts() async {
    posts = await FakeInfoRemoteService().getPosts();
    //I just want to see shimmers effect)))
    await Future.delayed(const Duration(seconds: 1)).whenComplete(() {
      isLoaded = true;
    });
    notifyListeners();
  }
}
