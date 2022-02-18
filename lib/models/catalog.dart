import 'dart:io';

class CatalogModel {
  static List<Item> item = [
    Item(
        id: 1,
        name: "iPhone",
        desc: "iPhone 12 pro max",
        price: 100,
        color: "#33505a",
        image: "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-r1.jpg")
  ];
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

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }
  
  toMap() => {
        "id": id,
        "name": name,
        "desc": id,
        "price": id,
        "color": id,
        "image": id,
      };
}
