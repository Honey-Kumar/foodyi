import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodyi/utils/color.dart';
import 'package:foodyi/utils/dimensions.dart';
import 'package:foodyi/widgets/Icons_widgets.dart';
import 'package:foodyi/widgets/bottom_navigation.dart';
import 'package:foodyi/widgets/dish_details.dart';
import 'package:foodyi/widgets/text_icon_widget.dart';
import 'package:foodyi/widgets/textwidget.dart';

class Popualar_food_details extends StatefulWidget {
  @override
  State<Popualar_food_details> createState() => _Popualar_food_detailsState();
}

class _Popualar_food_detailsState extends State<Popualar_food_details> {
  ScrollController scrollcontrol = ScrollController();
  double topheight = Dimensions.stackheight350 - 30;
  double increasetopheight =
      Dimensions.stackheight350 - (Dimensions.height120 + 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.stackheight350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/image6.jpg')),
                ),
              )),
          Positioned(
              top: Dimensions.width30,
              left: Dimensions.radius20,
              right: Dimensions.radius20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icons_widget(icon: Icons.arrow_back_ios),
                  Icons_widget(icon: Icons.shopping_cart),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: topheight,
            child: InkWell(
              onTap: () {
                setState(() {
                  if (topheight == Dimensions.stackheight350 - 30 ||
                      topheight == Dimensions.stackheight350 - 100) {
                    topheight = increasetopheight;
                  } else {
                    topheight = Dimensions.stackheight350 - 100;
                  }
                });
              },
              child: Dish_detail(
                title: 'Pizaa Special',
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bottom_navigation(
        price: 10.0,
      ),
    );
  }
}
