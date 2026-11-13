import 'order.dart';
import 'basic_order.dart';
import 'gift_wrap_decorator.dart';
import 'express_delivery_decorator.dart';
// import


void main(){
  Order order = BasicOrder();
  print('${order.getDescription()} = ${order.getPrice()}');

  order = GiftWrapDecorator(order);
  print('${order.getDescription()} = ${order.getPrice()}');

  order = ExpressDeliveryDecorator(order);
  print('${order.getDescription()} = ${order.getPrice()}');

}