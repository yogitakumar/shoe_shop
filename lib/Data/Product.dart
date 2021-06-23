import 'package:flutter/material.dart';

class Shop {
  String category;
  String image;
  List<Product> list;

  Shop({this.category, this.image, this.list});
}

List<Shop> shopFor = [
  Shop(
    category: "Shoes",
    image:
        "https://cdn2.iconfinder.com/data/icons/fashion-category-glyph/100/Shoes-2-512.png",
    list: shoeList,
  ),
  Shop(
    category: "Watches",
    image:
        "https://previews.123rf.com/images/jovanas/jovanas1810/jovanas181000397/109414594-watch-icon-vector-icons-set.jpg",
    list: watchList,
  ),
  Shop(
    category: "Bags",
    image:
        "https://cdn4.iconfinder.com/data/icons/bags-handbags/128/12-512.png",
    list: watchList,
  )
];

class Product {
  String name;
  String image;
  String description;
  int price;
  int rating;
  Color backColor;
  List<Color> availbleColors;
  List<int> availableSizes;

  Product(
      {this.name,
      this.image,
      this.description,
      this.price,
      this.rating,
      this.backColor,
      this.availbleColors,
      this.availableSizes});
}

List<Product> shoeList = [
  Product(
      name: "Nike Air Max",
      image:
          "https://www.pngkit.com/png/full/766-7664698_nike-flash-sale-transparent-background-nike-trainers-air.png",
      description:
          '''Unisex Men's Women's Air Running Shoes Trainers Mesh Breathable Sneakers "
for Multi Sport Athletic Jogging Fitness Walking Shoes''',
      price: 240,
      rating: 4,
      backColor: Colors.orange,
      availbleColors: [Colors.yellow, Colors.purple, Colors.red],
      availableSizes: [6, 7, 8, 9]),
  Product(
      name: "Nike Air Zoom",
      image:
          "https://i2-prod.coventrytelegraph.net/incoming/article12613861.ece/ALTERNATES/s615b/shoee.png",
      description: '''Unisex Men's Women's Air Running Shoes Trainers
Mesh Breathable Sneakers''',
      price: 240,
      rating: 3,
      backColor: Colors.blue,
      availbleColors: [Colors.yellow, Colors.purple, Colors.red],
      availableSizes: [6, 7, 8, 9]),
  Product(
      name: "NikeAirMax 270",
      image:
          "https://i.pinimg.com/originals/be/b1/b0/beb1b084c78e67daa95445c4bdc1a2cc.png",
      description:
          '''unique configuration of retro design elements balances heritage with the contemporary. 
Accented by flower printed details''',
      price: 240,
      rating: 3,
      backColor: Colors.greenAccent,
      availbleColors: [Colors.yellow, Colors.purple, Colors.red],
      availableSizes: [6, 7, 8, 9]),
  Product(
      name: "Nike WearAllDay",
      image:
          "https://i2-prod.coventrytelegraph.net/incoming/article12613861.ece/ALTERNATES/s615b/shoee.png",
      description: '''Unisex Men's Women's Air Running Shoes Trainers
Mesh Breathable Sneakers''',
      price: 240,
      rating: 3,
      backColor: Colors.redAccent,
      availbleColors: [Colors.yellow, Colors.purple, Colors.red],
      availableSizes: [6, 7, 8, 9]),
  Product(
      name: "Nike React Miler",
      image:
          "https://i.pinimg.com/originals/be/b1/b0/beb1b084c78e67daa95445c4bdc1a2cc.png",
      description:
          '''unique configuration of retro design elements balances heritage with the contemporary. 
Accented by flower printed details''',
      price: 240,
      rating: 3,
      backColor: Colors.cyan,
      availbleColors: [Colors.yellow, Colors.purple, Colors.red],
      availableSizes: [6, 7, 8, 9]),
];

List<Product> watchList = [
  Product(
      name: "Rolex",
      image:
          "https://cdn.wealthygorilla.com/wp-content/uploads/2020/08/Best-Rolex-Watches-for-Men-Rolex-Day-Date.png",
      description: '''It was specially designed to accommodate 
  the needs of scientists that were working around electromagnetic fields.''',
      price: 240,
      rating: 4,
      backColor: Colors.blue,
      availbleColors: [Colors.yellow, Colors.purple, Colors.red],
      availableSizes: [6, 7, 8, 9]),
  Product(
      name: "Titan",
      image:
      "https://www.androidheadlines.com/wp-content/uploads/2020/09/Samsung-Galaxy-Watch-3-Titan-4.png",
      description: '''It was specially designed to accommodate 
  the needs of scientists that were working around electromagnetic fields.''',
      price: 240,
      rating: 4,
      backColor: Colors.yellow,
      availbleColors: [Colors.yellow, Colors.purple, Colors.red,Colors.blue],
      availableSizes: [6, 7, 8, 9]),
  Product(
      name: "Tissot",
      image:
      "https://www.tissotwatches.com/media/catalog/product/cache/aaadd316e453df5b08f7f4246fad1a9c/T/1/T101.410.44.031.00.png",
      description: '''It was specially designed to accommodate 
  the needs of scientists that were working around electromagnetic fields.''',
      price: 250,
      rating: 4,
      backColor: Colors.green,
      availbleColors: [Colors.yellow, Colors.purple, Colors.red],
      availableSizes: [6, 7, 8, 9]),
];
