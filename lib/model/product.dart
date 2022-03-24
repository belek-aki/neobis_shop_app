import 'package:flutter/widgets.dart';

class Product {
  final String title, image, discreption;
  final int price, id, size;
  final Color color;

  Product({
    required this.id,
    required this.title,
    required this.discreption,
    required this.image,
    required this.price,
    required this.size,
    required this.color,
  });
}

List<Product> product = [
  Product(
    id: 1,
    title: 'sneaker Fila',
    discreption: 'discreption',
    image: "assets/images/1.png",
    price: 1223,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 1,
    title: 'sneaker',
    discreption: 'discreption',
    image: "assets/images/2.png",
    price: 1223,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 1,
    title: 'sneaker',
    discreption: 'discreption',
    image: "assets/images/3.png",
    price: 1223,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 1,
    title: 'sneaker',
    discreption: 'discreption',
    image: "assets/images/4.png",
    price: 1223,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 1,
    title: 'sneaker',
    discreption: 'discreption',
    image: "assets/images/5.png",
    price: 1223,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 1,
    title: 'sneaker',
    discreption: 'discreption',
    image: "assets/images/6.png",
    price: 1223,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 1,
    title: 'sneaker',
    discreption: 'discreption',
    image: "assets/images/7.png",
    price: 1223,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
  Product(
    id: 1,
    title: 'sneaker',
    discreption: 'discreption',
    image: "assets/images/8.png",
    price: 1223,
    size: 12,
    color: const Color(0xFF3D82AE),
  ),
];
