import 'package:apps/models/cart.dart';
import 'package:apps/pages/home_detail_page.dart';
import 'package:apps/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/add_to_cart.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (BuildContext context, int index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            CatalogImage(
              image: catalog.image,
            ),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      catalog.name.text.xl.color(Colors.white12).make(),
                      catalog.desc.text.textStyle(context.captionStyle).make(),
                      20.heightBox,
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        buttonPadding: EdgeInsets.zero,
                        children: [
                          "\$${catalog.price}".text.bold.xl.make(),
                          AddToCart(catlog: catalog),
                        ],
                      )
                    ]))
          ],
        )).white.rounded.square(140).make().py16();
  }
}
class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.py64.p16.make();
  }
}
