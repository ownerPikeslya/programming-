class BlockType {
  final String name;
  final String texture;
  final String color;

  BlockType(this.name, this.texture, this.color);

  void show() => print('$name $texture $color');
}
