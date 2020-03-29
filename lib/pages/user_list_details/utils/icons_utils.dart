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
  if(category == 'Fruit') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/fruit.png'),
    );
  }
    if(category == 'Pet') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/pet.png'),
    );
  }
    if(category == 'Drink') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/drink.png'),
    );
  }
    if(category == 'Coffe') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/coffee.png'),
    );
  }
    if(category == 'House') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/house.png'),
    );
  }
    if(category == 'Kids') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/kids.png'),
    );
  }
    if(category == 'Sweet') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/sweet.png'),
    );
  }
    if(category == 'Pharmacy') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/drugs.png'),
    );
  }
    if(category == 'Pasta') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/pasta.png'),
    );
  }
    if(category == 'Sauce') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/sauce.png'),
    );
  }
    if(category == 'Bakery') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/bakery.png'),
    );
  }
  if(category == 'Health') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/beauty.png'),
    );
  }

  if(category == 'Other') {
     return Container(
      width: 32,
      height: 32,
      child: Image.asset('img/personal.png'),
    );
  }

}