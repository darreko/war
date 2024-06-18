import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:war/components/game_board.dart';
import 'package:war/models/player_model.dart';
import 'package:war/providers/game_provider.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late final GameProvider _gameProvider;

  @override
  void initState() {
    _gameProvider = Provider.of<GameProvider>(context, listen: false);
    super.initState();
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
        actions: [
          TextButton(
              onPressed: () async {
                final players = [
                  PlayerModel(name: 'Darrek', isHuman: true),
                  PlayerModel(name: 'Bot', isHuman: false),
                ];
                await _gameProvider.newGame(players);
              },
              child: const Text("New Game"))
        ],
      ),
      body: const GameBoard(),
    );
  }
}
