import 'package:flutter/material.dart';

//import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:leftovers/config/navigation/routes.dart' as routes;

class App extends StatelessWidget {
  final firestore;

  const App({
    required this.firestore,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leftovers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: routes.initialRoute,
      routes: routes.routes,
    );
  }
}
