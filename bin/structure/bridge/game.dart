import 'developer.dart';


abstract class Game{
  final Developer developer;
  Game(this.developer);

  String play();
}

class FootballGame extends Game{
  FootballGame(super.developer);

  @override
  String play() => ('Football game developer ${developer.writeCode()}');
}

class RacingGame extends Game{
  RacingGame(super.developer);

  @override
  String play() => ('Racing game developer ${developer.writeCode()}');
}