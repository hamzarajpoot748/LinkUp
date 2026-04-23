// ignore_for_file: library_prefixes, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:linkup/models/chat_inperson_class.dart';

class ChatInPerson extends StatefulWidget {
  const ChatInPerson({super.key});
  @override
  State<ChatInPerson> createState() => _ChatInPersonState();
}

class _ChatInPersonState extends State<ChatInPerson> {
 final DatabaseReference ref =
    FirebaseDatabase.instanceFor(
  app: Firebase.app(),
  databaseURL:
      "https://linkup-3dca7-default-rtdb.asia-southeast1.firebasedatabase.app",
).ref("msg2");
      
final user = FirebaseAuth.instance.currentUser;
  // String currentUserId = "user1";
  final messageTime = DateTime.now();

  TextEditingController messageController = TextEditingController();

  List<String> messages = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Real Time Chat")),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
        stream: ref.onValue,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
  return Center(child: CircularProgressIndicator());
}
          if (!snapshot.hasData ||
              snapshot.data!.snapshot.value == null) {
            return Center(child: Text("No messages"));
          }

final rawData = snapshot.data!.snapshot.value as Map<dynamic, dynamic>;
final Map data = Map<dynamic, dynamic>.from(rawData);

    final messages = data.entries.toList();
          return ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final msg = messages[index].value;
              return  ListTile(
          title: Text(msg['text'] ?? ""),
          subtitle: Text(msg['sender'] ?? ""),
          trailing: Text(msg['time'] ?? ""),
        );
            },
          );
        },
      ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 20),
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: "Type message......",
                        contentPadding: EdgeInsets.all(12),
                      ),
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () async {
final uid = user!.uid;

                    String time =
                        "${messageTime.hour}:${messageTime.minute.toString().padLeft(2, '0')}";

                    Msg1 obj = Msg1(text: messageController.text, time: time);
                    try {
                      await ref.push().set({
                        "text": obj.text,
                        "sender": uid,
                        "time": obj.time,
                      });

                      print("✅ SUCCESS: Data written");
                    } catch (e) {
                      print("❌ ERROR: $e");
                    }
                    messageController.clear();
                  },
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
