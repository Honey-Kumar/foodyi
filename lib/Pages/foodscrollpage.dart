import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodyi/utils/color.dart';
import 'package:foodyi/utils/dimensions.dart';
import 'package:foodyi/widgets/text_icon_widget.dart';
import 'package:foodyi/widgets/textwidget.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Foodscrollpage extends StatefulWidget {
  @override
  State<Foodscrollpage> createState() => _FoodscrollpageState();
}

class _FoodscrollpageState extends State<Foodscrollpage> {
  PageController pagecontrol = PageController(viewportFraction: 0.85);
  var currpagevalue = 0.0;
  double scalefactor = 0.8;
  double _height = Dimensions.innercontainer;
  @override
  void initState() {
    super.initState();
    pagecontrol.addListener(() {
      setState(() {
        currpagevalue = pagecontrol.page!;
        print(currpagevalue.toString());
      });
    });
  }

  @override
  void dispose() {
    pagecontrol.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('size of this page is ' +
        MediaQuery.of(context).size.height.toString());
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: Dimensions.outercontainer,
          // color: MyColor.themecolor,
          margin: EdgeInsets.only(top: 20.0),
          child: PageView.builder(
              controller: pagecontrol,
              itemCount: 9,
              itemBuilder: (context, index) {
                return _pages(index);
              }),
        ),
        SizedBox(
          height: 5.0,
        ),
        DotsIndicator(
          dotsCount: 9,
          position: currpagevalue.toInt(),
          decorator: DotsDecorator(
            size: Size(10.0, 10.0),
            activeSize: Size(20.0, 20.0),
            shape: BeveledRectangleBorder(),
            activeColor: MyColor.themecolor,
            color: MyColor.defaultcolor,
          ),
          onTap: (position) => setState(() {}),
        ),
      ],
    );
  }

  Widget _pages(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == currpagevalue.floor()) {
      var currscale = 1 - (currpagevalue - index) * (1 - scalefactor);
      var currtrans = _height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else if (index == currpagevalue.floor() + 1) {
      var currscale =
          scalefactor + (currpagevalue - index + 1) * (1 - scalefactor);
      var currtrans = _height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else if (index == currpagevalue.floor() - 1) {
      var currscale = 1 - (currpagevalue - index) * (1 - scalefactor);
      var currtrans = _height * (1 - currscale) / 2;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else {
      var currscale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currscale, 1)
        ..setTranslationRaw(0, _height * (1 - currscale) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(children: [
        Container(
          width: double.infinity,
          height: _height,
          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius10),
            color: MyColor.themecolor,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image/image${index}.jpg')),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: Dimensions.outersmallcontainer,
            width: Dimensions.screenwidth,
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius10),
              color: MyColor.lightcolor,
              boxShadow: [
                BoxShadow(
                  color: MyColor.themecolor,
                  offset: Offset(5, 5),
                  blurRadius: 5.0,
                  blurStyle: BlurStyle.outer,
                )
              ],
            ),
            child: Column(
              children: [
                Primarytext(text: 'Veg Burger'),
                SizedBox(height: 10.0),
                Wrap(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: MyColor.themecolor,
                                      size: 8,
                                    ))),
                        SizedBox(
                          width: 10,
                        ),
                        Primarytext(
                          text: '4.5',
                          size: 8.0,
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Primarytext(
                          text: '1287',
                          size: 8.0,
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Primarytext(
                          text: 'Comments',
                          size: 8.0,
                        ),
                      ]),
                ]),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Wrap(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text_icon(
                          icon: Icons.circle_sharp,
                          text: 'Normal',
                          iconsize: Dimensions.iconssize,
                          iconcolor: MyColor.sharp_icon),
                      Text_icon(
                          icon: Icons.location_pin,
                          text: '27km',
                          iconsize: Dimensions.iconssize,
                          iconcolor: MyColor.themecolor),
                      Text_icon(
                          icon: Icons.lock_clock,
                          text: '32min',
                          iconsize: Dimensions.iconssize,
                          iconcolor: MyColor.clockcolor)
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
