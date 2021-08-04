import 'package:flutter/material.dart';

//import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:leftovers/config/navigation/routes.dart' as routes;

class App extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: routes.initialRoute,
      routes: routes.routes,
    );
  }
}
