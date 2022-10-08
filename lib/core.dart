import 'package:apps/models/cart.dart';
import 'package:apps/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:apps/core.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
