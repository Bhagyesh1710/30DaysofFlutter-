import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/core/store.dart';
import 'package:flutter_app2/models/cart.dart';
import 'package:flutter_app2/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
class AddToCart extends StatelessWidget {
  final Item catalog;

  AddToCart({required this.catalog});



  @override
  Widget build(BuildContext context) {
    VxState.watch(context,on:[addMutation,removeMutation]);
    final CartModel _cart =(VxState.store as MyStore).cart;
    //final CatalogModel _catalog =(VxState.store as MyStore).catalog;
    bool isInCart =_cart.items.contains(catalog)??false;
    return ElevatedButton(
      onPressed: () {

        if(!isInCart) {
          addMutation(catalog);

        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
            context.theme.buttonColor),
        shape: MaterialStateProperty.all(
          StadiumBorder(),
        ),
      ),
      child:isInCart ? Icon(Icons.done): Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
