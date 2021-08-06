import 'package:flutter/material.dart';

import 'package:leftovers/helpers/navigation.dart' show goToNewEntryScreen;

class OpenImageGalleryPrompt extends StatelessWidget {
  const OpenImageGalleryPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // TODO
            final String imagePath = "fake";
            goToNewEntryScreen(context, imagePath);
          },
          child: Icon(Icons.image_search),
        ),
        Text("Choose From Gallery"),
      ],
    );
  }
}
