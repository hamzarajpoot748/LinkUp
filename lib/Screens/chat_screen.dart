import 'package:flutter/material.dart';
import 'package:linkup/Custom/custom.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(text: "Messenger",fontSize: 25,fontWeight: FontWeight.bold,),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_enhance)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                  ],
                ),
                
              ],
            ),
            SizedBox(
              height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}