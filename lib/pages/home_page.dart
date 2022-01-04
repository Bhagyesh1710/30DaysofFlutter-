import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_app2/models/catalog.dart';
import 'package:flutter_app2/widgets/drawer.dart';
import 'package:flutter_app2/widgets/item_widget.dart';

class HomePAge extends StatefulWidget {
  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  //final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

  final int days =30;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData()async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData=decodeData["products"];
    CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {

    });
    //print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)?
            ListView.builder(itemCount: CatalogModel.items.length,
            itemBuilder: (context,index){
              return ItemWidget(item: CatalogModel.items[index],);

            }):Center(child:CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}
