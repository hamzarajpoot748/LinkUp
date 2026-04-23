// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:linkup/widgets/custom.dart';
import 'package:linkup/Screens/auth_UI_screens/login.dart';

class CreateStory extends StatefulWidget {
  const CreateStory({super.key});

  @override
  State<CreateStory> createState() => _CreateStoryState();
}

class _CreateStoryState extends State<CreateStory> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: 10,
  itemBuilder: (context, index) {
    return Container(
      width: MediaQuery.of(context).size.width*0.29,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          'Item $index',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  },
);
  }
}
// 
// 
// 
// 
// 
class PostsHomeScreen extends StatefulWidget {
  const PostsHomeScreen({super.key});

  @override
  State<PostsHomeScreen> createState() => _PostsHomeScreenState();
}

class _PostsHomeScreenState extends State<PostsHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
          ),
          title: KText(text: "title"),
          subtitle: KText(text: "3-6-2025"),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz)),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.5,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        PostActions(),
        Divider(
                color: Colors.grey,
                indent: 2,
                endIndent: 2,
                thickness: 2,
              ),
      ],
    );
  }
}
// 
// 
// 
// 
// 
class PostActions extends StatelessWidget {
  const PostActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.comment_outlined)),
        IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
      ],
    );
  }
}
// 
// 
// 
// 
class AllChatList extends StatefulWidget {
  int index;
  VoidCallback? ontap;
  AllChatList({super.key, required this.index, this.ontap});

  @override
  State<AllChatList> createState() => All_ChatListState();
}

class All_ChatListState extends State<AllChatList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: widget.ontap,
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.green,
          ),
          title: KText(text: "Person's Name ${widget.index}",color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold,),
          subtitle: KText(text: "incoming or outgoing message",color: Colors.grey,fontSize: 11),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              KText(text: "11:48"),
              Stack(
        children: [
                Icon(Icons.chat, size: 20),
                Positioned(
        right: 0,
        bottom: -5,
        child: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: Text(
            "3",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
                ),
        ],
                ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60,),
          child: Divider(
            height: 1,
          // thickness: 0.4,
          color: Colors.grey,
          ),
        ),
      ],
    );
  }
}