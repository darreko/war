import 'package:war/models/card_model.dart';

class PlayerModel {
  final String name;
  final bool isHuman;
  final List<CardModel> cards;

  PlayerModel({
    required this.name,
    this.isHuman = false,
    this.cards = const [],
  });
}
