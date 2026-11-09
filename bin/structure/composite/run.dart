import 'folder.dart';
import 'file.dart';

void main(){
  final Folder computer = Folder('Computer');

  final Folder documents = Folder('Documents');
  // print(documents.name);
  final documents1 = File('resume.pdf');
  final documents2 = File('homework.docx');
  documents.add(documents1);
  documents.add(documents2);


  final Folder photos = Folder('Photos');
  // print(photos.name);
  final photo1 = File('photo1.jpg');
  final photo2 = File('photo2.jpg');
  photos.add(photo1);
  photos.add(photo2);
  // photos.remove(photo1);


  computer.add(documents);
  computer.add(photos);
  computer.add(File("music.mp3"));

  computer.show();
}
