import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/models/catalog.dart';
import 'package:flutter_app2/widgets/drawer.dart';
import 'package:flutter_app2/widgets/item_widget.dart';

class HomePAge extends StatelessWidget {
  final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
  final int days =30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(itemCount: dummyList.length,
            itemBuilder: (context,index){
              return ItemWidget(item: dummyList[index],);

            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
