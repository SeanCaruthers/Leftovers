import 'package:flutter/material.dart';

import 'package:leftovers/helpers/navigation.dart' show goToPreviousScreen;

class NewEntryScreen extends StatelessWidget {
  const NewEntryScreen({Key? key}) : super(key: key);

  static const routeName = "newEntry";
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
      onPressed: () {
        goToPreviousScreen(context);
      },
      child: Text("back"),
    ));
  }
}
