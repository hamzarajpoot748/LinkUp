// ignore_for_file: prefer_collection_literals, unnecessary_new

class PostModel {
  String? postId;
  String? userId;
  String? title;
  String? imageUrl;

  PostModel({this.postId, this.userId, this.title, this.imageUrl});

  PostModel.fromJson(Map<String, dynamic> json) {
    postId = json['postId'];
    userId = json['userId'];
    title = json['title'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postId'] = postId;
    data['userId'] = userId;
    data['title'] = title;
    data['imageUrl'] = imageUrl;
    return data;
  }
}