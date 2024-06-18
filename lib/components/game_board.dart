import 'package:flutter/material.dart';
import 'package:war/components/playing_card.dart';
import 'package:war/models/card_model.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    var card = CardModel(
        image: 'https://deckofcardsapi.com/static/img/6H.png',
        suit: Suit.Hearts,
        value: '6');

    return Center(child: PlayingCard(visible: true, card: card));
  }
}
