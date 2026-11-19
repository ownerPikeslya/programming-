class User {
  static final User _instance = User._();
  User._();
  factory User() {
    return _instance;
  }

  String name = 'Гость';
  bool isLoggedIn = false;

  void login(String newName) {
    name = newName;
    isLoggedIn = true;
  }

  void logout(){
    name = 'Гость';
    isLoggedIn = false;
  }

  void showInfo(){
    print('Имя: $name, Вошел: $isLoggedIn');
  }
}

void main(){
  final u1 = User();
  final u2 = User();
  u1.login('Mirodil');
  u2.showInfo();        // name: Mirodil, isLoggedIn: true

  u2.logout();
  u1.showInfo();        // name: Гость, isLoggedIn: false

  print(u1 == u2);      // true
}
