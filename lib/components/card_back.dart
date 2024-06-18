import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:war/constants.dart';

class CardBack extends StatelessWidget {
  final double size;

  const CardBack({super.key, this.size = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: CARD_WIDTH * size,
        height: CARD_HEIGHT * size,
        // color: Colors.blue,
        child: CachedNetworkImage(
            imageUrl: 'https://deckofcardsapi.com/static/img/back.png',
            width: CARD_WIDTH * size,
            height: CARD_WIDTH * size));
  }
}
