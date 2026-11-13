import 'order_decorator.dart';

class ExpressDeliveryDecorator extends OrderDecorator{
  ExpressDeliveryDecorator(super.order);

  @override
  String getDescription() => order.getDescription() + ' + by car';
  @override
  int getPrice() => order.getPrice() + 4000;

}