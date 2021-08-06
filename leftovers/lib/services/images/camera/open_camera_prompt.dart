import 'package:flutter/material.dart';
import 'package:leftovers/helpers/navigation.dart' show goToTakePictureScreen;

class OpenCameraPrompt extends StatelessWidget {
  const OpenCameraPrompt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            goToTakePictureScreen(context);
          },
          child: Icon(Icons.photo_camera),
        ),
        Text("Take Photo"),
      ],
    );
  }
}
