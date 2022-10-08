import 'package:apps/core.dart';
import 'package:apps/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class AddToCart extends StatefulWidget {
  final Item catlog;

  const AddToCart({Key? key, required this.catlog}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {

    final CartModel _cart = (VxState.store as MyStore).cart;
    final CatalogModel _catalog = (VxState.store as MyStore).catalog;
    bool isInCart = _cart.items.contains(widget.catlog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();

          _cart.add(widget.catlog);
          _cart.catalog = _catalog;
          setState(() {});
        }
      },
      style: ButtonStyle(

          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : "add".text.color(Colors.black).make(),
    );
  }
}
