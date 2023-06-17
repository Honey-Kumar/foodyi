import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodyi/utils/dimensions.dart';
import 'package:foodyi/widgets/textwidget.dart';

class Expandable_widget extends StatefulWidget {
  Expandable_widget({required this.text});
  final String text;

  @override
  State<Expandable_widget> createState() => _Expandable_widgetState();
}

class _Expandable_widgetState extends State<Expandable_widget> {
  bool hidden = true;
  late String firsttext;
  late String lefttext;
  double avgheight = Dimensions.height120 - 30;
  IconData pressicon = Icons.arrow_circle_down;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > avgheight) {
      firsttext = widget.text.substring(0, avgheight.toInt());
      lefttext =
          widget.text.substring(avgheight.toInt() + 1, widget.text.length);
    } else {
      firsttext = widget.text;
      lefttext = ' ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: avgheight,
          child: lefttext == ' '
              ? Primarytext(text: firsttext)
              : Column(
                  children: [
                    Primarytext(
                        text: hidden == true
                            ? (firsttext + '.....')
                            : (firsttext + ' ' + lefttext)),
                    TextButton(
                        onPressed: () {
                          if (hidden == true) {
                            pressicon = Icons.arrow_upward;
                            avgheight = double.maxFinite;
                            hidden = false;
                          } else {
                            pressicon = Icons.arrow_circle_down;
                            avgheight = Dimensions.height120 - 30;
                            hidden = true;
                          }
                          setState(() {});
                        },
                        child: Row(
                          children: [
                            Primarytext(text: 'Show more'),
                            SizedBox(
                              height: Dimensions.radius10 / 2,
                            ),
                            Icon(pressicon),
                          ],
                        )),
                  ],
                )),
    );
  }
}
