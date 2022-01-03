import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    bringVegetables(rupees: 50);
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(brightness: Brightness.light),
      initialRoute: "/home",
      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomePAge(),
        "/login":(context) => LoginPage(),
      },
    );
  }

  bringVegetables({int rupees = 100}){

  }
}
