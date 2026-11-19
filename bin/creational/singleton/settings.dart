class Settings {
  static final Settings _instance = Settings._();
  Settings._();
  factory Settings() {
    return _instance;
  }

  String theme = 'light';
  String language = 'ru';

  void printSettings(){
    print('theme: $theme, language: $language');
  }
}

void main(){
  final s1 = Settings();
  final s2 = Settings();
  s1.theme = 'dark';
  // s1.language = 'en';
  s1.printSettings();
  // s2.printSettings();

  print(s1.theme);
  print(s2.language);
  print(s1 == s2);
  print(identical(s1, s2));
}