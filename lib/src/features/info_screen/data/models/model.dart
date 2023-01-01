import 'dart:convert';

List<FakePosts> fakePostsFromJson(String str) =>
    List<FakePosts>.from(json.decode(str).map((x) => FakePosts.fromJson(x)));

String fakePostsToJson(List<FakePosts> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FakePosts {
  FakePosts({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory FakePosts.fromJson(Map<String, dynamic> json) => FakePosts(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
