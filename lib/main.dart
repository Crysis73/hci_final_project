import 'package:flutter/material.dart';
import 'package:hci_final_project/screens/showcase/showcase.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Showcase(),
    );
  }
}
