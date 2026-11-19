import 'block.dart';
import 'block_factory.dart';

class World {
  final List<Block> blocks = [];

  void addBlock(int x, int y, int z, String name) {
    final (texture, color) = switch (name) {
      'Grass' => ('grass texture', 'green'),
      'Stone' => ('stone texture', 'gray'),
      'Dirt'  => ('dirt texture', 'brown'),
      'Water' => ('water texture', 'blue'),
      _       => ('unknown texture', 'black'),
    };

    final type = BlockFactory.getBlockType(name, texture, color);
    blocks.add(Block(x, y, z, type));
  }

  void render() {
    for (final block in blocks) {
      block.show();
    }
  }
}