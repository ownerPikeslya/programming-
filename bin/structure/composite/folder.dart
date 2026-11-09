import 'file_system.dart';

class Folder implements FileSystem{
  String name;
  Folder(this.name);

  List<FileSystem> files = [];

  void add(FileSystem file) => files.add(file);
  void remove(FileSystem file) => files.remove(file);

  @override
  void show() {
    print("<------------------------------------->");
    print(name);

    for (final item in files) {
      item.show();
    }
  }
}
