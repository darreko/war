// import 'package:war/card.dart';

// class Deck{
//   static List<Card> generate() {
//     List<Card> deck = [];
//     var suits = {const Suit('spade'), const Suit('club'), const Suit('heart'), const Suit('diamond')};

//     for (var suit in suits) {
//       for (int rank = 2; rank <= 10; rank++) {
//         deck.add(Card(rank.toString(), rank, suit));
//       }
//       deck.add(Card('J', 11, suit));
//       deck.add(Card('Q', 12, suit));
//       deck.add(Card('K', 13, suit));
//       deck.add(Card('A', 14, suit));
//     }

//     return deck;
//   }
//  }