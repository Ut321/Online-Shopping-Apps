import 'dart:convert';

class CatalogModel {
  static final catModel = CatalogModel._internal();

  CatalogModel._internal();

  factory CatalogModel() => catModel;

  static List<Item> items = [
    Item(
        id: 1,
        name: "iphone 12SE",
        desc: "Apple  iphone  12th generation",
        price: 999,
        color: "33505a",
        image:
            "https://imgs.search.brave.com/xxexfz5dKqi9Z0j3knGCE0Fy4ZbuxMhVwCHFmudHFhY/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5r/ZEdHYl9mSU5zRmN2/NFEzdE1pUUZ3SGFI/YSZwaWQ9QXBp")
  ];

  //get item by id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // get Item getByPosition
  Item getByPosition(int pos) => items[pos];

  void add(Item catlog) {}
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  Item copyWith({
    required int id,
    required String name,
    required String desc,
    required num price,
    required String color,
    required String image,
  }) {
    return Item(
        id: id ?? this.id,
        name: name ?? this.name,
        desc: desc ?? this.desc,
        price: price ?? this.price,
        color: color ?? this.color,
        image: image ?? this.image);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      "name": name,
      "desc": desc,
      "price": price,
      "color": color,
      "image": image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id:$id,name:$name, desc:$desc, price:$price, color:$color,image :$image)';
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }

  tomap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
