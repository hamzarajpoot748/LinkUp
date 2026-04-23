// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linkup/models/post_model.dart';
import 'package:linkup/services/db_path.dart';
import 'package:linkup/widgets/custom.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  String currentUserid = FirebaseAuth.instance.currentUser!.uid;
  DatabaseReference newPostRef = DbPaths.posts().ref.push();
  ImagePicker picker = ImagePicker();
  File? selectedImage;
  TextEditingController captionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "add image",
        onPressed: () async {
          showImageSourceDialog(context);
        },
        child: Icon(Icons.image),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            goBack(context);
          },
          icon: Icon(Icons.close, size: 35),
        ),
        centerTitle: true,
        title: KText(
          text: "New Post",
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (selectedImage == null) {
                showCustomSnackBar(context,"Select an Image");
                return;
              }
              String? postId = newPostRef.key;
              PostModel post = PostModel(
                imageUrl: selectedImage!.path,
                postId: postId,
                title: captionController.text,
                userId: currentUserid,
              );
              try {
                DbPaths obj = DbPaths();
                obj.ref.push().set(post.toJson());
              } catch (e) {
                print(e);
              }
            },
            icon: Icon(Icons.check, size: 35),
          ),
        ],
      ),
      // backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: [
              Divider(
                color: const Color.fromARGB(255, 54, 52, 52),
                height: 1,
                indent: 10,
                endIndent: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.blue, radius: 30),
                    Spacebetween(width: 20),
                    KText(text: "User Name", fontSize: 20),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: captionController,
                  maxLength: 500,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Whats on your mind?",
                    hintStyle: TextStyle(),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  child:
                      selectedImage != null
                          ? Image.file(selectedImage!, fit: BoxFit.cover)
                          : Center(child: KText(text: "image not selected")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<File?> pickFromCamera() async {
    XFile? image = await picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 800,
    );
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
    return null;
  }

  Future<File?> pickFromGallery() async {
    XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
    return null;
  }

  void showImageSourceDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text("Gallery"),
                onTap: () {
                  Navigator.pop(context);
                  pickFromGallery();
                },
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text("Camera"),
                onTap: () {
                  Navigator.pop(context);
                  pickFromCamera();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
