import 'package:flutter/material.dart';
import 'package:food_app/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size == 0 ? Dimensions.font20 : size,
      ),
    );
  }
}
