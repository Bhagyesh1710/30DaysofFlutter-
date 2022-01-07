import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app2/core/store.dart';
import 'package:flutter_app2/pages/cart_page.dart';
import 'package:flutter_app2/pages/login_page.dart';
import 'package:flutter_app2/utils/routes.dart';
import 'package:flutter_app2/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';

void main() {
  runApp(VxState(
      store: MyStore(),
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    int days = 30;
    bringVegetables(rupees: 50);
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme:MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.HomeRoute:(context) => HomePAge(),
        MyRoutes.loginRoute:(context) => LoginPage(),
        MyRoutes.cartRoute:(context) => CartPage(),
      },
    );
  }

  bringVegetables({int rupees = 100}){

  }
}
