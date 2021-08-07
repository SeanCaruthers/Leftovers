import 'dart:io';

import 'package:flutter/material.dart';

import 'package:leftovers/models/postdto.dart';
import 'package:leftovers/widgets/displays/loading_spinner.dart'
    show LoadingSpinner;

class CreatePostForm extends StatefulWidget {
  final String imagePath;
  CreatePostForm({Key? key, required this.imagePath}) : super(key: key);

  @override
  _CreatePostFormState createState() => _CreatePostFormState();
}

class _CreatePostFormState extends State<CreatePostForm> {
  final _formKey = GlobalKey<FormState>();
  PostDto dto = PostDto();
  bool adding_entry = false;

  @override
  Widget build(BuildContext context) {
    return adding_entry
        ? LoadingSpinner(indicated: "the post is being uploaded")
        : postForm(context);
  }

  Widget postForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .5,
              child: leftoverImage(widget.imagePath),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .2,
              child: numericEntry(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .08,
              child: uploadButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget leftoverImage(String imagePath) {
    return Semantics(
      image: true,
      label: "The image that will be added to the new post",
      child: Image.file(
        File(imagePath),
        fit: BoxFit.contain,
      ),
    );
  }

  Widget numericEntry() {
    return Semantics(
      textField: true,
      label: "an input to hold the number of leftovers in the new post",
      child: TextFormField(
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value == null) {
            return "please enter a quantity";
          }
          try {
            if (int.parse(value) <= 0) {
              return "please enter a value greater than 0";
            }
          } catch (error) {
            return "please enter a numeric value";
          }
        },
        onSaved: (value) {
          dto.saveCount(value!);
        },
      ),
    );
  }

  Widget uploadButton() {
    return Semantics(
      button: true,
      enabled: true,
      label: "upload the new post",
      child: ElevatedButton(
        onPressed: uploadPost,
        child: Semantics(
            image: true,
            label:
                "cloud image to indicate that post will be saved to the cloud",
            child: Icon(Icons.cloud_upload_outlined)),
      ),
    );
  }

  void uploadPost() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _formKey.currentState!.save();

    adding_entry = true;
    setState(() {});
    await dto.savePost(widget.imagePath);

    await dto.uploadPost();

    Navigator.of(context).pop();
  }
}
