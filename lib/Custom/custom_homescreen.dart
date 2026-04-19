import 'package:flutter/material.dart';
import 'package:linkup/Custom/custom.dart';

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
          subtitle: KText(text: "subtitle"),
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