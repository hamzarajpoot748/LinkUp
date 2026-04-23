import 'package:flutter/material.dart';
import 'package:linkup/widgets/custom.dart';
import 'package:linkup/widgets/custom_homescreen.dart';
import 'package:linkup/Screens/chat_UI/chat_inperson_screen.dart';
import 'package:linkup/Screens/AppUI/home_screen.dart';
import 'package:linkup/Screens/auth_UI_screens/login.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              color: AppColors.buttonColor,
              child: 
              Column(
                children: [
                  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(text: "Messenger",fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),
                Row(
                  spacing: 0,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.camera_enhance,color: Colors.white,)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
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
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context,index){
                      return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: AllChatList(index: index,
                      ontap: (){
                        navigateTo(context, ChatInPerson());
                      },
                      ),
                    );
                    },
                  ),
                ),
                // Expanded(
                //   child: ListView.builder(
                //     itemBuilder: (context, index){
                //       return Container(
        
                //       );
                //     },
                //     ),
                //   ),
          ],
        ),
      ),
    );
  }
}