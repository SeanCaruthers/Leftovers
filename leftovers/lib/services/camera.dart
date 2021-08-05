import 'package:image_picker/image_picker.dart';

Future<String> getImagePath() async {
  final picker = ImagePicker();

  final pickedFile = await picker.pickImage(
    source: ImageSource.camera,
  );
  return pickedFile!.path;
}
