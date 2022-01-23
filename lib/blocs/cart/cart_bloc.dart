import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pelmeniy_czech/models/cart_model.dart';
import 'package:pelmeniy_czech/models/models.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState()) {
    on<CartProductAdd>((event, emit) {
      state.cart.products.add(event.product);
      if(state.cart.products.isNotEmpty){
        state.copyWith(status: CartStatus.full);
      }
    });
    on<CartProductRemove>((event,emit){
      state.cart.products.remove(event.product);
      if(state.cart.products.isEmpty){
        state.copyWith(status: CartStatus.empty);
      }
    });
  }
}
