import 'package:flutter/material.dart';
import 'package:war/models/card_model.dart';
import 'package:war/models/deck_model.dart';
import 'package:war/models/player_model.dart';
import 'package:war/models/turn_model.dart';
import 'package:war/services/deck_service.dart';

class GameProvider with ChangeNotifier {
  GameProvider() {
    _service = DeckService();
  }

  late DeckService _service;

  late Turn _turn;
  Turn get turn => _turn;

  DeckModel? _currentDeck;
  DeckModel? get currentDeck => _currentDeck;

  List<PlayerModel> _players = [];
  List<PlayerModel> get players => _players;

  List<CardModel> _discards = [];
  List<CardModel> get discards => _discards;
  CardModel? get discardTop => _discards.isEmpty ? null : _discards.last;

  Map<String, dynamic> gameState = {};

  Future<void> newGame(List<PlayerModel> players) async {
    final deck = await _service.newDeck();
    _currentDeck = deck;
    _players = players;
    _discards = [];
    _turn = Turn(players: players, currentPlayer: players.first);
    setupBoard();
    notifyListeners();
  }

  Future<void> setupBoard() async {}

  Future<void> drawCards(PlayerModel player, {int count = 1}) async {
    if (currentDeck == null) return;

    final draw = await _service.drawCards(_currentDeck!, count: count);

    _turn.drawCount += count;
    _currentDeck!.remaining = draw.remaining;

    notifyListeners();
  }
}
