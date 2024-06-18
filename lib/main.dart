import 'package:flutter/material.dart';
import 'package:fuyopia/pages/homa_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(0, 32, 96, 1)),
        useMaterial3: true,
      ),
      home:  MyHomePage(/*selectedIndex: 0*/),
    );
  }
}
