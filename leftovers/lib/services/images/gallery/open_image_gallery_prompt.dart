import 'package:flutter/material.dart';

import 'package:leftovers/helpers/navigation.dart' show goToNewEntryScreen;
import 'package:leftovers/services/images/gallery/pick_image_from_gallery.dart'
    show selectImageFromGallery;

class OpenImageGalleryPrompt extends StatelessWidget {
  const OpenImageGalleryPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Semantics(
          image: true,
          button: true,
          label: "a photo gallery icon that opens the phone's photo gallery",
          child: GestureDetector(
            onTap: () async {
              final String imagePath = await selectImageFromGallery();
              goToNewEntryScreen(context, imagePath);
            },
            child: Icon(Icons.image_search),
          ),
        ),
        Text("Choose From Gallery"),
      ],
    );
  }
}
