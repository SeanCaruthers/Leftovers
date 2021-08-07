import 'package:flutter/material.dart';

import 'package:leftovers/config/strings.dart' show appTitle;
import 'package:leftovers/services/images/open_image_source.dart';

import 'package:leftovers/widgets/layout/main_layout.dart' show MainLayout;

class ImageInputScreen extends StatelessWidget {
  const ImageInputScreen({Key? key}) : super(key: key);

  static const routeName = "imageinput";

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: Text('$appTitle'),
      body: Center(
        child: OpenImageSource(),
      ),
    );
  }
}
