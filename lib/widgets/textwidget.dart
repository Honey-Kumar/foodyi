import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodyi/utils/color.dart';
import 'package:foodyi/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class Primarytext extends StatelessWidget {
  Primarytext({
    required this.text,
    this.size = 0.0,
    this.colortext = Colors.black,
    this.textoverflowprop = TextOverflow.ellipsis,
    this.weight = FontWeight.normal,
  });
  final String text;
  double size;
  Color colortext;
  TextOverflow textoverflowprop;
  FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: GoogleFonts.roboto().toString(),
        color: colortext,
        fontSize: size == 0.0 ? Dimensions.font20 : size,
      ),
    );
  }
}
