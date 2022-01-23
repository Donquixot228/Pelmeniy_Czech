part of 'cart_bloc.dart';

enum CartStatus { empty, full }

class CartState {
  final Cart cart;
  final CartStatus status;

  CartState({
    this.cart = const Cart(),
    this.status = CartStatus.empty,
  });

  CartState copyWith({CartStatus? status}) {
    return CartState(
      status: status ?? this.status,
    );
  }
}
