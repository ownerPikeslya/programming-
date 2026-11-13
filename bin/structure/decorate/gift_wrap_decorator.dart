import 'order_decorator.dart';
// import 'basic_order.dart';

class GiftWrapDecorator extends OrderDecorator{
  GiftWrapDecorator(super.order);

  @override
  String getDescription() => order.getDescription() + ' + gift box';

  @override
  int getPrice() => order.getPrice() + 2000;
}