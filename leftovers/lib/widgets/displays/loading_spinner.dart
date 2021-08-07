import 'package:flutter/material.dart';

class LoadingSpinner extends StatelessWidget {
  final String indicated;
  const LoadingSpinner({Key? key, required this.indicated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Semantics(
        label: 'a circular spinner indicating that: $indicated',
        child: CircularProgressIndicator(
          strokeWidth: 20.0,
          color: Theme.of(context).hintColor,
        ),
      ),
    );
  }
}
