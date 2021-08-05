import 'package:flutter/material.dart';

class PostAttr extends StatelessWidget {
  final dynamic attr;
  const PostAttr({Key? key, required this.attr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(attr.toString());
  }
}
