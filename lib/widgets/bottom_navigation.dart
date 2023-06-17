import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodyi/utils/color.dart';
import 'package:foodyi/utils/dimensions.dart';
import 'package:foodyi/widgets/textwidget.dart';

class Bottom_navigation extends StatefulWidget {
  Bottom_navigation({
    required this.price,
  });
  double price;

  @override
  State<Bottom_navigation> createState() => _Bottom_navigationState();
}

class _Bottom_navigationState extends State<Bottom_navigation> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Dimensions.height120 - 30.0,
      padding: EdgeInsets.all(Dimensions.radius10 * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2)),
        color: MyColor.themecolor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: MyColor.lightcolor,
              border: Border.all(color: MyColor.lightcolor),
              borderRadius: BorderRadius.circular(Dimensions.radius10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      if (num > 0) {
                        num--;
                      } else {
                        num = 0;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.remove)),
                Text('${num}'),
                IconButton(
                    padding: EdgeInsets.all(2.0),
                    onPressed: () {
                      setState(() {
                        num++;
                      });
                    },
                    icon: Icon(Icons.add)),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(Dimensions.radius10),
              child: Primarytext(text: '\$${widget.price} | Add to Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
