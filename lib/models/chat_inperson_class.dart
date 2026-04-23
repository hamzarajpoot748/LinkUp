// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this
import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_auth/firebase_auth.dart';


// String currentUserId = FirebaseAuth.instance.currentUser!.uid;



class ChatInPersonClass {
  Messages? messages;

  ChatInPersonClass({this.messages});

  ChatInPersonClass.fromJson(Map<String, dynamic> json) {
    messages =
        json['messages'] != null
            ? new Messages.fromJson(json['messages'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.messages != null) {
      data['messages'] = this.messages!.toJson();
    }
    return data;
  }
}

class Messages {
  Msg1? msg1;

  Messages({this.msg1});

  Messages.fromJson(Map<String, dynamic> json) {
    msg1 = json['msg1'] != null ? new Msg1.fromJson(json['msg1']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.msg1 != null) {
      data['msg1'] = this.msg1!.toJson();
    }
    return data;
  }
}

class Msg1 {
  String? text;
  String? sender;
  String? time;
  String? chatId;

  Msg1({this.text, this.sender, this.time, this.chatId});

  Msg1.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    sender = json['sender'];
    time = json['time'];
    chatId = json['chatId'];
  }

  Map<String, dynamic> toJson() {
    
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['sender'] = this.sender;
    data['time'] = this.time;
    data['chatId'] = this.chatId;
    return data;
  }
}
