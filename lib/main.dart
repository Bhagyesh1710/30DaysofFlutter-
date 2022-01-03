import 'package:flutter/material.dart';
import 'package:flutter_app2/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
      home:HomePAge(),
    );
  }
}
