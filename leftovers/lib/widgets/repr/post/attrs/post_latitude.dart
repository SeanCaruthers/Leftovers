import 'package:flutter/material.dart';

class PostLatitude extends StatelessWidget {
  final double latitude;
  const PostLatitude({Key? key, required this.latitude}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Latitude: ${latitude}');
  }
}
