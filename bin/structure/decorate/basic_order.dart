import 'order.dart';

class BasicOrder implements Order{

  @override
  String getDescription() => 'BasicOrder';

  @override
  int getPrice() => 1000;
}