import 'block_type.dart';

class BlockFactory {
  static final Map<String, BlockType> _types = {};

  static BlockType getBlockType(String name, String texture, String color){
    final key = '$name $texture $color';
    if(!_types.containsKey(key)){
      _types[key] = BlockType(name, texture, color);
    }
    return _types[key]!;
  }
  static int get count => _types.length;

}