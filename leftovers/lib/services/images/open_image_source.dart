import 'package:flutter/material.dart';
import 'package:leftovers/services/images/camera/open_camera_prompt.dart'
    show OpenCameraPrompt;

import 'package:leftovers/services/images/gallery/open_image_gallery_prompt.dart'
    show OpenImageGalleryPrompt;

class OpenImageSource extends StatelessWidget {
  const OpenImageSource({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OpenCameraPrompt(),
        OpenImageGalleryPrompt(),
      ],
    );
  }
}
