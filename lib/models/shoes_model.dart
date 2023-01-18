import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';

class Shoes {
  String name;
  String image;
  String price;
  Color color;
  int best_seller;

  Shoes({required this.name, required this.image, required this.price, required this.best_seller, required this.color});
}

List<Map<String, dynamic>> shoes = [
  {
    'name': 'Nike Jordan',
    'image': 'assets/images/shoes/nike_jordan_1.png',
    'price': '\$302.00',
    'color': lightGray,
    'best_seller': 1,
  },
  {
    'name': 'Nike Air Max',
    'image': 'assets/images/shoes/nike_air_max_1.png',
    'price': '\$752.00',
    'color': lightGray,
    'best_seller': 1,
  },
];