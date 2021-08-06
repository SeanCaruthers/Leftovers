import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:leftovers/config/strings.dart' show appTitle;

import 'package:leftovers/widgets/forms/create_post_form.dart'
    show CreatePostForm;

import 'package:leftovers/widgets/layout/main_layout.dart' show MainLayout;

class NewEntryScreen extends StatelessWidget {
  NewEntryScreen({Key? key}) : super(key: key);

  static const routeName = "newEntry";

  @override
  Widget build(BuildContext context) {
    final String imagePath =
        ModalRoute.of(context)!.settings.arguments as String;
    return MainLayout(
      title: Text(appTitle),
      body: CreatePostForm(imagePath: imagePath),
    );
  }
}
