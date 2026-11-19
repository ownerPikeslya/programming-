import 'block_type.dart';

class Block {
  final int x;
  final int y;
  final int z;
  final BlockType type;

  Block(this.x, this.y, this.z, this.type);
  void show() => print('block ($x $y $z) ${type.name} ${type.texture} ${type.color}');
}