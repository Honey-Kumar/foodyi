import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodyi/utils/color.dart';
import 'package:foodyi/widgets/expandable_widget.dart';
import 'package:foodyi/widgets/text_icon_widget.dart';
import 'package:foodyi/widgets/textwidget.dart';
import '../utils/dimensions.dart';

class Dish_detail extends StatelessWidget {
  Dish_detail({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      padding: EdgeInsets.all(Dimensions.radius10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20),
            topRight: Radius.circular(Dimensions.radius20)),
        color: MyColor.lightcolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Primarytext(
            text: title,
            size: 20,
            weight: FontWeight.bold,
          ),
          SizedBox(
            height: Dimensions.height20 / 2,
          ),
          Row(
            children: [
              Wrap(
                children: List.generate(
                    5,
                    (index) => Icon(
                          Icons.star,
                          color: MyColor.themecolor,
                          size: Dimensions.height20,
                        )),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Primarytext(text: '4.5'),
              SizedBox(
                width: Dimensions.width10,
              ),
              Primarytext(text: '1287'),
              SizedBox(
                width: Dimensions.width10,
              ),
              Primarytext(text: 'Comments'),
            ],
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text_icon(
                  icon: Icons.circle_sharp,
                  text: 'Normal',
                  iconsize: Dimensions.iconssize + 5,
                  iconcolor: MyColor.sharp_icon),
              Text_icon(
                  icon: Icons.location_pin,
                  text: '27km',
                  iconsize: Dimensions.iconssize + 5,
                  iconcolor: MyColor.themecolor),
              Text_icon(
                  icon: Icons.lock_clock,
                  text: '32min',
                  iconsize: Dimensions.iconssize + 5,
                  iconcolor: MyColor.clockcolor)
            ],
          ),
          SizedBox(
            height: Dimensions.height10 / 2,
          ),
          Primarytext(
            text: 'Introduce',
            weight: FontWeight.bold,
            size: Dimensions.width20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Expandable_widget(
                  text:
                      'pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot Uncover the chemistry behind the delicious taste of pizza Uncover the chemistry behind the delicious taste of pizzaSee all videos for this article One of the simplest and most traditional pizzas is the Margherita, which is topped with tomatoes or tomato sauce, mozzarella, and basil. Popular legend relates that it was named for Queen Margherita, wife of Umberto I, who was said to have liked its mild fresh flavour and to have also noted that its topping colours—green, white, and red were those of the Italian flag'
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
