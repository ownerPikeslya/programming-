import 'file_system.dart';

class File implements FileSystem{
  String name;
  File(this.name);

  @override
  void show() => print(name);
  
}