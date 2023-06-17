import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodyi/utils/color.dart';
import 'package:foodyi/utils/dimensions.dart';

class Icons_widget extends StatelessWidget {
  Icons_widget({
    required this.icon,
    this.backgroundcolor = const Color(0xFFfcf4e4),
    this.iconcolor = const Color(0xFF756d54),
    this.size = 40.0,
  });
  final IconData icon;
  final Color backgroundcolor;
  final Color iconcolor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundcolor,
      ),
      child: Center(
        child: Icon(
          icon,
          color: iconcolor,
          size: Dimensions.iconsize16,
        ),
      ),
    );
  }
}
