import 'package:flutter/material.dart';
import 'package:flutter_app2/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogImage extends StatelessWidget {
  final String imageUrl;

  const CatalogImage({Key? key,required this.imageUrl}) : assert(imageUrl!=null),super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}