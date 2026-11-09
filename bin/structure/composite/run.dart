import 'folder.dart';
import 'file.dart';

void main(){
  final Folder computer = Folder('Computer');

  final Folder documents = Folder('Documents');

  // print(documents.name);
  final folder1 = Folder('resume.pdf');
  final folder2 = Folder('homework.docx');
  documents.add(folder1);
  documents.add(folder2);

  documents.show();


  final Folder photos = Folder('Photos');
  // print(photos.name);
  final photo1 = File('photo1.jpg');
  final photo2 = File('photo2.jpg');
  photos.add(photo1);
  photos.add(photo2);
  photos.show();

  photos.remove(photo1);
  photos.show();



}
