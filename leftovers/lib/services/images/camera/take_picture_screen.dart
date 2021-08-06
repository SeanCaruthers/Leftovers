/* 
 * 
 * following flutter cookbook on taking images
 * flutter.dev/docs/cookbook/plugins/picture-using-camera
 * 
 */

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:leftovers/config/strings.dart' show appTitle;

import 'package:leftovers/helpers/navigation.dart' show goToNewEntryScreen;
import 'package:leftovers/widgets/displays/loading_spinner.dart'
    show LoadingSpinner;
import 'package:leftovers/widgets/layout/main_layout.dart' show MainLayout;

class TakePictureScreen extends StatefulWidget {
  TakePictureScreen({Key? key}) : super(key: key);

  static const routeName = "takepicture";

  @override
  _TakePictureScreenState createState() => _TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController controller;
  late Future<void> _initialized;

  @override
  void initState() {
    super.initState();
    initController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<void> initController() async {
    var cameras = await availableCameras();
    var resolution = ResolutionPreset.medium;

    controller = CameraController(
      cameras.first,
      resolution,
    );

    _initialized = controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: Text('$appTitle'),
      body: FutureBuilder(
        future: _initialized,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.active:
              return const LoadingSpinner();
            case ConnectionState.done:
              return CameraView();
            case ConnectionState.none:
              return Placeholder();
          }
        },
      ),
      floatingActionButton: TakePictureButton(),
    );
  }

  Widget CameraView() {
    return CameraPreview(controller);
  }

  Widget? TakePictureButton() {
    return FloatingActionButton(
      onPressed: takePicture,
      child: Icon(Icons.photo_camera),
    );
  }

  Future<void> takePicture() async {
    try {
      final imagePath = (await controller.takePicture()).path;
      goToNewEntryScreen(context, imagePath);
    } catch (err) {
      print(err);
    }
  }
}
