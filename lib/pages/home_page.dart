import 'package:flutter/material.dart';

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
      drawer: Drawer(),
    );
  }
}