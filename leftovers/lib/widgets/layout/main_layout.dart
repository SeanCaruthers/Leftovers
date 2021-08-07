import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget title;
  final Widget body;
  final Widget? floatingActionButton;

  const MainLayout({
    Key? key,
    required this.title,
    required this.body,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: title,
      ),
      body: body,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: floatingActionButton ?? null,
    );
  }
}
