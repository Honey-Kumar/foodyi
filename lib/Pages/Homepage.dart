import 'package:flutter/material.dart';
import 'package:foodyi/Pages/food_details_pages/recommended_food_details.dart';
import 'package:foodyi/Pages/foodscrollpage.dart';
import 'package:foodyi/utils/color.dart';
import 'package:foodyi/utils/dimensions.dart';
import 'package:foodyi/widgets/text_icon_widget.dart';
import 'package:foodyi/widgets/textwidget.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 15.0),
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Primarytext(
                        text: 'India',
                        size: 20.0,
                        colortext: MyColor.themecolor,
                      ),
                      Row(
                        children: [
                          Primarytext(
                            text: 'New Delhi',
                            size: 15,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(Icons.location_city),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                        color: MyColor.themecolor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(
                        Icons.search_off_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Foodscrollpage(),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: Dimensions.width30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Primarytext(
                          text: 'Popular',
                          size: 20.0,
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Primarytext(text: '.'),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Primarytext(text: 'Food pairing'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Container(
                    height: Dimensions.height1100,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Recommended_food_details()))
                      },
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 9,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(
                                  left: Dimensions.width20,
                                  right: Dimensions.width20,
                                  bottom: Dimensions.width20),
                              child: Row(
                                children: [
                                  Container(
                                    width: Dimensions.width120,
                                    height: Dimensions.height120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.radius20),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/image/image${index}.jpg')),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: Dimensions.width120,
                                      decoration: BoxDecoration(
                                        color: MyColor.lightcolor,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(
                                              Dimensions.radius20),
                                          bottomRight: Radius.circular(
                                              Dimensions.radius20),
                                        ),
                                      ),
                                      margin: EdgeInsets.only(right: 4.0),
                                      padding: EdgeInsets.all(
                                          Dimensions.radius10 / 2),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Primarytext(
                                                  text: 'Nutritious Food meals',
                                                ),
                                                SizedBox(
                                                  height:
                                                      Dimensions.height10 / 2,
                                                ),
                                                Primarytext(
                                                  text:
                                                      'With Chinese Characterstics',
                                                ),
                                                SizedBox(
                                                  height:
                                                      Dimensions.height10 / 2,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: Wrap(
                                                        direction:
                                                            Axis.vertical,
                                                        children: [
                                                          Text_icon(
                                                              icon: Icons
                                                                  .circle_sharp,
                                                              text: 'Normal',
                                                              iconsize:
                                                                  Dimensions
                                                                      .iconssize,
                                                              iconcolor: MyColor
                                                                  .sharp_icon),
                                                          Text_icon(
                                                              icon: Icons
                                                                  .location_pin,
                                                              text: '27km',
                                                              iconsize:
                                                                  Dimensions
                                                                      .iconssize,
                                                              iconcolor: MyColor
                                                                  .themecolor),
                                                          Text_icon(
                                                              icon: Icons
                                                                  .lock_clock,
                                                              text: '32min',
                                                              iconsize:
                                                                  Dimensions
                                                                      .iconssize,
                                                              iconcolor: MyColor
                                                                  .clockcolor),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 20.0,
        color: MyColor.themecolor,
        child: Text('FOODYI'),
      ),
    );
  }
}
