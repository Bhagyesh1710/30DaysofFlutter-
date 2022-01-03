import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/login_page.dart';
import 'package:flutter_app2/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme:GoogleFonts.latoTextTheme()),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.HomeRoute:(context) => HomePAge(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }

  bringVegetables({int rupees = 100}){

  }
}
