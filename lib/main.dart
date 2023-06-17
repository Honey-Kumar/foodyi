import 'package:flutter/material.dart';
import 'package:foodyi/Pages/Homepage.dart';
import 'package:foodyi/Pages/food_details_pages/popular_food_details.dart';
import 'package:foodyi/Pages/food_details_pages/recommended_food_details.dart';
import 'package:get/get.dart';

void main() => runApp(Mainrender());

class Mainrender extends StatelessWidget {
  const Mainrender({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Foodyi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: 
      // Recommended_food_details(),
      Homepage(),
    );
  }
}
