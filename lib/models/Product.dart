import 'package:flutter/material.dart';

class Product {
  final String image, title, description, model;
  final int price, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.model,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "AirPods Pro",
      price: 249,
      model: "Pro",
      description: "or \$41.50/mo.per month for 6 mo.months*",
      image: "assets/images/airpods.png",
      color: Color(0xFF3D82AE)
  ),
  Product(
      id: 2,
      title: "MacBook 13 Pro",
      price: 999,
      model: "Pro",
      description: "or \$83.25/mo.per month for 12 mo.months* ",
      image: "assets/images/macbook_pro.png",
      color: Color(0xFFD3A984)
  ),
  Product(
      id: 3,
      title: "iPhone Pro",
      price: 799,
      model: "Normal",
      description: "or \$33.29/mo.per month for 24 mo.months*",
      image: "assets/images/iphone.png",
      color: Color(0xFF989493)
  ),
  Product(
      id: 4,
      title: "MacBook 13 Pro",
      price: 1099,
      model: "Pro",
      description: "or \$91.58/mo.per month for 12 mo.months*",
      image: "assets/images/mac_pro.png",
      color: Color(0xFFE6B398)
  ),
  Product(
      id: 5,
      title: "iPhone Pro Max",
      price: 999,
      model: "Pro Max",
      description: "or \$41.62/mo.per month for 24 mo.months*",
      image: "assets/images/iphone_pro.png",
      color: Color(0xFFFB7883)
  ),
  Product(
      id: 6,
      title: "AirPods Pro Max",
      price: 549,
      model: "Pro Max",
      description: "or \$91.50/mo.per month for 6 mo.months*",
      image: "assets/images/airpods_pro_max.png",
      color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 7,
      title: "iPad",
      price: 779,
      model: "Normal",
      description: "or \$66.58/mo.per month for 12 mo.months*",
      image: "assets/images/ipad.png",
      color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 8,
      title: "Apple Watch",
      price: 399,
      model: "Series",
      description: "or \$33.25/mo. per monthfor 12 mo.months*",
      image: "assets/images/smart_watch.png",
      color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 9,
      title: "Apple Watch",
      price: 799,
      model: "Series",
      description: "or \$66.58/mo. per monthfor 12 mo.months*",
      image: "assets/images/smart_watch_2.png",
      color: Color(0xFFAEAEAE),
  ),
];
