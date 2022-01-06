import 'package:flutter_app2/core/store.dart';
import 'package:flutter_app2/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel{



  //Catalog Field
  late CatalogModel _catalog;

  //Collection of Ids - Store Ids of Each Items
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog){
    assert(newCatalog!=null);
    _catalog = newCatalog;
  }
  //Get Items in Cart

List<Item> get items=>_itemIds.map((id)=>_catalog.getById(id)).toList();

  //Get Total Price

num get totalPrice => items.fold(0,(total,current)=>total+current.price);




//Remove Item
void remove(Item item){
  _itemIds.remove(item.id);
}
}
//Add Item
class addMutation extends VxMutation<MyStore>{
  final Item item;
  addMutation(this.item);
  perform() {
    store!.cart._itemIds.add(item.id);
    // TODO: implement perform

  }
}

class removeMutation extends VxMutation<MyStore>{
  final Item item;
  removeMutation(this.item);
  perform() {
    store!.cart._itemIds.remove(item.id);
    // TODO: implement perform

  }
}