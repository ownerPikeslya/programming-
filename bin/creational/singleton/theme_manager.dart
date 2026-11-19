class ThemeManager {
  static final ThemeManager _instance = ThemeManager._();
  ThemeManager._();
  factory ThemeManager() {
    return _instance;
  }

  String _theme = 'light';
  int _count = 0;

  String get theme => _theme;
  int get count => _count;

  void toggle() {
    _theme = _theme == 'light' ? 'dark' : 'light';
    _count++;
  }

  void setTheme(String newTheme) {
    if (newTheme == 'light' || newTheme == 'dark') {
      _theme = newTheme;
      _count++;
    } else {
      print('Ошибка: неизвестная тема');
    }
  }



}

void main(){
  final t1 = ThemeManager();
  final t2 = ThemeManager();

  print(t1._theme);
  t1.toggle();
  print(t2._theme);
  t2.setTheme('blue');
  t2.setTheme('light');
  print(t1._theme);

  ThemeManager().toggle();
  print(t1.count);

  print(t1 == t2);
}