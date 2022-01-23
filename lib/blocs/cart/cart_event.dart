part of 'cart_bloc.dart';


abstract class CartEvent {
  const CartEvent();
}

class CartProductAdd extends CartEvent{
  final Product product;
  const CartProductAdd(this.product);
}

class CartProductRemove extends CartEvent{
  final Product product;
  const CartProductRemove(this.product);
}
