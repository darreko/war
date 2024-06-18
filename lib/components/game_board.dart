import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:war/components/deck_pile.dart';
import 'package:war/models/player_model.dart';
import 'package:war/providers/game_provider.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameProvider>(builder: (context, model, child) {
      return model.currentDeck != null
          ? Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onTap: () async {
                        await model.drawCards(model.players.first);
                      },
                      child: DeckPile(remaining: model.currentDeck!.remaining)),
                )
              ],
            )
          : TextButton(
              child: const Text('New Game?'),
              onPressed: () {
                final players = [
                  PlayerModel(name: 'Darrek', isHuman: true),
                  PlayerModel(name: 'Bot', isHuman: false),
                ];
                model.newGame(players);
              });
    });

    // var card = CardModel(
    //     image: 'https://deckofcardsapi.com/static/img/6H.png',
    //     suit: Suit.Hearts,
    //     value: '6');

    // return Center(child: PlayingCard(visible: true, card: card));
  }
}
