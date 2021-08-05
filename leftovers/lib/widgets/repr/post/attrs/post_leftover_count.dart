import 'package:flutter/material.dart';

class PostLeftoverCount extends StatelessWidget {
  final int leftoverCount;
  const PostLeftoverCount({Key? key, required this.leftoverCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Text('${leftoverCount}'),
    );
  }
}
