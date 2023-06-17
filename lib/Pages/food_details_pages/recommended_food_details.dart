import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodyi/utils/color.dart';
import 'package:foodyi/utils/dimensions.dart';
import 'package:foodyi/widgets/Icons_widgets.dart';
import 'package:foodyi/widgets/bottom_navigation.dart';
import 'package:foodyi/widgets/expandable_widget.dart';
import 'package:foodyi/widgets/textwidget.dart';

class Recommended_food_details extends StatefulWidget {
  @override
  State<Recommended_food_details> createState() =>
      Recommended_food_detailsState();
}

class Recommended_food_detailsState extends State<Recommended_food_details> {
  double price = 12.88;
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            pinned: true,
            floating: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.remove),
                Primarytext(
                  text: 'Pizaa Special',
                  colortext: MyColor.lightcolor,
                  weight: FontWeight.bold,
                  size: Dimensions.height20,
                ),
                Icon(Icons.shopping_cart),
              ],
            ),
            expandedHeight: Dimensions.stackheight350,
            bottom: PreferredSize(
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColor.lightcolor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20))),
                  width: double.maxFinite,
                  padding: EdgeInsets.all(Dimensions.height10),
                  child: Center(
                      child: Primarytext(
                    text: 'Pizaa Special Recipe',
                    weight: FontWeight.bold,
                  )),
                ),
                preferredSize: Size.fromHeight(Dimensions.width30 * 4)),
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image/image6.jpg')),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                padding: EdgeInsets.all(Dimensions.radius10),
                child: Expandable_widget(
                  text:
                      ' Sliver is a portion of the scrollable area which is used to achieve a custom scrolling effect. In other words, the sliver widget is a slice of the viewport. We can implement all of the scrollable views, such as ListView, GridView using slivers. It is a lower-level interface that provides excellent control over implementing a scrollable area. It is useful while scrolling large numbers of children widgets in a scrollable area. As they are based on the viewport, it can change their shape, size, and extent based on several events and offset.Flutter provides several kinds of slivers, some of them are given below: SliverAppBar SliverList SliverGrid How to use slivers? It is to note that all of the slivers components should always be placed inside a CustomScrollView. After that, we can combine the list of slivers to make the custom scrollable area. What is CustomScrollView? CustomScrollView in Flutter is a scroll view that allows us to create various scrolling effects such as grids, lists, and expanding headers. It has a sliver property where we can pass a list of widgets that include SliverAppBar, SliverToBoxAdapter, SliverList, and SliverGrid, etc. Let us discuss each sliver in detail. SliverAppBar SliverAppBar is a material design app bar in Flutter that integrates with a CustomScrollView. Generally, we used it as the first child of CustomScrollView. It can vary in height and float above the other widget of the scroll view. It allows us to create an app bar with various scrolling effects. Properties of SliverAppBar The following are the essential properties of the SliverAppBar: actions: This property is used to create widgets right of the appBar title. Generally, it is an iconButton that represents common operations. title: This property is used to define the title to the SliverAppBar. It is similar to the AppBar title to give the name of the application. leading: This property is used to define a widget left to the title. Generally, it is used to place the Menu Drawer widget. backgroundColor: This property is used to define a background color to the sliver app bar. bottom: This property is used to create space to the bottom of the title, where we can define any widget according to our needs. expandedHeight: This property is used to specify the maximum height to the app bar that can be expanded while scrolling. It must be defined in a double value. floating: This property determines whether the app bar will be visible or not when the user scrolls towards the app bar.',
                )),
          )
        ],
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20))),
          padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (num != 0) {
                      if (price > 0) {
                        num--;
                        double ans = num * 12.88;
                        price = ans.round().toDouble();
                      }
                    } else {
                      num = 0;
                    }
                  });
                },
                child: Icons_widget(
                  icon: Icons.remove,
                  iconcolor: MyColor.lightcolor,
                  backgroundcolor: MyColor.themecolor,
                  size: Dimensions.width30,
                ),
              ),
              Primarytext(text: '\$$price' + ' ' + '*' + '$num'),
              InkWell(
                onTap: () {
                  setState(() {
                    if (price >= 0) {
                      num++;
                      double ans = num * 12.88;
                      price = ans.round().toDouble();
                    }
                  });
                },
                child: Icons_widget(
                  icon: Icons.add,
                  iconcolor: MyColor.lightcolor,
                  backgroundcolor: MyColor.themecolor,
                  size: Dimensions.width30,
                ),
              ),
            ],
          ),
        ),
        Bottom_navigation(price: price),
      ]),
    );
  }
}
