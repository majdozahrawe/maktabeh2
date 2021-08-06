import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;

  final double price;
  final bool  isPopular;
  static final columns = ["id", "title", "description", "price", "images","isPopular"];

  Product( {
    @required this.id,
    @required this.images,
    @required this.colors,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });



}

// Our demo Products

var demoProducts = <Product> [
  Product(
    id: 1,
    images: [
      "assets/images/ic_pen.png",
      "assets/images/ic_3pen.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Pen™",
    price: 0.30,
    description: "From Al-Wafaa Library",
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/ic_notebook.png",
      "assets/images/ic_newnotebook.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "NoteBook",
    price: 2.5,
    description: "AL-Yaqeen Library",
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/ic_folomaster.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Folomaster",
    price: 1.0,
    description: "Al-Asdeqaa Library",
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/ic_sharpener.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Sharpener",
    price: 20.20,
    description: "Nermeen Library",
    isPopular: true,

  ),
  Product(
    id: 5,
    images: [
      "assets/images/ic_calculator.png",
    ],
    title: "Calculator",
    price: 5.0,
    description: "From Al-Wafaa Library",
    isPopular: true,

  ),
  Product(
    id: 6,
    images: [
      "assets/images/ic_mg.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "CUP",
    price: 1.0,
    description: "description",
    isPopular: true,

  ),
  Product(
    id: 7,
    images: [
      "assets/images/ic_zaite.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Zaite",
    price: 5.0,
    description: " ",
    isPopular: true,

  ),
  Product(
    id: 8,
    images: [
      "assets/images/medal.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Medal",
    price: 5.0,
    description: " ",
    isPopular: false,

  ),
  Product(
    id: 9,
    images: [
      "assets/images/cup.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gold Cup",
    price: 5.0,
    description: " ",
    isPopular: false,

  ),
  Product(
    id: 10,
    images: [
      "assets/images/cube.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Color Cube",
    price: 5.0,
    description: " ",
    isPopular: false,

  ),
];

