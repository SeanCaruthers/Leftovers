import 'package:flutter/material.dart';

class PostLongitude extends StatelessWidget {
  final double longitude;
  const PostLongitude({Key? key, required this.longitude}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Longitude: ${longitude}');
  }
}
