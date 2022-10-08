import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import '../models/catalog.dart';
import '../widgets/add_to_cart.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.white,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl3.red600.make(),
          AddToCart(
            catlog: catalog,
          ).wh(120, 50)
        ],
      ).p32(),
      body: SafeArea(
        child: Column(
          children: [
            Image.network(catalog.image).p16(),
            Expanded(
                child: Container(
              color: Colors.white,
              width: context.screenWidth,
              child: Column(
                children: [
                  catalog.name.text.xl4.color(Colors.white12).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                  10.heightBox,
                  Text("The iPhone is a line of smartphones designed and marketed by Apple Inc. These devices use Apple's iOS mobile operating system. The first-generation iPhone was announced by then-Apple CEO Steve Jobs on January 9, 2007. Since then, Apple has annually released new iPhone models and iOS updates.")
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p16(),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
