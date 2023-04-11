import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final String currency;
  final double price;
  final Color color;
  final Color freeColor;

  const PriceText({Key? key, 
    this.price = 0.0,
    this.currency = '￥',
    this.color = Colors.green,
    this.freeColor = const Color(0xfff96b4b),
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = <Widget>[];
    if (price > 0.00) {
      list.add(Text(currency, style: TextStyle(color: color)));
      list.add(Text(
        price.toStringAsFixed(2),
        style: TextStyle(color: color),
      ));
    } else {
      list.add(Text(
        'Free',
        style: TextStyle(
            color: freeColor,
            fontFamily: 'SF-UI-Text',
            fontWeight: FontWeight.w600,
            fontSize: 14.0),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: list,
    );
  }
}
