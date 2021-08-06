import 'package:flutter/material.dart';
import 'dart:io';

class CreatePostForm extends StatefulWidget {
  final String imagePath;
  CreatePostForm({Key? key, required this.imagePath}) : super(key: key);

  @override
  _CreatePostFormState createState() => _CreatePostFormState();
}

class _CreatePostFormState extends State<CreatePostForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          leftoverImage(widget.imagePath),
          numericEntry(),
          uploadButton(),
        ]));
  }

  Widget leftoverImage(String imagePath) {
    return Image.file(
      File(imagePath),
    );
  }

  Widget numericEntry() {
    return Placeholder();
  }

  Widget uploadButton() {
    return Placeholder();
  }
}
