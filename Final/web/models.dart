library game_store.models;

import 'package:polymer/polymer.dart';

class Game extends Object with Observable {
  @observable String name;
  @observable String genre;
  @observable String description;
  @observable String image;
  @observable int note;
  
  bool contains(String search) {
    var pattern = new RegExp(search, caseSensitive: false);
    return name.contains(pattern) || genre.contains(pattern) || description.contains(pattern);
  }
  String toString() => "Game{name: $name}";
}

final List<Game> games = [
  new Game()..name = "Darts"..genre = "Pub game"..description = 'Darts is ...'..image = "darts.jpg"..note = 5,                    
  new Game()..name = "Chess"..genre = "Board game"..description = 'Chess is ...'..image = "chess.jpg"..note = 4,                    
  new Game()..name = "Dices"..genre = "Random game"..description = 'Dice are ...'..image = "dice.jpg"..note = 3,                    
  new Game()..name = "Go"..genre = "Board game"..description = 'Go is ...'..image = "go.jpg"..note = 2,
  new Game()..name = "Poker"..genre = "Card game"..description = 'Poker is ..'..image="poker.jpg"..note = 4,
  new Game()..name = "Pool"..genre = "Pub game"..description = 'Pool is ..'..image="pool.jpg"..note = 3,
  new Game()..name = "Bingo"..genre = "Boring game"..description = 'Bingo is ..'..image="bingo.jpg"..note = 1
];