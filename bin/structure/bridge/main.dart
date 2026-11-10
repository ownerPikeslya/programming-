import 'game.dart';
import 'cpp_developer.dart';
import 'java_developer.dart';


void main(){
 final footballgame1 = FootballGame(CppDeveloper()).play();
 final footballgame2 = FootballGame(JavaDeveloper()).play();

 final racinggame1 = RacingGame(CppDeveloper()).play();
 final racinggame2 = RacingGame(JavaDeveloper()).play();

  print(footballgame1);
  print(footballgame2);
  print(racinggame1);
  print(racinggame2);
}
