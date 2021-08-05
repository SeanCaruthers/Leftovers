import 'package:flutter/material.dart';

class PostDate extends StatelessWidget {
  final DateTime date;
  const PostDate({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Date: ${date.toString().substring(0, 10)}');
  }
}
