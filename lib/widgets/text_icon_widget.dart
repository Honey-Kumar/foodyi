import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodyi/utils/dimensions.dart';
import 'package:foodyi/widgets/textwidget.dart';

class Text_icon extends StatelessWidget {
  Text_icon(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconcolor,
      required this.iconsize });
  final IconData icon;
  final String text;
  final Color iconcolor;
 double iconsize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
          size: Dimensions.iconssize,
        ),
        SizedBox(
          width: 6,
        ),
        Primarytext(
          text: text,
          size: 10.0,
        ),
      ],
    );
  }
}
