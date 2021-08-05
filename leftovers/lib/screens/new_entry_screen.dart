import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:leftovers/config/strings.dart' show appTitle;

import 'package:leftovers/services/camera.dart' show getImagePath;
import 'package:leftovers/widgets/forms/create_post_form.dart';

import 'package:leftovers/widgets/layout/main_layout.dart' show MainLayout;

class NewEntryScreen extends StatefulWidget {
  NewEntryScreen({Key? key}) : super(key: key);

  static const routeName = "newEntry";

  @override
  _NewEntryScreenState createState() => _NewEntryScreenState();
}

class _NewEntryScreenState extends State<NewEntryScreen> {
  Future<String> imagePath = getImagePath();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: imagePath,
      builder: (context, snapshot) {
        Widget child;
        if (snapshot.hasData) {
          child = CreatePostForm(imagePath: snapshot.data.toString());
        } else {
          child = const CircularProgressIndicator();
        }
        return MainLayout(
          title: Text(appTitle),
          body: child,
        );
      },
    );
  }
}
