import 'world.dart';
import 'block_factory.dart';

void main() {
  final world = World();

  for (var i = 0; i < 10; i++) {
    world.addBlock(i, 0, 0, 'Grass');
  }
  for (var i = 0; i < 10; i++) {
   world.addBlock(i, 0, 0, 'Stone');
  }
  for (var i = 0; i < 10; i++) {
    world.addBlock(i, 0, 0, 'Dirt');
  }

  for (var i = 0; i < 10; i++) {
    world.addBlock(i, 0, 0, 'ddd');
  }
  world.render();

  final b = world.blocks;
  print(b[0].type == b[1].type);
  print(b[0].type == b[3].type);
  print(b[0].type == b[2].type);

  print('Блоков: ${b.length}, уникальных BlockType: ${BlockFactory.count}');
}