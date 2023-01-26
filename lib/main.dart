import 'package:flutter/material.dart';

import 'views/main_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iNews',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    );
  }
}
