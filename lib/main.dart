import 'package:flutter/material.dart';
import 'package:producthub/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true

      ),
      home: HomePage(),
    );
  }
}

