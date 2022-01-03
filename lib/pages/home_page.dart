import 'package:flutter/material.dart';
import 'package:flutter_app2/widgets/drawer.dart';

class HomePAge extends StatelessWidget {
  final int days =30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 Days $days Course of flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
