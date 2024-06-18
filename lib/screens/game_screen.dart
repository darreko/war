import 'package:flutter/material.dart';
import 'package:war/components/game_board.dart';
import 'package:war/services/deck_service.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  void initState() {
    super.initState();
    tempFunc();
  }

  void tempFunc() async {
    final service = DeckService();
    final deck = await service.newDeck();
    print(deck.remaining);
    print('--------');
    final draw = await service.drawCards(deck, count: 7);
    print(draw.cards.length);
    print('======');
    print(draw.remaining);
  }

  @override
  Widget build(BuildContext context) {
    // var deck = Deck.generate();

    // deck.shuffle();

    // deck.forEach((card) {
    //   print('${card.title} of ${card.suit.name}s');
    // });

    return Scaffold(
      appBar: AppBar(
        title: const Text("War"),
        actions: [TextButton(onPressed: () {}, child: const Text("New Game"))],
      ),
      body: GameBoard(),
    );
  }
}
