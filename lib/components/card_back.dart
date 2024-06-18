import 'package:flutter/material.dart';
import 'package:war/constants.dart';

class CardBack extends StatelessWidget {
  final double size;
  final Widget? child;

  const CardBack({super.key, this.size = 1, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: CARD_WIDTH * size,
        height: CARD_HEIGHT * size,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(4),
        ),
        child: child ?? Container());
    // CachedNetworkImage(
    //     imageUrl: 'https://deckofcardsapi.com/static/img/back.png',
    //     width: CARD_WIDTH * size,
    //     height: CARD_WIDTH * size));
  }
}
