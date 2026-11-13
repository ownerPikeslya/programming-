import 'order.dart';

abstract class OrderDecorator implements Order{
  final Order order;
  OrderDecorator(this.order);
}