import 'package:flutter/material.dart';

Widget getIconFromcategory(String category) {
  if (category == 'Meat') {
    return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/meat.png'),
    );
  }
  if (category == 'Fiber') {
    return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/fiber.png'),
    );
  }
  if (category == 'Cleaning') {
    return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/cleaning.png'),
    );
  }
  if (category == 'Milk') {
    return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/milk.png'),
    );
  }
}